.class Lcom/android/internal/telephony/InboundSmsHandler$1;
.super Landroid/os/Handler;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/InboundSmsHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/InboundSmsHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    .prologue
    .line 2410
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2414
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2426
    :goto_0
    return-void

    .line 2416
    :pswitch_0
    const-string v2, "InboundSmsHandler"

    const-string v3, "EVENT_REASSEMBLE_TIMEOUT is called"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2417
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 2418
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SmsMessage;

    .line 2419
    .local v1, "sms":Landroid/telephony/SmsMessage;
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler$1;->this$0:Lcom/android/internal/telephony/InboundSmsHandler;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleReassembleTimeout(Landroid/telephony/SmsMessage;)V

    goto :goto_0

    .line 2422
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "sms":Landroid/telephony/SmsMessage;
    :pswitch_1
    const-string v2, "InboundSmsHandler"

    const-string v3, "EVENT_STOP_REASSEMBLE is called"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    const/16 v2, 0x17

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler$1;->removeMessages(ILjava/lang/Object;)V

    goto :goto_0

    .line 2414
    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
