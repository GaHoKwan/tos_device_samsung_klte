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

    .prologue
    const/4 v1, 0x0

    .line 35
    const-string v0, "GlanceCardManager"

    sput-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    .line 37
    sput-object v1, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    .line 39
    sput-object v1, Lcom/samsung/android/glancecard/GlanceCardManager;->mService:Lcom/samsung/android/glancecard/IGlanceCardManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v1, "GlanceCardManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sput-object p1, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    .line 46
    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/glancecard/IGlanceCardManager;
    .locals 2

    .prologue
    .line 49
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mService:Lcom/samsung/android/glancecard/IGlanceCardManager;

    if-nez v0, :cond_0

    .line 50
    const-string v0, "glancecardservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/glancecard/IGlanceCardManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mService:Lcom/samsung/android/glancecard/IGlanceCardManager;

    .line 52
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mService:Lcom/samsung/android/glancecard/IGlanceCardManager;

    if-nez v0, :cond_0

    .line 53
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v1, "getService : Could not get the service!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mService:Lcom/samsung/android/glancecard/IGlanceCardManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 49
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

    .prologue
    .line 62
    .local p1, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/glancecard/GlanceCardInfo;>;"
    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "addAllCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    .line 65
    .local v2, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v2, :cond_0

    .line 66
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 67
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 68
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->addAllCard(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 79
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 74
    .end local v2    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public addCard(Lcom/samsung/android/glancecard/GlanceCardInfo;)V
    .locals 5
    .param p1, "card"    # Lcom/samsung/android/glancecard/GlanceCardInfo;

    .prologue
    .line 83
    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "addCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    .line 86
    .local v2, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v2, :cond_0

    .line 87
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 88
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 89
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->addCard(Landroid/content/ComponentName;Lcom/samsung/android/glancecard/GlanceCardInfo;)V

    .line 100
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 95
    .end local v2    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v1

    .line 97
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public close()V
    .locals 5

    .prologue
    .line 351
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "close"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    .line 355
    .local v2, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v2, :cond_0

    .line 356
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 357
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 358
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/glancecard/IGlanceCardManager;->close(Landroid/content/ComponentName;)V

    .line 368
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 364
    .end local v2    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v1

    .line 366
    .local v1, "ex":Landroid/os/RemoteException;
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

    .prologue
    .line 287
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 290
    .local v1, "cardIdList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :try_start_0
    sget-object v4, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v5, "getAllCardIds"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v3

    .line 292
    .local v3, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v3, :cond_0

    .line 293
    sget-object v4, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_1

    .line 294
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 295
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/samsung/android/glancecard/IGlanceCardManager;->getAllCardIds(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v1

    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    move-object v4, v1

    .line 307
    :goto_0
    return-object v4

    .line 297
    :cond_1
    sget-object v4, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v5, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    const/4 v4, 0x0

    goto :goto_0

    .line 302
    .end local v3    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v2

    .line 304
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public hide()V
    .locals 5

    .prologue
    .line 331
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "hide"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    .line 335
    .local v2, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v2, :cond_0

    .line 336
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 337
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 338
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/glancecard/IGlanceCardManager;->hide(Landroid/content/ComponentName;)V

    .line 348
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 344
    .end local v2    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v1

    .line 346
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public removeAllCard()Z
    .locals 5

    .prologue
    .line 146
    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "removeAll"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    .line 148
    .local v2, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v2, :cond_0

    .line 149
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 150
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 151
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/glancecard/IGlanceCardManager;->removeAllCard(Landroid/content/ComponentName;)V

    .line 163
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 153
    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    const/4 v3, 0x0

    goto :goto_0

    .line 158
    .end local v2    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v1

    .line 160
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public removeCard(I)Z
    .locals 6
    .param p1, "cardId"    # I

    .prologue
    .line 168
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

    .line 170
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    .line 171
    .local v2, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v2, :cond_0

    .line 172
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 173
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 174
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->removeCard(Landroid/content/ComponentName;I)V

    .line 186
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 176
    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    const/4 v3, 0x0

    goto :goto_0

    .line 181
    .end local v2    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v1

    .line 183
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public removeGroup(I)Z
    .locals 6
    .param p1, "groupId"    # I

    .prologue
    .line 191
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

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    .line 194
    .local v2, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v2, :cond_0

    .line 195
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 196
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 197
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->removeGroup(Landroid/content/ComponentName;I)V

    .line 209
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 199
    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    const/4 v3, 0x0

    goto :goto_0

    .line 204
    .end local v2    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v1

    .line 206
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public sendTrayAction(Landroid/content/ComponentName;IILandroid/os/Bundle;Landroid/content/Intent;)V
    .locals 8
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "actionType"    # I
    .param p3, "cardId"    # I
    .param p4, "bundle"    # Landroid/os/Bundle;
    .param p5, "intent"    # Landroid/content/Intent;

    .prologue
    .line 238
    sget-object v5, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "sendTrayAction"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v4

    .line 242
    .local v4, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v4, :cond_0

    .line 243
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

    .line 246
    invoke-interface {v4, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->getListenerAsBinder(Landroid/content/ComponentName;)Landroid/os/IBinder;

    move-result-object v2

    .line 248
    .local v2, "iBinder":Landroid/os/IBinder;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 249
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

    .line 251
    packed-switch p2, :pswitch_data_0

    .line 268
    :goto_0
    invoke-static {v2}, Lcom/samsung/android/glancecard/IGlanceCardChangedListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/glancecard/IGlanceCardChangedListener;

    move-result-object v3

    .line 271
    .local v3, "listener":Lcom/samsung/android/glancecard/IGlanceCardChangedListener;
    invoke-interface {v3, p2, p3, p4, p5}, Lcom/samsung/android/glancecard/IGlanceCardChangedListener;->onReceivedAction(IILandroid/os/Bundle;Landroid/content/Intent;)V

    .line 284
    .end local v2    # "iBinder":Landroid/os/IBinder;
    .end local v3    # "listener":Lcom/samsung/android/glancecard/IGlanceCardChangedListener;
    .end local v4    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :cond_0
    :goto_1
    return-void

    .line 253
    .restart local v2    # "iBinder":Landroid/os/IBinder;
    .restart local v4    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
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

    .line 254
    invoke-interface {v4, p1, p3}, Lcom/samsung/android/glancecard/IGlanceCardManager;->removeCardFromTray(Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 278
    .end local v2    # "iBinder":Landroid/os/IBinder;
    .end local v4    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v1

    .line 280
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 274
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "iBinder":Landroid/os/IBinder;
    .restart local v4    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :cond_1
    :try_start_1
    sget-object v5, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "sendTrayAction return binder is not alived"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 281
    .end local v2    # "iBinder":Landroid/os/IBinder;
    .end local v4    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_1
    move-exception v0

    .line 282
    .local v0, "en":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 251
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setGlanceCardChangedListener(Landroid/os/IBinder;)V
    .locals 6
    .param p1, "iBinder"    # Landroid/os/IBinder;

    .prologue
    .line 214
    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setGlanceCardChangedListener"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    .line 217
    .local v2, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v2, :cond_0

    .line 218
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 219
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 220
    .local v0, "activity":Landroid/app/Activity;
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

    .line 222
    invoke-interface {p1}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "setGlanceCardChangedListener Ibinder is alive "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->setListenerAsBinder(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 235
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 227
    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    .end local v2    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v1

    .line 233
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public show()V
    .locals 5

    .prologue
    .line 311
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "show"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    .line 315
    .local v2, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v2, :cond_0

    .line 316
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 317
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 318
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/samsung/android/glancecard/IGlanceCardManager;->show(Landroid/content/ComponentName;)V

    .line 328
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 320
    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 324
    .end local v2    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v1

    .line 326
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateCard(Lcom/samsung/android/glancecard/GlanceCardInfo;)Z
    .locals 5
    .param p1, "card"    # Lcom/samsung/android/glancecard/GlanceCardInfo;

    .prologue
    .line 124
    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "addCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    .line 127
    .local v2, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v2, :cond_0

    .line 128
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 129
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 130
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->updateCard(Landroid/content/ComponentName;Lcom/samsung/android/glancecard/GlanceCardInfo;)V

    .line 141
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    .line 132
    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    const/4 v3, 0x0

    goto :goto_0

    .line 137
    .end local v2    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "ex":Landroid/os/RemoteException;
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

    .prologue
    .line 104
    .local p1, "cards":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/glancecard/GlanceCardInfo;>;"
    :try_start_0
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "addAllCard"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/samsung/android/glancecard/GlanceCardManager;->getService()Lcom/samsung/android/glancecard/IGlanceCardManager;

    move-result-object v2

    .line 107
    .local v2, "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    if-eqz v2, :cond_0

    .line 108
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    instance-of v3, v3, Landroid/app/Activity;

    if-eqz v3, :cond_1

    .line 109
    sget-object v0, Lcom/samsung/android/glancecard/GlanceCardManager;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 110
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/samsung/android/glancecard/IGlanceCardManager;->updateCards(Landroid/content/ComponentName;Ljava/util/List;)V

    .line 120
    .end local v0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    sget-object v3, Lcom/samsung/android/glancecard/GlanceCardManager;->TAG:Ljava/lang/String;

    const-string v4, "The context should be instance of Activity! Did you use application context?"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v2    # "svc":Lcom/samsung/android/glancecard/IGlanceCardManager;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
