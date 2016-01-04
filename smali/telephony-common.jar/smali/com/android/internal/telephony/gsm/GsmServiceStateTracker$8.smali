.class Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;
.super Ljava/lang/Object;
.source "GsmServiceStateTracker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;)V
    .locals 0

    .prologue
    .line 4820
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 4822
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 4823
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const-string v1, "sendMessage(EVENT_LU_REJECT_CAUSE)"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 4824
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker$8;->this$0:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 4825
    return-void
.end method
