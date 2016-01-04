.class public Lcom/absolute/android/persistence/ABTPersistenceManager;
.super Ljava/lang/Object;
.source "ABTPersistenceManager.java"


# static fields
.field public static final ABT_PERSISTENCE_SERVICE:Ljava/lang/String; = "ABTPersistenceService"

.field private static final LOG_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "Absolute"

.field public static final OP_INSTALL:I = 0x1

.field public static final OP_UNINSTALL:I = 0x2

.field public static final PERSISTENCE_SERVICE_LOG:Ljava/lang/String; = "abt-persistence-service"

.field public static final STATE_DISABLED:I = 0x2

.field public static final STATE_ENABLED:I = 0x1

.field public static final STATE_PERMANENTLY_DISABLED:I = 0x3

.field private static s_connection:Landroid/content/ServiceConnection;

.field private static s_context:Landroid/content/Context;

.field private static s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;


# instance fields
.field private m_service:Lcom/absolute/android/persistence/IABTPersistence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 796
    new-instance v0, Lcom/absolute/android/persistence/ABTPersistenceManager$1;

    invoke-direct {v0}, Lcom/absolute/android/persistence/ABTPersistenceManager$1;-><init>()V

    sput-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public constructor <init>(Lcom/absolute/android/persistence/IABTPersistence;)V
    .locals 2
    .param p1, "service"    # Lcom/absolute/android/persistence/IABTPersistence;

    .prologue
    .line 772
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 773
    if-nez p1, :cond_0

    .line 774
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ABTPersistenceManager() cannot be constructed with null service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 777
    :cond_0
    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->setService(Lcom/absolute/android/persistence/IABTPersistence;)V

    .line 778
    return-void
.end method

.method static synthetic access$000()Landroid/content/ServiceConnection;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100()Lcom/absolute/android/persistence/ABTPersistenceManager;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/absolute/android/persistence/ABTPersistenceManager;)Lcom/absolute/android/persistence/ABTPersistenceManager;
    .locals 0
    .param p0, "x0"    # Lcom/absolute/android/persistence/ABTPersistenceManager;

    .prologue
    .line 42
    sput-object p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/absolute/android/persistence/ABTPersistenceManager;Lcom/absolute/android/persistence/IABTPersistence;)V
    .locals 0
    .param p0, "x0"    # Lcom/absolute/android/persistence/ABTPersistenceManager;
    .param p1, "x1"    # Lcom/absolute/android/persistence/IABTPersistence;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/absolute/android/persistence/ABTPersistenceManager;->setService(Lcom/absolute/android/persistence/IABTPersistence;)V

    return-void
.end method

