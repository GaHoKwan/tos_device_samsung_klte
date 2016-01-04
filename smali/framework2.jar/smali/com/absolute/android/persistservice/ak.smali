.class public final Lcom/absolute/android/persistservice/ak;
.super Ljava/lang/Thread;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final a:Z = false

.field private static final b:I = 0x3

.field private static final c:Ljava/lang/String; = "PingWorkerThread_"


# instance fields
.field private d:Lcom/absolute/android/persistservice/q;

.field private e:Lcom/absolute/android/persistservice/aa;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Z

.field private i:Lcom/absolute/android/persistence/IABTPing;

.field private j:Lcom/absolute/android/persistservice/am;


# direct methods
.method constructor <init>(Lcom/absolute/android/persistservice/q;Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PingWorkerThread_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ak;->h:Z

    .line 58
    iput-object p1, p0, Lcom/absolute/android/persistservice/ak;->d:Lcom/absolute/android/persistservice/q;

    .line 59
    iget-object v0, p1, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    iput-object v0, p0, Lcom/absolute/android/persistservice/ak;->e:Lcom/absolute/android/persistservice/aa;

    .line 60
    iput-object p2, p0, Lcom/absolute/android/persistservice/ak;->f:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/absolute/android/persistservice/ak;->i:Lcom/absolute/android/persistence/IABTPing;

    .line 62
    iput p4, p0, Lcom/absolute/android/persistservice/ak;->g:I

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ak;)Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/ak;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ak;)Lcom/absolute/android/persistence/IABTPing;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->i:Lcom/absolute/android/persistence/IABTPing;

    return-object v0
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ak;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->f:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 96
    monitor-enter p0

    .line 97
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->j:Lcom/absolute/android/persistservice/am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 100
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    .line 102
    :try_start_2
    iget-object v1, p0, Lcom/absolute/android/persistservice/ak;->e:Lcom/absolute/android/persistservice/aa;

    const-string v2, "Ping Thread Interrupted while waiting on handler."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 105
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method static synthetic d(Lcom/absolute/android/persistservice/ak;)Lcom/absolute/android/persistservice/q;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->d:Lcom/absolute/android/persistservice/q;

    return-object v0
.end method

.method static synthetic e(Lcom/absolute/android/persistservice/ak;)I
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/absolute/android/persistservice/ak;->g:I

    return v0
.end method


# virtual methods
.method protected final a()V
    .locals 4

    .prologue
    .line 70
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->j:Lcom/absolute/android/persistservice/am;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/absolute/android/persistservice/ak;->e:Lcom/absolute/android/persistservice/aa;

    const-string v2, "Ping Thread Interrupted while waiting on handler."

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    monitor-enter p0

    .line 75
    :try_start_4
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->i:Lcom/absolute/android/persistence/IABTPing;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 84
    :goto_1
    :try_start_5
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->j:Lcom/absolute/android/persistservice/am;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->j:Lcom/absolute/android/persistservice/am;

    const/4 v1, 0x3

    iget v2, p0, Lcom/absolute/android/persistservice/ak;->g:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 88
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ak;->h:Z

    .line 89
    monitor-exit p0

    return-void

    .line 76
    :catch_1
    move-exception v0

    .line 77
    iget-object v1, p0, Lcom/absolute/android/persistservice/ak;->e:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to bind to IABTPing interface of application "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/absolute/android/persistservice/ak;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to register for death of recipient. Already dead?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->d:Lcom/absolute/android/persistservice/q;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ak;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 89
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()V
    .locals 2

    .prologue
    .line 114
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->j:Lcom/absolute/android/persistservice/am;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->j:Lcom/absolute/android/persistservice/am;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->i:Lcom/absolute/android/persistence/IABTPing;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPing;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/absolute/android/persistservice/ak;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final binderDied()V
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->e:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ABTPersistenceService Ping Thread got \'binderDied\' notification for application "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/ak;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/absolute/android/persistservice/ak;->d:Lcom/absolute/android/persistservice/q;

    iget-object v1, p0, Lcom/absolute/android/persistservice/ak;->f:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;Z)V

    .line 153
    return-void
.end method

.method public final run()V
    .locals 2

    .prologue
    .line 130
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    new-instance v0, Lcom/absolute/android/persistservice/am;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/am;-><init>(Lcom/absolute/android/persistservice/ak;B)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ak;->j:Lcom/absolute/android/persistservice/am;

    .line 136
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 137
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 139
    return-void

    .line 137
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    iget-boolean v0, p0, Lcom/absolute/android/persistservice/ak;->h:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    .line 167
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Enabled = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ping interval = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/absolute/android/persistservice/ak;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " secs"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 166
    :cond_0
    const-string v0, "false"

    goto :goto_0
.end method
