.class Lcom/movial/ipphone/IPPhoneProxy$4;
.super Ljava/lang/Object;
.source "IPPhoneProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/movial/ipphone/IPPhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/movial/ipphone/IPPhoneProxy;


# direct methods
.method constructor <init>(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy$4;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x1

    .line 561
    const-string v1, "IPPhoneProxy"

    const-string v2, "IPPolicy ServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy$4;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-static {p2}, Lcom/movial/ipphone/IIPRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/movial/ipphone/IIPRegistry;

    move-result-object v2

    # setter for: Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;
    invoke-static {v1, v2}, Lcom/movial/ipphone/IPPhoneProxy;->access$1002(Lcom/movial/ipphone/IPPhoneProxy;Lcom/movial/ipphone/IIPRegistry;)Lcom/movial/ipphone/IIPRegistry;

    .line 563
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy$4;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v1}, Lcom/movial/ipphone/IPPhoneProxy;->access$1100(Lcom/movial/ipphone/IPPhoneProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 565
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy$4;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;
    invoke-static {v1}, Lcom/movial/ipphone/IPPhoneProxy;->access$1200(Lcom/movial/ipphone/IPPhoneProxy;)Ljava/util/concurrent/CyclicBarrier;

    move-result-object v1

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :goto_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy$4;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;
    invoke-static {v1}, Lcom/movial/ipphone/IPPhoneProxy;->access$300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhone;->bindService()V

    .line 575
    :try_start_1
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy$4;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;
    invoke-static {v1}, Lcom/movial/ipphone/IPPhoneProxy;->access$1000(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IIPRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy$4;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;
    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->access$1300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPStateListener;

    move-result-object v2

    iget-object v2, v2, Lcom/movial/ipphone/IPStateListener;->listener:Lcom/movial/ipphone/IIPStateListener;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/movial/ipphone/IIPRegistry;->listen(Lcom/movial/ipphone/IIPStateListener;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 579
    :goto_1
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPPhoneProxy"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 576
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 577
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v1, "IPPhoneProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register to LISTEN_EVENT_REG_STATUS FAILED. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 581
    const-string v1, "IPPhoneProxy"

    const-string v2, "IPPolicy ServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy$4;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;
    invoke-static {v1}, Lcom/movial/ipphone/IPPhoneProxy;->access$1000(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IIPRegistry;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy$4;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # getter for: Lcom/movial/ipphone/IPPhoneProxy;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;
    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->access$1300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPStateListener;

    move-result-object v2

    iget-object v2, v2, Lcom/movial/ipphone/IPStateListener;->listener:Lcom/movial/ipphone/IIPStateListener;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/movial/ipphone/IIPRegistry;->listen(Lcom/movial/ipphone/IIPStateListener;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy$4;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # invokes: Lcom/movial/ipphone/IPPhoneProxy;->unbindService(Z)V
    invoke-static {v1, v4}, Lcom/movial/ipphone/IPPhoneProxy;->access$000(Lcom/movial/ipphone/IPPhoneProxy;Z)V

    .line 593
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy$4;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    invoke-virtual {v1}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 594
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy$4;->this$0:Lcom/movial/ipphone/IPPhoneProxy;

    # invokes: Lcom/movial/ipphone/IPPhoneProxy;->bindService()V
    invoke-static {v1}, Lcom/movial/ipphone/IPPhoneProxy;->access$200(Lcom/movial/ipphone/IPPhoneProxy;)V

    .line 595
    :cond_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPPhoneProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register to LISTEN_EVENT_NONE FAILED. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
