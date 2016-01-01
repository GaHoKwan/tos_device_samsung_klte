.class Landroid/webkitsec/JniUtil;
.super Ljava/lang/Object;
.source "JniUtil.java"


# static fields
.field private static final ANDROID_CONTENT:Ljava/lang/String; = "content:"

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static sCacheDirectory:Ljava/lang/String;

.field private static sContext:Landroid/content/Context;

.field private static sDatabaseDirectory:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "webcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const-string v0, "chromium_net"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canSatisfyMemoryAllocation(J)Z
    .locals 8

    invoke-static {}, Landroid/webkitsec/JniUtil;->checkInitialized()V

    sget-object v4, Landroid/webkitsec/JniUtil;->sContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    new-instance v3, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v3}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v4, v3, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    iget-wide v6, v3, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    sub-long v0, v4, v6

    iget-boolean v4, v3, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    if-nez v4, :cond_0

    cmp-long v4, p0, v0

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static checkInitialized()V
    .locals 2

    sget-object v0, Landroid/webkitsec/JniUtil;->sContext:Landroid/content/Context;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call CookieSyncManager::createInstance() or create a webview before using this class"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static declared-synchronized contentUrlSize(Ljava/lang/String;)J
    .locals 14

    const-wide/16 v8, 0x0

    const/4 v13, -0x1

    const-class v10, Landroid/webkitsec/JniUtil;

    monitor-enter v10

    :try_start_0
    const-string v11, "content:"

    invoke-virtual {p0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v11

    if-eqz v11, :cond_2

    const/16 v11, 0x3f

    :try_start_1
    invoke-virtual {p0, v11}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-eq v3, v13, :cond_0

    const/4 v11, 0x0

    invoke-virtual {p0, v11, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    sget-object v11, Landroid/webkitsec/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v11, v7}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    const/16 v11, 0x400

    new-array v0, v11, [B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-wide/16 v5, 0x0

    :goto_0
    :try_start_2
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eq v4, v13, :cond_1

    int-to-long v11, v4

    add-long/2addr v5, v11

    goto :goto_0

    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_1
    monitor-exit v10

    return-wide v5

    :catchall_0
    move-exception v11

    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw v11
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v1

    :try_start_5
    const-string/jumbo v11, "webkit"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Exception: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-wide v5, v8

    goto :goto_1

    :cond_2
    move-wide v5, v8

    goto :goto_1

    :catchall_1
    move-exception v8

    monitor-exit v10

    throw v8
.end method

.method private static declared-synchronized contentUrlStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 8

    const/4 v3, 0x0

    const-class v4, Landroid/webkitsec/JniUtil;

    monitor-enter v4

    :try_start_0
    const-string v5, "content:"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_1

    const/16 v5, 0x3f

    :try_start_1
    invoke-virtual {p0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v5, -0x1

    if-eq v1, v5, :cond_0

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sget-object v5, Landroid/webkitsec/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    :cond_1
    :goto_0
    monitor-exit v4

    return-object v3

    :catch_0
    move-exception v0

    :try_start_2
    const-string/jumbo v5, "webkit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static deregisterCACEngine()V
    .locals 0

    invoke-static {}, Landroid/webkitsec/JniUtil;->nativeDeregisterCACEngine()V

    return-void
.end method

.method private static declared-synchronized getAutofillQueryUrl()Ljava/lang/String;
    .locals 3

    const-class v1, Landroid/webkitsec/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkitsec/JniUtil;->checkInitialized()V

    sget-object v0, Landroid/webkitsec/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "web_autofill_query_url"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCACEngineState()I
    .locals 1

    invoke-static {}, Landroid/webkitsec/JniUtil;->nativeGetCACEngineState()I

    move-result v0

    return v0
.end method

.method private static declared-synchronized getCacheDirectory()Ljava/lang/String;
    .locals 3

    const-class v2, Landroid/webkitsec/JniUtil;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/webkitsec/JniUtil;->checkInitialized()V

    sget-object v1, Landroid/webkitsec/JniUtil;->sCacheDirectory:Ljava/lang/String;

    if-nez v1, :cond_0

    sget-object v1, Landroid/webkitsec/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, ""

    sput-object v1, Landroid/webkitsec/JniUtil;->sCacheDirectory:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v1, Landroid/webkitsec/JniUtil;->sCacheDirectory:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-object v1

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Landroid/webkitsec/JniUtil;->sCacheDirectory:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method protected static declared-synchronized getContext()Landroid/content/Context;
    .locals 2

    const-class v0, Landroid/webkitsec/JniUtil;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkitsec/JniUtil;->sContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static declared-synchronized getDatabaseDirectory()Ljava/lang/String;
    .locals 3

    const-class v1, Landroid/webkitsec/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkitsec/JniUtil;->checkInitialized()V

    sget-object v0, Landroid/webkitsec/JniUtil;->sDatabaseDirectory:Ljava/lang/String;

    if-nez v0, :cond_0

    sget-object v0, Landroid/webkitsec/JniUtil;->sContext:Landroid/content/Context;

    const-string v2, "dummy"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/JniUtil;->sDatabaseDirectory:Ljava/lang/String;

    :cond_0
    sget-object v0, Landroid/webkitsec/JniUtil;->sDatabaseDirectory:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized getPackageName()Ljava/lang/String;
    .locals 2

    const-class v1, Landroid/webkitsec/JniUtil;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/webkitsec/JniUtil;->checkInitialized()V

    sget-object v0, Landroid/webkitsec/JniUtil;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static native nativeDeregisterCACEngine()V
.end method

.method private static native nativeGetCACEngineState()I
.end method

.method private static native nativeRegisterCACEngine()Z
.end method

.method private static native nativeSetOpenSslContext(Z)Z
.end method

.method public static registerCACEngine()Z
    .locals 1

    invoke-static {}, Landroid/webkitsec/JniUtil;->nativeRegisterCACEngine()Z

    move-result v0

    return v0
.end method

.method protected static declared-synchronized setContext(Landroid/content/Context;)V
    .locals 2

    const-class v1, Landroid/webkitsec/JniUtil;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/webkitsec/JniUtil;->sContext:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/JniUtil;->sContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setOpenSslContext(Z)Z
    .locals 1

    invoke-static {p0}, Landroid/webkitsec/JniUtil;->nativeSetOpenSslContext(Z)Z

    move-result v0

    return v0
.end method