.method public static getPersistenceService(Landroid/content/Context;)Lcom/absolute/android/persistence/ABTPersistenceManager;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 105
    sget-object v2, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    monitor-enter v2

    .line 106
    :try_start_0
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    .line 114
    :try_start_1
    const-string v1, "ABTPersistenceService"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/absolute/android/persistence/ABTPersistenceManager;

    sput-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    :goto_0
    :try_start_2
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    if-nez v1, :cond_0

    .line 124
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 125
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.absolute.android.persistenceapp"

    const-string v3, "com.absolute.android.persistenceapp.ABTPersistenceSystemApp"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 129
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    sput-object p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_context:Landroid/content/Context;

    .line 132
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 134
    :cond_1
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_persistenceManager:Lcom/absolute/android/persistence/ABTPersistenceManager;

    monitor-exit v2

    return-object v1

    .line 135
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 115
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setService(Lcom/absolute/android/persistence/IABTPersistence;)V
    .locals 0
    .param p1, "service"    # Lcom/absolute/android/persistence/IABTPersistence;

    .prologue
    .line 781
    iput-object p1, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    .line 782
    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 586
    packed-switch p0, :pswitch_data_0

    .line 597
    const-string v0, "UNKNOWN"

    .line 600
    .local v0, "stateStr":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 588
    .end local v0    # "stateStr":Ljava/lang/String;
    :pswitch_0
    const-string v0, "ENABLED"

    .line 589
    .restart local v0    # "stateStr":Ljava/lang/String;
    goto :goto_0

    .line 591
    .end local v0    # "stateStr":Ljava/lang/String;
    :pswitch_1
    const-string v0, "DISABLED"

    .line 592
    .restart local v0    # "stateStr":Ljava/lang/String;
    goto :goto_0

    .line 594
    .end local v0    # "stateStr":Ljava/lang/String;
    :pswitch_2
    const-string v0, "PERMANENTLY DISABLED"

    .line 595
    .restart local v0    # "stateStr":Ljava/lang/String;
    goto :goto_0

    .line 586
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public downloadApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "version"    # I
    .param p3, "downloadUrl"    # Ljava/lang/String;
    .param p4, "downloadIpAddress"    # Ljava/lang/String;
    .param p5, "digitalSignature"    # Ljava/lang/String;
    .param p6, "downloadReceiver"    # Lcom/absolute/android/persistence/IABTDownloadReceiver;
    .param p7, "progressIntervalKb"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 765
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/absolute/android/persistence/IABTPersistence;->downloadApk(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTDownloadReceiver;I)V

    .line 767
    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 785
    sget-object v1, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    monitor-enter v1

    .line 789
    :try_start_0
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_context:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 790
    sget-object v0, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_context:Landroid/content/Context;

    sget-object v2, Lcom/absolute/android/persistence/ABTPersistenceManager;->s_connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 792
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 793
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 794
    return-void

    .line 792
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getAllApplicationProfiles()[Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    return-object v0
.end method

.method public getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V
    .locals 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "accessKey"    # Ljava/lang/String;
    .param p3, "updateUrl"    # Ljava/lang/String;
    .param p4, "updateIpAddress"    # Ljava/lang/String;
    .param p5, "appInfoReceiver"    # Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/absolute/android/persistence/IABTPersistence;->getAppInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/absolute/android/persistence/IABTGetAppInfoReceiver;)V

    .line 714
    return-void
.end method

.method public getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->getApplicationProfile(Ljava/lang/String;)Lcom/absolute/android/persistence/AppProfile;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 624
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDiagnostics()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 669
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getDiagnostics()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;
    .locals 1
    .param p1, "logName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->getLog(Ljava/lang/String;)Lcom/absolute/android/persistence/IABTPersistenceLog;

    move-result-object v0

    return-object v0
.end method

.method public getPersistedAppCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 428
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getPersistedAppCount()I

    move-result v0

    return v0
.end method

.method public getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "append"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/absolute/android/persistence/IABTPersistence;->getPersistedFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/absolute/android/persistence/IABTPersistedFile;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getState()I

    move-result v0

    return v0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->getVersion()I

    move-result v0

    return v0
.end method

.method public install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 1
    .param p1, "appProfile"    # Lcom/absolute/android/persistence/AppProfile;
    .param p2, "apkPath"    # Ljava/lang/String;
    .param p3, "resultReceiver"    # Lcom/absolute/android/persistence/IABTResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 260
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/absolute/android/persistence/IABTPersistence;->install(Lcom/absolute/android/persistence/AppProfile;Ljava/lang/String;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 261
    return-void
.end method

.method public invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 1
    .param p1, "methodSpec"    # Lcom/absolute/android/persistence/MethodSpec;
    .param p2, "resultReceiver"    # Lcom/absolute/android/persistence/IABTResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 467
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2}, Lcom/absolute/android/persistence/IABTPersistence;->invokeMethodAsSystem(Lcom/absolute/android/persistence/MethodSpec;Lcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 468
    return-void
.end method

.method public refreshDeviceId()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 635
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->refreshDeviceId()V

    .line 636
    return-void
.end method

.method public registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pingCallback"    # Lcom/absolute/android/persistence/IABTPing;
    .param p3, "pingIntervalSecs"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/absolute/android/persistence/IABTPersistence;->registerPing(Ljava/lang/String;Lcom/absolute/android/persistence/IABTPing;I)V

    .line 547
    return-void
.end method

.method public setAllPersistence(Z)V
    .locals 1
    .param p1, "onState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 414
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->setAllPersistence(Z)V

    .line 415
    return-void
.end method

.method public setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V
    .locals 1
    .param p1, "appProfile"    # Lcom/absolute/android/persistence/AppProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->setApplicationProfile(Lcom/absolute/android/persistence/AppProfile;)V

    .line 364
    return-void
.end method

.method public setPersistence(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "onState"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2}, Lcom/absolute/android/persistence/IABTPersistence;->setPersistence(Ljava/lang/String;Z)V

    .line 393
    return-void
.end method

.method public setState(I)V
    .locals 1
    .param p1, "newState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->setState(I)V

    .line 168
    return-void
.end method

.method public testFirmwareUpdate()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 652
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0}, Lcom/absolute/android/persistence/IABTPersistence;->testFirmwareUpdate()V

    .line 653
    return-void
.end method

.method public uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deletePersistedFiles"    # Z
    .param p3, "resultReceiver"    # Lcom/absolute/android/persistence/IABTResultReceiver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1, p2, p3}, Lcom/absolute/android/persistence/IABTPersistence;->uninstall(Ljava/lang/String;ZLcom/absolute/android/persistence/IABTResultReceiver;)V

    .line 309
    return-void
.end method

.method public unregisterPing(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 571
    iget-object v0, p0, Lcom/absolute/android/persistence/ABTPersistenceManager;->m_service:Lcom/absolute/android/persistence/IABTPersistence;

    invoke-interface {v0, p1}, Lcom/absolute/android/persistence/IABTPersistence;->unregisterPing(Ljava/lang/String;)V

    .line 572
    return-void
.end method
