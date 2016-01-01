.class Lcom/movial/ipphone/IPConnection$MyHandler;
.super Landroid/os/Handler;
.source "IPConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPConnection;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPConnection;Landroid/os/Looper;)V
    .locals 0
    .param p2, "l"    # Landroid/os/Looper;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/movial/ipphone/IPConnection$MyHandler;->this$0:Lcom/movial/ipphone/IPConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 139
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 149
    :goto_0
    return-void

    .line 143
    :pswitch_0
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection$MyHandler;->this$0:Lcom/movial/ipphone/IPConnection;

    # invokes: Lcom/movial/ipphone/IPConnection;->processNextPostDialChar()V
    invoke-static {v0}, Lcom/movial/ipphone/IPConnection;->access$000(Lcom/movial/ipphone/IPConnection;)V

    goto :goto_0

    .line 146
    :pswitch_1
    iget-object v0, p0, Lcom/movial/ipphone/IPConnection$MyHandler;->this$0:Lcom/movial/ipphone/IPConnection;

    # invokes: Lcom/movial/ipphone/IPConnection;->releaseWakeLock()V
    invoke-static {v0}, Lcom/movial/ipphone/IPConnection;->access$100(Lcom/movial/ipphone/IPConnection;)V

    goto :goto_0

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
