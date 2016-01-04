.class public final Lcom/absolute/android/persistservice/z;
.super Lcom/absolute/android/persistservice/ai;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "-log-settings"

.field private static final b:Ljava/lang/String; = "numLogFiles"

.field private static final h:Ljava/lang/String; = "maxLogSizeKB"

.field private static final i:Ljava/lang/String; = "currentLogFile"


# instance fields
.field private j:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/absolute/android/persistservice/aa;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-log-settings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/absolute/android/persistservice/ai;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/aa;Ljava/lang/String;)V

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/absolute/android/persistservice/z;->j:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lcom/absolute/android/persistservice/z;->j:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method protected final declared-synchronized a()I
    .locals 2

    .prologue
    .line 51
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    const-string/jumbo v1, "numLogFiles"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(I)V
    .locals 3

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    const-string/jumbo v1, "numLogFiles"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 98
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    const-string v1, "currentLogFile"

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()I
    .locals 2

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    const-string/jumbo v1, "maxLogSizeKB"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b(I)V
    .locals 3

    .prologue
    .line 79
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    const-string/jumbo v1, "maxLogSizeKB"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-virtual {p0}, Lcom/absolute/android/persistservice/ai;->e()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    monitor-exit p0

    return-void

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final c()V
    .locals 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Persisted Log Settings file "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/absolute/android/persistservice/ai;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was not found. Initalizing with defaults."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/aa;

    const-string v1, "Initializing number of rotating log files to: 4"

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    const-string/jumbo v1, "numLogFiles"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/aa;

    const-string v1, "Initializing maximum size of each log file in kB to: 60"

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    const-string/jumbo v1, "maxLogSizeKB"

    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/absolute/android/persistservice/z;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    const-string v2, "currentLogFile"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    return-void
.end method

.method protected final declared-synchronized d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/ai;->c:Ljava/util/Hashtable;

    const-string v1, "currentLogFile"

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final h(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 127
    new-instance v1, Lcom/absolute/android/persistservice/z;

    iget-object v2, p0, Lcom/absolute/android/persistservice/ai;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/absolute/android/persistservice/ai;->e:Lcom/absolute/android/persistservice/aa;

    iget-object v4, p0, Lcom/absolute/android/persistservice/z;->j:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/absolute/android/persistservice/z;-><init>(Landroid/content/Context;Lcom/absolute/android/persistservice/aa;Ljava/lang/String;)V

    .line 129
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/ai;->i(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/absolute/android/persistservice/ai;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 132
    :goto_0
    return v0

    .line 130
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v1

    goto :goto_0
.end method
