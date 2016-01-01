.class Lcom/android/internal/telephony/ServiceStateTracker$USBStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "USBStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ServiceStateTracker;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;)V
    .locals 0

    .prologue
    .line 1754
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker$USBStateReceiver;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/ServiceStateTracker;
    .param p2, "x1"    # Lcom/android/internal/telephony/ServiceStateTracker$1;

    .prologue
    .line 1754
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker$USBStateReceiver;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 1756
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1758
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1759
    const-string v2, "configured"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1761
    .local v1, "isUSBConnected":Z
    if-eqz v1, :cond_0

    .line 1762
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$USBStateReceiver;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    const-string v3, "RSSI check is needed"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1763
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker$USBStateReceiver;->this$0:Lcom/android/internal/telephony/ServiceStateTracker;

    # setter for: Lcom/android/internal/telephony/ServiceStateTracker;->mIsUSBChecked:Z
    invoke-static {v2, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->access$202(Lcom/android/internal/telephony/ServiceStateTracker;Z)Z

    .line 1766
    .end local v1    # "isUSBConnected":Z
    :cond_0
    return-void
.end method
