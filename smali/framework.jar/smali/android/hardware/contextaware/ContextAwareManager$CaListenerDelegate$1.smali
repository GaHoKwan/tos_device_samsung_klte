.class Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate$1;
.super Landroid/os/Handler;
.source "ContextAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;-><init>(Landroid/hardware/contextaware/ContextAwareManager;Landroid/hardware/contextaware/manager/ContextAwareListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

.field final synthetic val$this$0:Landroid/hardware/contextaware/ContextAwareManager;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;Landroid/os/Looper;Landroid/hardware/contextaware/ContextAwareManager;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 953
    iput-object p1, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate$1;->this$1:Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    iput-object p3, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate$1;->val$this$0:Landroid/hardware/contextaware/ContextAwareManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 957
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate$1;->this$1:Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    # getter for: Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;
    invoke-static {v2}, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->access$100(Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;)Landroid/hardware/contextaware/manager/ContextAwareListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 958
    iget v1, p1, Landroid/os/Message;->what:I

    .line 959
    .local v1, "type":I
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 960
    .local v0, "context":Landroid/os/Bundle;
    iget-object v2, p0, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate$1;->this$1:Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;

    # getter for: Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->mListener:Landroid/hardware/contextaware/manager/ContextAwareListener;
    invoke-static {v2}, Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;->access$100(Landroid/hardware/contextaware/ContextAwareManager$CaListenerDelegate;)Landroid/hardware/contextaware/manager/ContextAwareListener;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Landroid/hardware/contextaware/manager/ContextAwareListener;->onContextChanged(ILandroid/os/Bundle;)V

    .line 962
    .end local v0    # "context":Landroid/os/Bundle;
    .end local v1    # "type":I
    :cond_0
    return-void
.end method
