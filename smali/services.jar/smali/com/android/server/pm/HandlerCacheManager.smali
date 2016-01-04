.class public Lcom/android/server/pm/HandlerCacheManager;
.super Ljava/lang/Object;
.source "HandlerCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;,
        Lcom/android/server/pm/HandlerCacheManager$QueueableHandler;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HandlerCacheManager"

.field public static final PERSONA_DEVICE_POLICY_HANDLER:Ljava/lang/String; = "persona_device_policy"

.field public static final PERSONA_FILE_HANDLER:Ljava/lang/String; = "persona_file_system"

.field public static final PERSONA_LOCK_SETTINGS_HANDLER:Ljava/lang/String; = "persona_lock_settings"

.field public static final PERSONA_POLICY_HANDLER:Ljava/lang/String; = "persona_policy"

.field public static final PERSONA_STATE_HANDLER:Ljava/lang/String; = "persona_state"

.field private static mCurrentPersona:I

.field private static final observerCacheSets:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/IPersonaObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final observerCacheSets2:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/pm/IPersonaObserver;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static sCurrentCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/pm/HandlerCacheManager;


# instance fields
.field private handler:Landroid/os/Handler;

.field private handlerThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, -0x1

    sput v0, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets2:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handlerThread:Landroid/os/HandlerThread;

    .line 47
    sput-object p0, Lcom/android/server/pm/HandlerCacheManager;->sInstance:Lcom/android/server/pm/HandlerCacheManager;

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerCacheManager"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handlerThread:Landroid/os/HandlerThread;

    .line 50
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/HandlerCacheManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    .line 52
    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    return-object v0
.end method

