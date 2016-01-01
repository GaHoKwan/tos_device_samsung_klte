.class public Lcom/samsung/android/glancecard/GlanceCardManager;
.super Ljava/lang/Object;
.source "GlanceCardManager.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/samsung/android/glancecard/IGlanceCardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "GlanceCardManager"

    sput-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/samsung/android/glancecard/GlanceCardManager;->mService:Lcom/samsung/android/glancecard/IGlanceCardManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v1, "GlanceCardManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/glancecard/IGlanceCardManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mService:Lcom/samsung/android/glancecard/IGlanceCardManager;

    if-nez v0, :cond_0

    const-string v0, "glancecardservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mService:Lcom/samsung/android/glancecard/IGlanceCardManager;

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mService:Lcom/samsung/android/glancecard/IGlanceCardManager;

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v1, "getService : Could not get the service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mService:Lcom/samsung/android/glancecard/IGlanceCardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public addAllCard(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/glancecard/GlanceCardInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "addAllCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->addAllCard(Landroid/content/ComponentName;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public addCard(Lcom/samsung/android/glancecard/GlanceCardInfo;)V
    .locals 5

    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "addCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->addCard(Landroid/content/ComponentName;Lcom/samsung/android/glancecard/GlanceCardInfo;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public close()V
    .locals 5

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/glancecard/IGlanceCardManager;->close(Landroid/content/ComponentName;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getAllCardIds()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    sget-object v4, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v5, "getAllCardIds"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/glancecard/IGlanceCardManager;->getAllCardIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    :cond_0
    move-object v4, v1

    :goto_0
    return-object v4

    :cond_1
    sget-object v4, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v5, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public hide()V
    .locals 5

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "hide"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/glancecard/IGlanceCardManager;->hide(Landroid/content/ComponentName;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public removeAllCard()Z
    .locals 5

    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeAll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/glancecard/IGlanceCardManager;->removeAllCard(Landroid/content/ComponentName;)V

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public removeCard(I)Z
    .locals 6

    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeCard : id - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->removeCard(Landroid/content/ComponentName;I)V

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public removeGroup(I)Z
    .locals 6

    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeGroup : id - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->removeGroup(Landroid/content/ComponentName;I)V

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendTrayAction(Landroid/content/ComponentName;IILandroid/os/Bundle;Landroid/content/Intent;)V
    .locals 8

    sget-object v5, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "sendTrayAction"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v5, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendTrayAction Current : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / Action :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " / CardId :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->getListenerAsBinder(Landroid/content/ComponentName;)Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendTrayAction Ibinder is alive  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_0

    :goto_0
    invoke-static {v2}, Lcom/samsung/android/glancecard/IGlanceCardChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/glancecard/IGlanceCardChangedListener;

    move-result-object v3

    invoke-interface {v3, p2, p3, p4, p5}, Lcom/samsung/android/glancecard/IGlanceCardChangedListener;->onReceivedAction(IILandroid/os/Bundle;Landroid/content/Intent;)V

    :cond_0
    :goto_1
    return-void

    :pswitch_0
    sget-object v5, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendTrayAction removeCard : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4, p1, p3}, Lcom/samsung/android/glancecard/IGlanceCardManager;->removeCardFromTray(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    :cond_1
    :try_start_1
    sget-object v5, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "sendTrayAction return binder is not alived"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setGlanceCardChangedListener(Landroid/os/IBinder;)V
    .locals 6

    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setGlanceCardChangedListener"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setGlanceCardChangedListener Ibinder : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setGlanceCardChangedListener Ibinder is alive "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->setListenerAsBinder(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public show()V
    .locals 5

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "show"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/glancecard/IGlanceCardManager;->show(Landroid/content/ComponentName;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCard(Lcom/samsung/android/glancecard/GlanceCardInfo;)Z
    .locals 5

    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "addCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->updateCard(Landroid/content/ComponentName;Lcom/samsung/android/glancecard/GlanceCardInfo;)V

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCards(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/glancecard/GlanceCardInfo;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "addAllCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->updateCards(Landroid/content/ComponentName;Ljava/util/List;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
