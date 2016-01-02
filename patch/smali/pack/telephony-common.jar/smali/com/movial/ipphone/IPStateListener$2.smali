.class Lcom/movial/ipphone/IPStateListener$2;
.super Landroid/os/Handler;
.source "IPStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPStateListener;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPStateListener;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/movial/ipphone/IPStateListener$2;->this$0:Lcom/movial/ipphone/IPStateListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x1

    .line 67
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 75
    :goto_0
    return-void

    .line 69
    :pswitch_0
    iget-object v1, p0, Lcom/movial/ipphone/IPStateListener$2;->this$0:Lcom/movial/ipphone/IPStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v0, v2}, Lcom/movial/ipphone/IPStateListener;->onRegisteredStateChanged(ZI)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 72
    :pswitch_1
    iget-object v1, p0, Lcom/movial/ipphone/IPStateListener$2;->this$0:Lcom/movial/ipphone/IPStateListener;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/movial/ipphone/IPStateListener;->onWifiCallStateChanged(ILjava/lang/String;)V

    goto :goto_0

    .line 67
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
