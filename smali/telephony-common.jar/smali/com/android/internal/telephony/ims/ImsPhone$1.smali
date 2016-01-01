.class Lcom/android/internal/telephony/ims/ImsPhone$1;
.super Landroid/content/BroadcastReceiver;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/ims/ImsPhone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/ims/ImsPhone;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/ims/ImsPhone;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsPhone$1;->this$0:Lcom/android/internal/telephony/ims/ImsPhone;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const-string v2, "state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 190
    .local v1, "mAirplaneMode":Z
    const-string v2, "IMSPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AirplaneMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone$1;->this$0:Lcom/android/internal/telephony/ims/ImsPhone;

    # getter for: Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:I
    invoke-static {v2}, Lcom/android/internal/telephony/ims/ImsPhone;->access$000(Lcom/android/internal/telephony/ims/ImsPhone;)I

    move-result v2

    if-nez v2, :cond_0

    .line 192
    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone$1;->this$0:Lcom/android/internal/telephony/ims/ImsPhone;

    # getter for: Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;
    invoke-static {v2}, Lcom/android/internal/telephony/ims/ImsPhone;->access$100(Lcom/android/internal/telephony/ims/ImsPhone;)Landroid/telephony/ServiceState;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 195
    .end local v1    # "mAirplaneMode":Z
    :cond_0
    return-void
.end method
