.class Lcom/movial/ipphone/IPCallTracker$1;
.super Landroid/os/Handler;
.source "IPCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPCallTracker;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPCallTracker;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 124
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 147
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    # invokes: Lcom/movial/ipphone/IPCallTracker;->updateConnection(Landroid/os/Message;)V
    invoke-static {v0, p1}, Lcom/movial/ipphone/IPCallTracker;->access$400(Lcom/movial/ipphone/IPCallTracker;Landroid/os/Message;)V

    .line 150
    :goto_0
    return-void

    .line 126
    :pswitch_0
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    const-string v1, "EVENT_REMOVE_CONNECTION"

    invoke-virtual {v0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget v1, v1, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    # invokes: Lcom/movial/ipphone/IPCallTracker;->removeConnection(ILcom/android/internal/telephony/Connection$DisconnectCause;)Z
    invoke-static {v0, v1, v2}, Lcom/movial/ipphone/IPCallTracker;->access$000(Lcom/movial/ipphone/IPCallTracker;ILcom/android/internal/telephony/Connection$DisconnectCause;)Z

    .line 128
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    const/4 v1, -0x1

    iput v1, v0, Lcom/movial/ipphone/IPCallTracker;->pendingMOIndex:I

    .line 129
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    # invokes: Lcom/movial/ipphone/IPCallTracker;->updatePhoneState()V
    invoke-static {v0}, Lcom/movial/ipphone/IPCallTracker;->access$100(Lcom/movial/ipphone/IPCallTracker;)V

    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 133
    :pswitch_1
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    const-string v1, "EVENT_KEEP_RINGING"

    invoke-virtual {v0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->notifyIncomingRing()V

    .line 135
    const/16 v0, 0x2a

    iget-object v1, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    # getter for: Lcom/movial/ipphone/IPCallTracker;->DELAYED_KEEP_RINGING:I
    invoke-static {v1}, Lcom/movial/ipphone/IPCallTracker;->access$200(Lcom/movial/ipphone/IPCallTracker;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 138
    :pswitch_2
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    const-string v1, "EVENT_CONFERENCE_FINISHED"

    invoke-virtual {v0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/movial/ipphone/IPCallTracker;->pendingConf:Z

    .line 140
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    iget-object v0, v0, Lcom/movial/ipphone/IPCallTracker;->phone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->notifyPreciseCallStateChanged()V

    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    const-string v1, "EVENT_CLEAR_CONNECTIONS"

    invoke-virtual {v0, v1}, Lcom/movial/ipphone/IPCallTracker;->log(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/movial/ipphone/IPCallTracker$1;->this$0:Lcom/movial/ipphone/IPCallTracker;

    # invokes: Lcom/movial/ipphone/IPCallTracker;->clearConnections()V
    invoke-static {v0}, Lcom/movial/ipphone/IPCallTracker;->access$300(Lcom/movial/ipphone/IPCallTracker;)V

    goto :goto_0

    .line 124
    nop

    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