.method public static declared-synchronized getHandler(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v2, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v2

    const/4 v0, 0x0

    .line 65
    .local v0, "mBinder":Ljava/lang/Object;
    :try_start_0
    sget-object v1, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 66
    sget-object v1, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    if-eqz v0, :cond_2

    .line 77
    .end local v0    # "mBinder":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    const-string v1, "persona_state"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I

    if-lez v1, :cond_1

    .line 80
    sget-object v1, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    .line 82
    const-string v1, "HandlerCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " registerHandler creating new cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-object v1, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    sget v4, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    sget-object v4, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    :cond_0
    const-string v1, "HandlerCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHandler() returning queuing StateHandler for persona "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    new-instance v0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;

    sget v1, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I

    invoke-direct {v0, v1}, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;-><init>(I)V

    .line 91
    .local v0, "mBinder":Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;
    sget-object v1, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    .end local v0    # "mBinder":Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;
    :cond_1
    monitor-exit v2

    return-object v0

    .line 71
    .local v0, "mBinder":Ljava/lang/Object;
    :cond_2
    :try_start_1
    const-string v1, "HandlerCacheManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHandler() mBinder for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 63
    .end local v0    # "mBinder":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 74
    .restart local v0    # "mBinder":Ljava/lang/Object;
    :cond_3
    :try_start_2
    const-string v1, "HandlerCacheManager"

    const-string v3, "getHandler() sCurrentCache is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public static declared-synchronized getHandlerForPersona(ILjava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "personaId"    # I
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 99
    const-class v3, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v3

    :try_start_0
    const-string v2, "HandlerCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHandlerForPersona :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, 0x0

    .line 101
    .local v0, "mBinder":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 102
    .local v1, "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v2, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    check-cast v1, Ljava/util/HashMap;

    .line 103
    .restart local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_3

    .line 104
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    const-string v2, "HandlerCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHandler() mBinder for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not null: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v0    # "mBinder":Ljava/lang/Object;
    :goto_0
    if-nez v0, :cond_1

    const-string v2, "persona_state"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-lez p0, :cond_1

    .line 118
    if-nez v1, :cond_0

    .line 119
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 120
    .restart local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "HandlerCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " registerHandler creating new cache"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    sget-object v2, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :cond_0
    const-string v2, "HandlerCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHandler() returning queuing StateHandler for persona "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v0, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;

    invoke-direct {v0, p0}, Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;-><init>(I)V

    .line 129
    .local v0, "mBinder":Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    .end local v0    # "mBinder":Lcom/android/server/pm/HandlerCacheManager$QueueableStateHandler;
    :cond_1
    monitor-exit v3

    return-object v0

    .line 109
    .local v0, "mBinder":Ljava/lang/Object;
    :cond_2
    :try_start_1
    const-string v2, "HandlerCacheManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getHandler() mBinder for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 99
    .end local v0    # "mBinder":Ljava/lang/Object;
    .end local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 112
    .restart local v0    # "mBinder":Ljava/lang/Object;
    .restart local v1    # "sTempCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    :try_start_2
    const-string v2, "HandlerCacheManager"

    const-string v4, "getHandler() sTempCache is null"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/pm/HandlerCacheManager;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/pm/HandlerCacheManager;->sInstance:Lcom/android/server/pm/HandlerCacheManager;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/android/server/pm/HandlerCacheManager;

    invoke-direct {v0}, Lcom/android/server/pm/HandlerCacheManager;-><init>()V

    sput-object v0, Lcom/android/server/pm/HandlerCacheManager;->sInstance:Lcom/android/server/pm/HandlerCacheManager;

    .line 58
    :cond_0
    sget-object v0, Lcom/android/server/pm/HandlerCacheManager;->sInstance:Lcom/android/server/pm/HandlerCacheManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized registerHandler(ILjava/lang/String;Ljava/lang/Object;Landroid/content/pm/IPersonaObserver;)V
    .locals 7
    .param p0, "personaId"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mHandler"    # Ljava/lang/Object;
    .param p3, "observerCallback"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 145
    const-class v4, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v4

    :try_start_0
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerHandler personaId is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 150
    .local v2, "sPersonaCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 153
    .local v1, "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    if-nez v2, :cond_0

    .line 154
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "sPersonaCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 155
    .restart local v2    # "sPersonaCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " registerHandler creating new cache"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    if-nez v1, :cond_1

    .line 161
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 162
    .restart local v1    # "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_1
    if-eqz p2, :cond_3

    if-eqz p1, :cond_3

    .line 167
    const-string v3, "HandlerCacheManager"

    const-string v5, " registerHandler adding to map"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 170
    .local v0, "existingHandler":Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v3, v0, Lcom/android/server/pm/HandlerCacheManager$QueueableHandler;

    if-eqz v3, :cond_2

    .line 172
    const-string v3, "HandlerCacheManager"

    const-string v5, " registerHandler existingHandler is QueueableHandler"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    check-cast v0, Lcom/android/server/pm/HandlerCacheManager$QueueableHandler;

    .end local v0    # "existingHandler":Ljava/lang/Object;
    invoke-interface {v0, p2}, Lcom/android/server/pm/HandlerCacheManager$QueueableHandler;->dequeueTo(Ljava/lang/Object;)V

    .line 178
    :cond_2
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " just put handler :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    if-eqz p3, :cond_3

    .line 181
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerHandler() added observerCallback for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " personaId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v1, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    :cond_3
    sget v3, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I

    if-ne v3, p0, :cond_4

    .line 189
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    sput-object v3, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    :cond_4
    monitor-exit v4

    return-void

    .line 145
    .end local v1    # "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    .end local v2    # "sPersonaCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized registerObserver(ILjava/lang/String;Landroid/content/pm/IPersonaObserver;)V
    .locals 7
    .param p0, "personaId"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "observerCallback"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 197
    const-class v4, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v4

    :try_start_0
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerObserver() observerCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 202
    .local v2, "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    if-nez v2, :cond_0

    .line 203
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 204
    .restart local v2    # "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_0
    if-eqz p2, :cond_1

    .line 208
    const-string v3, "HandlerCacheManager"

    const-string v5, "registerObserver() added observerCallback "

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPersonaObserver;

    .line 213
    .local v0, "callback":Landroid/content/pm/IPersonaObserver;
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerObserver() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 197
    .end local v0    # "callback":Landroid/content/pm/IPersonaObserver;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 215
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    :cond_2
    :try_start_1
    const-string v3, "HandlerCacheManager"

    const-string v5, "----------------------"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    monitor-exit v4

    return-void
.end method

.method public static declared-synchronized setCurrentUser(I)V
    .locals 3
    .param p0, "personaId"    # I

    .prologue
    .line 138
    const-class v1, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/pm/HandlerCacheManager;->sCache:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    sput-object v0, Lcom/android/server/pm/HandlerCacheManager;->sCurrentCache:Ljava/util/HashMap;

    .line 139
    sput p0, Lcom/android/server/pm/HandlerCacheManager;->mCurrentPersona:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    monitor-exit v1

    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized unregisterObserver(ILjava/lang/String;Landroid/content/pm/IPersonaObserver;)V
    .locals 7
    .param p0, "personaId"    # I
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "observerCallback"    # Landroid/content/pm/IPersonaObserver;

    .prologue
    .line 221
    const-class v4, Lcom/android/server/pm/HandlerCacheManager;

    monitor-enter v4

    :try_start_0
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterObserver() observerCallback "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-object v3, Lcom/android/server/pm/HandlerCacheManager;->observerCacheSets:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 226
    .local v2, "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    if-eqz v2, :cond_2

    .line 228
    if-eqz p2, :cond_0

    .line 229
    const-string v3, "HandlerCacheManager"

    const-string/jumbo v5, "unregisterObserver() removed observerCallback "

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_0
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/IPersonaObserver;

    .line 234
    .local v0, "callback":Landroid/content/pm/IPersonaObserver;
    const-string v3, "HandlerCacheManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unregisterObserver() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 221
    .end local v0    # "callback":Landroid/content/pm/IPersonaObserver;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 236
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v2    # "observerCache":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/IPersonaObserver;>;"
    :cond_1
    :try_start_1
    const-string v3, "HandlerCacheManager"

    const-string v5, "----------------------"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    monitor-exit v4

    return-void
.end method


# virtual methods
.method public onFirstBoot(I)V
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/HandlerCacheManager$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/HandlerCacheManager$4;-><init>(Lcom/android/server/pm/HandlerCacheManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    return-void
.end method

.method public onInit(I)V
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/HandlerCacheManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/HandlerCacheManager$2;-><init>(Lcom/android/server/pm/HandlerCacheManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    return-void
.end method

.method public onKeyGuardStateChanged(IZ)V
    .locals 2
    .param p1, "personaId"    # I
    .param p2, "state"    # Z

    .prologue
    .line 386
    const-string v0, "HandlerCacheManager"

    const-string v1, "onKeyGuardStateChanged() handler.post()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/HandlerCacheManager$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/pm/HandlerCacheManager$6;-><init>(Lcom/android/server/pm/HandlerCacheManager;IZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 408
    return-void
.end method

.method public onPersonaSwitch(I)V
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/HandlerCacheManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/HandlerCacheManager$1;-><init>(Lcom/android/server/pm/HandlerCacheManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public onSessionExpired(I)V
    .locals 2
    .param p1, "personaId"    # I

    .prologue
    .line 355
    const-string v0, "HandlerCacheManager"

    const-string v1, "onSessionExpired() handler.post()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/HandlerCacheManager$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/HandlerCacheManager$5;-><init>(Lcom/android/server/pm/HandlerCacheManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    return-void
.end method

.method public onStateChange(III)V
    .locals 2
    .param p1, "personaId"    # I
    .param p2, "state"    # I
    .param p3, "oldState"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/pm/HandlerCacheManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/HandlerCacheManager$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/pm/HandlerCacheManager$3;-><init>(Lcom/android/server/pm/HandlerCacheManager;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method
