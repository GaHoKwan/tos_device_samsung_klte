.class public Lcom/absolute/android/persistservice/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z

.field private static final b:Ljava/lang/String; = "APS"

.field private static final c:Z


# instance fields
.field private d:Lcom/absolute/android/persistservice/aa;

.field private e:Landroid/content/Context;

.field private f:Ljava/util/Hashtable;

.field private g:Ljava/util/Hashtable;

.field private h:Lcom/absolute/android/persistservice/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/absolute/android/persistservice/ad;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/ad;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/absolute/android/persistservice/ad;->e:Landroid/content/Context;

    .line 49
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    .line 50
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    .line 51
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ad;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ad;->c()V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ad;Lcom/absolute/android/persistservice/ah;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ad;->b(Lcom/absolute/android/persistservice/ah;)V

    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 25
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No longer have access to file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to restore access to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    const-string v1, "Persisted directory has been removed."

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ah;

    if-eqz p2, :cond_3

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v1

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/ai;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been removed / modified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    :cond_4
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to restore persisted file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/af;Z)V
    .locals 3

    .prologue
    .line 244
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 245
    :try_start_0
    invoke-virtual {p1}, Landroid/os/FileObserver;->stopWatching()V

    .line 246
    new-instance v0, Lcom/absolute/android/persistservice/af;

    invoke-static {p1}, Lcom/absolute/android/persistservice/af;->a(Lcom/absolute/android/persistservice/af;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/absolute/android/persistservice/af;-><init>(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-static {p1}, Lcom/absolute/android/persistservice/af;->a(Lcom/absolute/android/persistservice/af;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :goto_0
    monitor-exit p0

    return-void

    .line 251
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized a(Lcom/absolute/android/persistservice/ah;)V
    .locals 1

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/FileObserver;->startWatching()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private a(Lcom/absolute/android/persistservice/ai;)V
    .locals 4

    .prologue
    .line 153
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    iget-object v1, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    new-instance v2, Lcom/absolute/android/persistservice/ah;

    invoke-direct {v2, p0, p1}, Lcom/absolute/android/persistservice/ah;-><init>(Lcom/absolute/android/persistservice/ad;Lcom/absolute/android/persistservice/ai;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 160
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    new-instance v3, Lcom/absolute/android/persistservice/af;

    invoke-direct {v3, p0, v1}, Lcom/absolute/android/persistservice/af;-><init>(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    new-instance v2, Lcom/absolute/android/persistservice/af;

    invoke-direct {v2, p0, v0}, Lcom/absolute/android/persistservice/af;-><init>(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 4

    .prologue
    .line 457
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/absolute/android/persistservice/ABTPersistenceService;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 459
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_0

    .line 460
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    const-string v1, "Persisted directory has been removed."

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 463
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 467
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ah;

    .line 468
    if-eqz p2, :cond_3

    .line 469
    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v1

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v2

    iget-object v2, v2, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/ai;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has been removed / modified."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v2, :cond_4

    .line 478
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 480
    :cond_4
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v2, 0x1

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 482
    :catch_0
    move-exception v0

    .line 483
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to restore persisted file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized a(Z)V
    .locals 2

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 227
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/af;

    invoke-direct {p0, v0, p1}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/af;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 226
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 230
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized b()V
    .locals 2

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 200
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ah;

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ah;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 203
    :cond_0
    monitor-exit p0

    return-void
.end method

.method static synthetic b(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ad;->b(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized b(Lcom/absolute/android/persistservice/ah;)V
    .locals 1

    .prologue
    .line 496
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 500
    :try_start_0
    invoke-static {p1}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v0

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ai;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    :cond_0
    monitor-exit p0

    return-void

    .line 496
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 514
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 516
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 518
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    monitor-exit p0

    return-void

    .line 514
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized c()V
    .locals 2

    .prologue
    .line 527
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 528
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 529
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ah;

    .line 530
    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ad;->b(Lcom/absolute/android/persistservice/ah;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 534
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ad;->a(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 535
    monitor-exit p0

    return-void
.end method

.method static synthetic c(Lcom/absolute/android/persistservice/ad;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ad;->d(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 551
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 552
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-nez v0, :cond_2

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No longer have access to file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 557
    :cond_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 564
    :cond_2
    :goto_0
    return-void

    .line 559
    :catch_0
    move-exception v0

    .line 560
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_2

    .line 561
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to restore access to: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private declared-synchronized d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 573
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 574
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "750"
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chown system:system "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/absolute/android/persistservice/ad;->e:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->e:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/absolute/android/utils/CommandUtil;->executeCommand(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 590
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->canExecute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->g:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-eqz v0, :cond_3

    .line 599
    :try_start_3
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->e:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Absolute Persistence Service unable to access "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 622
    :cond_1
    :goto_2
    monitor-exit p0

    return-void

    .line 575
    :cond_2
    :try_start_4
    const-string v0, "600"

    goto :goto_0

    .line 601
    :catch_0
    move-exception v0

    .line 602
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_1

    .line 603
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to reboot to reset access to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Got exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 617
    :catch_1
    move-exception v0

    .line 618
    :try_start_5
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v1, :cond_1

    .line 619
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doResetPermissions for : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 610
    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_4

    .line 611
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to set permission of persisted file / folder "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Deleting file ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 613
    :cond_4
    invoke-static {v1}, Lcom/absolute/android/utils/FileUtil;->deleteFile(Ljava/io/File;)Z
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catch_2
    move-exception v0

    goto/16 :goto_1
.end method


# virtual methods
.method protected final declared-synchronized a()V
    .locals 2

    .prologue
    .line 185
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ABT_PersistedStorageManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 188
    new-instance v1, Lcom/absolute/android/persistservice/ag;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/absolute/android/persistservice/ag;-><init>(Lcom/absolute/android/persistservice/ad;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    .line 191
    :cond_0
    invoke-direct {p0}, Lcom/absolute/android/persistservice/ad;->b()V

    .line 192
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/absolute/android/persistservice/ad;->a(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Lcom/absolute/android/persistservice/aa;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    .line 55
    return-void
.end method

.method protected final declared-synchronized a(Lcom/absolute/android/persistservice/ai;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 71
    monitor-enter p0

    .line 74
    if-eqz p2, :cond_0

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    iget-object v2, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p1, p0}, Lcom/absolute/android/persistservice/ai;->a(Lcom/absolute/android/persistservice/ad;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ai;->f()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 85
    if-eqz p2, :cond_1

    .line 139
    :try_start_2
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ai;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    :try_start_3
    instance-of v2, v0, Ljava/io/FileNotFoundException;

    if-eqz v2, :cond_5

    .line 92
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_a

    .line 93
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Persisted storage file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not exist. 1st boot?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move v2, v1

    .line 124
    :cond_2
    :goto_1
    if-nez v2, :cond_3

    .line 128
    :try_start_4
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ai;->c()V

    .line 129
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ai;->e()Z

    move-result v1

    .line 130
    if-nez v1, :cond_3

    .line 131
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_3

    .line 132
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to save initialized storage file "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 138
    :cond_3
    if-nez v2, :cond_4

    if-eqz v1, :cond_1

    :cond_4
    if-eqz p2, :cond_1

    .line 139
    :try_start_5
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ai;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 97
    :cond_5
    :try_start_6
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v2, :cond_6

    .line 98
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got exception reading persisted data file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 103
    :cond_6
    :try_start_7
    iget-object v0, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/absolute/android/persistservice/ai;->j(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 104
    const/4 v2, 0x1

    .line 105
    :try_start_8
    invoke-virtual {p1}, Lcom/absolute/android/persistservice/ai;->e()Z

    move-result v1

    .line 106
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_2

    .line 107
    if-eqz v1, :cond_9

    .line 108
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Successfully migrated pre-3118 format data file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_1

    .line 115
    :catch_1
    move-exception v0

    .line 116
    :goto_2
    :try_start_9
    iget-object v3, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v3, :cond_2

    .line 117
    iget-object v3, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to read persisted data file: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in pre-3118 format."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto/16 :goto_1

    .line 138
    :catchall_1
    move-exception v0

    :goto_3
    if-nez v2, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    if-eqz p2, :cond_8

    .line 139
    :try_start_a
    invoke-direct {p0, p1}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ai;)V

    :cond_8
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 111
    :cond_9
    :try_start_b
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Loaded data from pre-3118 format data file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", but failed to save in new format."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_1

    .line 138
    :catchall_2
    move-exception v0

    move v2, v1

    goto :goto_3

    .line 115
    :catch_2
    move-exception v0

    move v2, v1

    goto :goto_2

    :cond_a
    move v2, v1

    goto/16 :goto_1
.end method

.method protected final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 263
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    if-nez v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 270
    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/absolute/android/persistservice/ad;->a:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->a(Lcom/absolute/android/persistservice/ah;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 271
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->a(Lcom/absolute/android/persistservice/ah;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 274
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/ah;->a(Lcom/absolute/android/persistservice/ah;Z)Z

    .line 278
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;ZZ)V
    .locals 3

    .prologue
    .line 297
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ah;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    if-nez v0, :cond_1

    .line 351
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 304
    :cond_1
    :try_start_1
    sget-boolean v1, Lcom/absolute/android/persistservice/ad;->a:Z

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->a(Lcom/absolute/android/persistservice/ah;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 305
    :cond_2
    :try_start_2
    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->a(Lcom/absolute/android/persistservice/ah;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/ah;->a(Lcom/absolute/android/persistservice/ah;Z)Z

    .line 316
    iget-object v1, p0, Lcom/absolute/android/persistservice/ad;->h:Lcom/absolute/android/persistservice/ag;

    if-eqz v1, :cond_0

    .line 320
    if-eqz p2, :cond_4

    .line 325
    if-eqz p3, :cond_3

    .line 331
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 334
    new-instance v1, Lcom/absolute/android/persistservice/ah;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/absolute/android/persistservice/ah;-><init>(Lcom/absolute/android/persistservice/ad;Lcom/absolute/android/persistservice/ai;)V

    .line 335
    iget-object v2, p0, Lcom/absolute/android/persistservice/ad;->f:Ljava/util/Hashtable;

    invoke-static {v0}, Lcom/absolute/android/persistservice/ah;->b(Lcom/absolute/android/persistservice/ah;)Lcom/absolute/android/persistservice/ai;

    move-result-object v0

    iget-object v0, v0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    invoke-virtual {v1}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0

    .line 342
    :cond_3
    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    goto :goto_0

    .line 347
    :cond_4
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/absolute/android/persistservice/ad;->d:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PersistedFileObserver.onSelfUpdateEnd(), failed to save to path: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method
