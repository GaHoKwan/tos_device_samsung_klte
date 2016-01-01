.class Lcom/movial/ipphone/IPStateListener$1;
.super Lcom/movial/ipphone/IIPStateListener$Stub;
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
    .line 54
    iput-object p1, p0, Lcom/movial/ipphone/IPStateListener$1;->this$0:Lcom/movial/ipphone/IPStateListener;

    invoke-direct {p0}, Lcom/movial/ipphone/IIPStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegisteredStateChanged(ZI)V
    .locals 4
    .param p1, "status"    # Z
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 56
    iget-object v0, p0, Lcom/movial/ipphone/IPStateListener$1;->this$0:Lcom/movial/ipphone/IPStateListener;

    # getter for: Lcom/movial/ipphone/IPStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/movial/ipphone/IPStateListener;->access$000(Lcom/movial/ipphone/IPStateListener;)Landroid/os/Handler;

    move-result-object v2

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const/4 v3, 0x0

    invoke-static {v2, v1, v0, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 57
    return-void

    .line 56
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWifiCallStateChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "status"    # Ljava/lang/String;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/movial/ipphone/IPStateListener$1;->this$0:Lcom/movial/ipphone/IPStateListener;

    # getter for: Lcom/movial/ipphone/IPStateListener;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/movial/ipphone/IPStateListener;->access$000(Lcom/movial/ipphone/IPStateListener;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 61
    return-void
.end method
