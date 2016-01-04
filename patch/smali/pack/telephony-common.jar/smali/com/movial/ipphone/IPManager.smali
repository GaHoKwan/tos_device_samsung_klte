.class public Lcom/movial/ipphone/IPManager;
.super Ljava/lang/Object;
.source "IPManager.java"


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x2710


# instance fields
.field private TAG:Ljava/lang/String;

.field private final binded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mIPRegistry:Lcom/movial/ipphone/IIPRegistry;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "IPManager"

    iput-object v0, p0, Lcom/movial/ipphone/IPManager;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/movial/ipphone/IPManager;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 59
    new-instance v0, Ljava/util/concurrent/CyclicBarrier;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v0, p0, Lcom/movial/ipphone/IPManager;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 63
    new-instance v0, Lcom/movial/ipphone/IPManager$1;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPManager$1;-><init>(Lcom/movial/ipphone/IPManager;)V

    iput-object v0, p0, Lcom/movial/ipphone/IPManager;->mConnection:Landroid/content/ServiceConnection;

    .line 80
    iput-object p1, p0, Lcom/movial/ipphone/IPManager;->mContext:Landroid/content/Context;

    .line 81
    return-void
.end method

.method static synthetic access$002(Lcom/movial/ipphone/IPManager;Lcom/movial/ipphone/IIPRegistry;)Lcom/movial/ipphone/IIPRegistry;
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPManager;
    .param p1, "x1"    # Lcom/movial/ipphone/IIPRegistry;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/movial/ipphone/IPManager;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    return-object p1
.end method

.method static synthetic access$100(Lcom/movial/ipphone/IPManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPManager;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/movial/ipphone/IPManager;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/movial/ipphone/IPManager;)Ljava/util/concurrent/CyclicBarrier;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPManager;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/movial/ipphone/IPManager;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    return-object v0
.end method

.method static synthetic access$300(Lcom/movial/ipphone/IPManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPManager;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/movial/ipphone/IPManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private bindService(Z)V
    .locals 6
    .param p1, "timeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 84
    iget-object v2, p0, Lcom/movial/ipphone/IPManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "CELL_ONLY"

    invoke-static {v2, v3, v4}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "cannot bind to IPRegistry"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/IPManager;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/movial/ipphone/IPManager;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/movial/ipphone/IPManager;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v2}, Ljava/util/concurrent/CyclicBarrier;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/movial/ipphone/IIPRegistry;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.movial.ipservice"

    const-string v4, "com.movial.ipservice.IPService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v2, p0, Lcom/movial/ipphone/IPManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/movial/ipphone/IPManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 94
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPManager;->waitConnectionResponse(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 100
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 101
    return-void

    .line 96
    :catch_0
    move-exception v0

    .line 97
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/movial/ipphone/IPManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService FAILED. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private unbindService()V
    .locals 5

    .prologue
    .line 104
    iget-object v2, p0, Lcom/movial/ipphone/IPManager;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v2

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :try_start_1
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/movial/ipphone/IPManager;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 108
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 114
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindService FAILED. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private waitConnectionResponse(Z)V
    .locals 5
    .param p1, "timeout"    # Z

    .prologue
    .line 118
    if-eqz p1, :cond_0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I

    .line 125
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v1}, Ljava/util/concurrent/CyclicBarrier;->await()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitConnectionResponse FAILED. "

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


# virtual methods
.method public checkAudioMode(I)I
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 140
    move v1, p1

    .line 142
    .local v1, "result":I
    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPManager;->bindService(Z)V

    .line 143
    iget-object v2, p0, Lcom/movial/ipphone/IPManager;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    invoke-interface {v2, p1}, Lcom/movial/ipphone/IIPRegistry;->checkAudioMode(I)I

    move-result v1

    .line 144
    invoke-direct {p0}, Lcom/movial/ipphone/IPManager;->unbindService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lcom/movial/ipphone/IPManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAudioMode FAILED. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public listen(ZLcom/movial/ipphone/IPStateListener;I)V
    .locals 4
    .param p1, "timeout"    # Z
    .param p2, "listener"    # Lcom/movial/ipphone/IPStateListener;
    .param p3, "event"    # I

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->TAG:Ljava/lang/String;

    const-string v2, "bindService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPManager;->bindService(Z)V

    .line 131
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    iget-object v2, p2, Lcom/movial/ipphone/IPStateListener;->listener:Lcom/movial/ipphone/IIPStateListener;

    invoke-interface {v1, v2, p3}, Lcom/movial/ipphone/IIPRegistry;->listen(Lcom/movial/ipphone/IIPStateListener;I)V

    .line 132
    invoke-direct {p0}, Lcom/movial/ipphone/IPManager;->unbindService()V

    .line 133
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->TAG:Ljava/lang/String;

    const-string v2, "unbindService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :goto_0
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setListener FAILED. "

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

.method public notifyRssiChange(I)V
    .locals 4
    .param p1, "rssi"    # I

    .prologue
    .line 153
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPManager;->bindService(Z)V

    .line 154
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    invoke-interface {v1, p1}, Lcom/movial/ipphone/IIPRegistry;->notifyRssiChange(I)V

    .line 155
    invoke-direct {p0}, Lcom/movial/ipphone/IPManager;->unbindService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/movial/ipphone/IPManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyRssiChange FAILED. "

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
