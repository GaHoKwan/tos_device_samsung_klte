.class public Lcom/absolute/android/persistservice/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic b:Z

.field private static final c:Z = false

.field private static final d:Z = true

.field private static final e:Ljava/lang/String; = ";service="


# instance fields
.field protected a:Lcom/absolute/android/persistservice/aa;

.field private f:Landroid/content/Context;

.field private g:Lcom/absolute/android/persistservice/p;

.field private h:Lcom/absolute/android/persistservice/v;

.field private i:Lcom/absolute/android/persistservice/s;

.field private j:Ljava/util/Hashtable;

.field private k:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/absolute/android/persistservice/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/absolute/android/persistservice/q;->b:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/absolute/android/persistservice/aa;Lcom/absolute/android/persistservice/p;Lcom/absolute/android/persistservice/ad;)V
    .locals 3

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/absolute/android/persistservice/q;->f:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    .line 90
    iput-object p3, p0, Lcom/absolute/android/persistservice/q;->g:Lcom/absolute/android/persistservice/p;

    .line 91
    new-instance v0, Lcom/absolute/android/persistservice/v;

    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->f:Landroid/content/Context;

    iget-object v2, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    invoke-direct {v0, p0, v1, v2}, Lcom/absolute/android/persistservice/v;-><init>(Lcom/absolute/android/persistservice/q;Landroid/content/Context;Lcom/absolute/android/persistservice/aa;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/q;->h:Lcom/absolute/android/persistservice/v;

    .line 92
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->h:Lcom/absolute/android/persistservice/v;

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Lcom/absolute/android/persistservice/ad;->a(Lcom/absolute/android/persistservice/ai;Z)V

    .line 93
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/q;->j:Ljava/util/Hashtable;

    .line 94
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/absolute/android/persistservice/q;->k:Ljava/util/Hashtable;

    .line 95
    return-void
.end method

.method static synthetic a(Lcom/absolute/android/persistservice/q;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->f:Landroid/content/Context;

    return-object v0
.end method

.method private declared-synchronized a()V
    .locals 4

    .prologue
    .line 192
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->g:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/p;->a()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    .line 193
    if-eqz v1, :cond_0

    .line 194
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 195
    invoke-virtual {v3}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_0
    monitor-exit p0

    return-void

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 3

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/absolute/android/persistservice/q;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 207
    :cond_0
    if-eqz p1, :cond_1

    .line 208
    :try_start_1
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 209
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 210
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/absolute/android/persistservice/q;->a(Lcom/absolute/android/persistence/AppProfile;Z)V

    .line 214
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->i:Lcom/absolute/android/persistservice/s;

    if-eqz v1, :cond_1

    .line 215
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->i:Lcom/absolute/android/persistservice/s;

    invoke-virtual {v1, v0}, Lcom/absolute/android/persistservice/s;->a(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 219
    :cond_2
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Lcom/absolute/android/persistence/AppProfile;Z)V
    .locals 4

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/absolute/android/persistservice/q;->b:Z

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 108
    :cond_0
    if-eqz p1, :cond_1

    .line 109
    :try_start_1
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getIsMonitored()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_2

    .line 156
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 112
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 115
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->h:Lcom/absolute/android/persistservice/v;

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/v;->a(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v0

    .line 116
    if-nez v0, :cond_3

    .line 120
    new-instance v0, Lcom/absolute/android/persistservice/WatchdogInfo;

    invoke-direct {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;-><init>()V

    .line 121
    iget-object v2, p0, Lcom/absolute/android/persistservice/q;->h:Lcom/absolute/android/persistservice/v;

    invoke-static {v2, v1, v0}, Lcom/absolute/android/persistservice/v;->a(Lcom/absolute/android/persistservice/v;Ljava/lang/String;Lcom/absolute/android/persistservice/WatchdogInfo;)V

    .line 125
    :cond_3
    const/4 v0, 0x1

    if-ne p2, v0, :cond_4

    .line 126
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->h:Lcom/absolute/android/persistservice/v;

    invoke-static {v0, v1}, Lcom/absolute/android/persistservice/v;->b(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    .line 129
    :cond_4
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v0

    if-lez v0, :cond_6

    .line 130
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->i:Lcom/absolute/android/persistservice/s;

    if-nez v0, :cond_5

    .line 131
    new-instance v0, Lcom/absolute/android/persistservice/s;

    invoke-direct {v0, p0}, Lcom/absolute/android/persistservice/s;-><init>(Lcom/absolute/android/persistservice/q;)V

    iput-object v0, p0, Lcom/absolute/android/persistservice/q;->i:Lcom/absolute/android/persistservice/s;

    .line 132
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->i:Lcom/absolute/android/persistservice/s;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->i:Lcom/absolute/android/persistservice/s;

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/s;->a()V

    .line 137
    :cond_5
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->i:Lcom/absolute/android/persistservice/s;

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getCheckRunningSecs()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/absolute/android/persistservice/s;->a(Ljava/lang/String;I)V

    .line 141
    :cond_6
    invoke-virtual {p1}, Lcom/absolute/android/persistence/AppProfile;->getMonitorIntents()[Ljava/lang/String;

    move-result-object v2

    .line 145
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/u;

    .line 146
    if-eqz v0, :cond_7

    .line 147
    invoke-static {v0}, Lcom/absolute/android/persistservice/u;->a(Lcom/absolute/android/persistservice/u;)V

    .line 148
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_7
    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    .line 151
    new-instance v0, Lcom/absolute/android/persistservice/u;

    invoke-direct {v0, p0, v1, v2}, Lcom/absolute/android/persistservice/u;-><init>(Lcom/absolute/android/persistservice/q;Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    iget-object v2, p0, Lcom/absolute/android/persistservice/q;->j:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->i:Lcom/absolute/android/persistservice/s;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->i:Lcom/absolute/android/persistservice/s;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/s;->a(Ljava/lang/String;)V

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/u;

    .line 169
    if-eqz v0, :cond_1

    .line 170
    invoke-static {v0}, Lcom/absolute/android/persistservice/u;->a(Lcom/absolute/android/persistservice/u;)V

    .line 171
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_1
    invoke-virtual {p0, p1}, Lcom/absolute/android/persistservice/q;->b(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->h:Lcom/absolute/android/persistservice/v;

    invoke-static {v0, p1}, Lcom/absolute/android/persistservice/v;->c(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .locals 3

    .prologue
    .line 242
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/absolute/android/persistservice/q;->b(Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Creating Ping Thread for application package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with ping interval of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " seconds."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 251
    new-instance v0, Lcom/absolute/android/persistservice/ak;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/absolute/android/persistservice/ak;-><init>(Lcom/absolute/android/persistservice/q;Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    .line 252
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->k:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 254
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ak;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 255
    monitor-exit p0

    return-void

    .line 242
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 373
    if-eqz p2, :cond_0

    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 374
    const-string v0, ";service="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 375
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 376
    add-int/lit8 v1, v0, 0x9

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 377
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 379
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 380
    invoke-virtual {v2, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    iget-object v3, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Starting service: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " using intent: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 384
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->f:Landroid/content/Context;

    invoke-virtual {v0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 396
    :goto_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    :try_start_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->h:Lcom/absolute/android/persistservice/v;

    invoke-static {v0, p1}, Lcom/absolute/android/persistservice/v;->f(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    .line 398
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 403
    :cond_0
    :goto_1
    return-void

    .line 388
    :cond_1
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 391
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting application: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by broadcasting intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->f:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 400
    :catch_0
    move-exception v0

    .line 401
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppWatchdog was unable to start application with start intent "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 398
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
.end method

.method protected final declared-synchronized a(Ljava/lang/String;Z)V
    .locals 5

    .prologue
    .line 291
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->h:Lcom/absolute/android/persistservice/v;

    invoke-static {v0, p1}, Lcom/absolute/android/persistservice/v;->a(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v0

    .line 292
    sget-boolean v1, Lcom/absolute/android/persistservice/q;->b:Z

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    :try_start_1
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppWatchdog got exception in handleAppDied(), unable to re-start application "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 333
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 294
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->g:Lcom/absolute/android/persistservice/p;

    invoke-virtual {v1, p1}, Lcom/absolute/android/persistservice/p;->b(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v1

    .line 295
    sget-boolean v2, Lcom/absolute/android/persistservice/q;->b:Z

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 291
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 297
    :cond_2
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 298
    :try_start_3
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    .line 299
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->g()J

    .line 300
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 301
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getMaxRestartAttempts()I

    .line 309
    invoke-virtual {v1}, Lcom/absolute/android/persistence/AppProfile;->getRestartIntent()Ljava/lang/String;

    move-result-object v0

    .line 311
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to restart "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the AppProfile re-start intent is empty."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/absolute/android/persistservice/aa;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 316
    :cond_4
    if-eqz p2, :cond_5

    .line 317
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->h:Lcom/absolute/android/persistservice/v;

    invoke-static {v1, p1}, Lcom/absolute/android/persistservice/v;->d(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V

    .line 321
    :cond_5
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->h:Lcom/absolute/android/persistservice/v;

    invoke-static {v1, p1}, Lcom/absolute/android/persistservice/v;->a(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v1

    .line 322
    iget-object v2, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Re-starting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " using intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", consecutive restarts = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/WatchdogInfo;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", total = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/absolute/android/persistservice/WatchdogInfo;->d()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0, p1, v0}, Lcom/absolute/android/persistservice/q;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 268
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ak;

    .line 269
    if-eqz v0, :cond_0

    .line 271
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Stopping and removing Ping Thread for application package: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/absolute/android/persistservice/aa;->c(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ak;->b()V

    .line 274
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    :cond_0
    monitor-exit p0

    return-void

    .line 268
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->h:Lcom/absolute/android/persistservice/v;

    invoke-static {v0, p1}, Lcom/absolute/android/persistservice/v;->e(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    :goto_0
    monitor-exit p0

    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    :try_start_1
    iget-object v1, p0, Lcom/absolute/android/persistservice/q;->a:Lcom/absolute/android/persistservice/aa;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AppWatchdog got exception in handleAppRunning(), unable to clear re-start counter for application "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/absolute/android/persistservice/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized d(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 412
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 414
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->k:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/absolute/android/persistservice/ak;

    .line 415
    if-nez v0, :cond_2

    .line 416
    const-string v0, "No registered ping\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :goto_0
    const/4 v0, 0x0

    .line 423
    iget-object v2, p0, Lcom/absolute/android/persistservice/q;->i:Lcom/absolute/android/persistservice/s;

    if-eqz v2, :cond_0

    .line 424
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->i:Lcom/absolute/android/persistservice/s;

    invoke-virtual {v0, p1}, Lcom/absolute/android/persistservice/s;->b(Ljava/lang/String;)I

    move-result v0

    .line 426
    :cond_0
    if-eqz v0, :cond_3

    .line 427
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Running services check interval = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " secs\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :goto_1
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->j:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 434
    const-string v0, "Broadcast receiver for monitored intents is active\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :goto_2
    iget-object v0, p0, Lcom/absolute/android/persistservice/q;->h:Lcom/absolute/android/persistservice/v;

    invoke-static {v0, p1}, Lcom/absolute/android/persistservice/v;->a(Lcom/absolute/android/persistservice/v;Ljava/lang/String;)Lcom/absolute/android/persistservice/WatchdogInfo;

    move-result-object v0

    .line 441
    if-eqz v0, :cond_1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/WatchdogInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 419
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ping thread: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/absolute/android/persistservice/ak;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 412
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 430
    :cond_3
    :try_start_2
    const-string v0, "No running services check\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 437
    :cond_4
    const-string v0, "No broadcast receiver for monitored intents\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
