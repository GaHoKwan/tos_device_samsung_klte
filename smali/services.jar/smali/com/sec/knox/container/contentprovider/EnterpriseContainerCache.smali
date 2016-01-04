.class public Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;
.super Lcom/sec/knox/container/contentprovider/ContainerDatabase;
.source "EnterpriseContainerCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    }
.end annotation


# static fields
.field public static final CACHE_CONTAINER_STATUS_ERROR:I = -0x1


# instance fields
.field private CONTAINER_ID_ONE:I

.field private CONTAINER_LIMIT_REACHED:I

.field private CONTAINER_MAX_LIMIT:I

.field private CONTAINER_NONE:I

.field private final TAG:Ljava/lang/String;

.field dbHandle:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

.field private mContainerCacheHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;",
            ">;"
        }
    .end annotation
.end field

.field mContainerInProgressData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 160
    invoke-direct {p0}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    .line 29
    const-string v1, "EnterpriseContainerCacheData"

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->TAG:Ljava/lang/String;

    .line 31
    const/4 v1, 0x1

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_ID_ONE:I

    .line 32
    const/4 v1, 0x3

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_MAX_LIMIT:I

    .line 33
    iget v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_MAX_LIMIT:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_LIMIT_REACHED:I

    .line 34
    const/4 v1, 0x0

    iput v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_NONE:I

    .line 36
    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    .line 37
    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->dbHandle:Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    .line 38
    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    .line 162
    :try_start_0
    const-string v1, "EnterpriseContainerCacheData"

    const-string v2, "EnterpriseContainerCache initialise"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iput-object p1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    .line 164
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->initializeContainersOnBoot(Landroid/content/Context;)V

    .line 165
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "EnterpriseContainerCacheData"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getContainers(IZ)Ljava/util/List;
    .locals 8
    .param p1, "status"    # I
    .param p2, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 604
    const-string v5, "EnterpriseContainerCacheData"

    const-string v6, "Container cache getContainers "

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    iget-object v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    .line 606
    const-string v5, "EnterpriseContainerCacheData"

    const-string v6, "Container cache getContainers not null"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v5, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 608
    .local v1, "it":Ljava/util/Iterator;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 609
    .local v2, "listContainer":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 611
    const-string v5, "EnterpriseContainerCacheData"

    const-string v6, "getContainerStatus while loop"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 613
    .local v4, "pairs":Ljava/util/Map$Entry;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "--key--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "----"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 617
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    new-instance v3, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-direct {v3}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;-><init>()V

    .line 619
    .local v3, "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerId()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerId(I)V

    .line 620
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerName(Ljava/lang/String;)V

    .line 621
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getAdmin()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerAdmin(I)V

    .line 622
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getEmail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerEmail(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getLockType()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerLockType(I)V

    .line 624
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerType()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerType(I)V

    .line 626
    const-string v5, "EnterpriseContainerCacheData"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getContainerStatus of: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerStatus()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "--flag--"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    const/4 v5, 0x1

    if-eq p2, v5, :cond_1

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerStatus()I

    move-result v5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 630
    :cond_1
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 637
    .end local v0    # "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "listContainer":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v3    # "obj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v4    # "pairs":Ljava/util/Map$Entry;
    :cond_2
    const-string v5, "EnterpriseContainerCacheData"

    const-string v6, "getActiveContainersreturn NULL"

    invoke-static {v5, v6}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const/4 v2, 0x0

    :cond_3
    return-object v2
.end method

.method private initializeContainersOnBoot(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getPasswordContainerdataFromDB(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    .line 173
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 176
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "initializeContainersOnBoot()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 179
    .local v0, "containerId":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->updateContainerPackageCache(I)Z

    goto :goto_0

    .line 182
    .end local v0    # "containerId":Ljava/lang/Integer;
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_0
    return-void
.end method

.method private updateContainerPackageCache(I)Z
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    .line 185
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 186
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 187
    .local v0, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 188
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, p1}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getContainerPackagesInfo(Landroid/content/Context;I)Ljava/util/HashMap;

    move-result-object v1

    .line 189
    .local v1, "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerPackagesInfo(Ljava/util/HashMap;)V

    .line 190
    const/4 v2, 0x1

    .line 197
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    .end local v1    # "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :goto_0
    return v2

    .line 192
    .restart local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no entry in cache for containerId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 195
    :cond_1
    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "Container hashmap is null...hmmm"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public clearContainerRequestId(I)V
    .locals 5
    .param p1, "requestId"    # I

    .prologue
    .line 126
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 127
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 129
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v3, "EnterpriseContainerCacheData"

    const-string v4, "initializeContainersOnBoot()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x0

    .line 131
    .local v1, "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 133
    .local v0, "containerId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    .line 134
    .restart local v1    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    iget v3, v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mRequestId:I

    if-ne v3, p1, :cond_0

    .line 135
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 139
    .end local v0    # "containerId":Ljava/lang/Integer;
    .end local v1    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method public declared-synchronized containerCanceled(I)Z
    .locals 6
    .param p1, "requestId"    # I

    .prologue
    const/4 v3, 0x1

    .line 88
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 89
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 91
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v4, "EnterpriseContainerCacheData"

    const-string v5, "initializeContainersOnBoot()"

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 95
    .local v0, "containerId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    .line 96
    .restart local v1    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    iget v4, v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mRequestId:I

    if-ne v4, p1, :cond_0

    .line 97
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mIsCanceled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .end local v0    # "containerId":Ljava/lang/Integer;
    .end local v1    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public getContainerFirmwareVersion(I)Ljava/lang/String;
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    .line 359
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 361
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 362
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirmwareVersion: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v1

    .line 368
    :goto_0
    return-object v1

    .line 365
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFailedPasswordAttempts: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainerId(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 727
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getContainerId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getContainerIdForCreation()I
    .locals 5

    .prologue
    .line 754
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->getPasswordContainerdataFromDB(Landroid/content/Context;)Ljava/util/HashMap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    .line 755
    iget v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_ID_ONE:I

    .line 756
    .local v0, "i":I
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 757
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_MAX_LIMIT:I

    if-ne v2, v3, :cond_0

    .line 758
    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "getContainerIdForCreation -Maximum 3 reached"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_LIMIT_REACHED:I

    .line 773
    :goto_0
    return v2

    .line 760
    :cond_0
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 761
    :goto_1
    iget v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_MAX_LIMIT:I

    add-int/lit8 v2, v2, 0x1

    if-ge v0, v2, :cond_1

    .line 762
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 763
    .local v1, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-nez v1, :cond_2

    .line 772
    .end local v1    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_1
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContainerId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 773
    goto :goto_0

    .line 761
    .restart local v1    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 767
    .end local v1    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_3
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    iget v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_NONE:I

    if-ne v2, v3, :cond_1

    .line 768
    const-string v2, "EnterpriseContainerCacheData"

    const-string v3, "get container ID 1"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->CONTAINER_ID_ONE:I

    goto :goto_0
.end method

.method public getContainerIdForRequestId(I)I
    .locals 5
    .param p1, "requestId"    # I

    .prologue
    .line 142
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    .line 143
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 145
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const-string v3, "EnterpriseContainerCacheData"

    const-string v4, "initializeContainersOnBoot()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x0

    .line 147
    .local v1, "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 148
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 149
    .local v0, "containerId":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    .line 150
    .restart local v1    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    iget v3, v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mRequestId:I

    if-ne v3, p1, :cond_0

    .line 151
    iget v3, v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mContainerId:I

    .line 155
    .end local v0    # "containerId":Ljava/lang/Integer;
    .end local v1    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    return v3

    :cond_1
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getContainerLockOnScreenLock(I)Z
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    .line 533
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 535
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 536
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerLockOnScreenLock: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerLockOnScreenLock()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerLockOnScreenLock()Z

    move-result v1

    .line 542
    :goto_0
    return v1

    .line 539
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerLockOnScreenLock: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    .line 289
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 290
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 291
    .local v1, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v1, :cond_0

    .line 292
    new-instance v0, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    invoke-direct {v0}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;-><init>()V

    .line 293
    .local v0, "containerObj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerId(I)V

    .line 294
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerName(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getAdmin()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerAdmin(I)V

    .line 296
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerEmail(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getLockType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerLockType(I)V

    .line 298
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->setContainerType(I)V

    .line 302
    .end local v0    # "containerObj":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v1    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContainerPackages(I)Ljava/util/List;
    .locals 8
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v2, "containerPkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 735
    .local v5, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v5, :cond_0

    .line 736
    invoke-virtual {v5}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v0

    .line 737
    .local v0, "containerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    if-eqz v0, :cond_0

    .line 738
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 739
    .local v3, "containerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    .line 740
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 743
    .local v4, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 744
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 745
    .local v1, "containerPkg":Ljava/lang/String;
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 750
    .end local v0    # "containerMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    .end local v1    # "containerPkg":Ljava/lang/String;
    .end local v3    # "containerSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    return-object v2
.end method

.method public declared-synchronized getContainerPackagesInfoFromCache()Ljava/util/HashMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v0, "allPkgInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    .line 263
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 264
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 267
    .local v1, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 268
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 269
    .local v2, "containerId":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    check-cast v1, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 270
    .restart local v1    # "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 271
    invoke-virtual {v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 260
    .end local v0    # "allPkgInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    .end local v1    # "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    .end local v2    # "containerId":Ljava/lang/Integer;
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 275
    .restart local v0    # "allPkgInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :cond_1
    monitor-exit p0

    return-object v0
.end method

.method public getContainerPackagesInfoFromCache(I)Ljava/util/HashMap;
    .locals 3
    .param p1, "containerId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 279
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 281
    .local v0, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v1

    .line 285
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getContainerStatus(IZ)I
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "fromCache"    # Z

    .prologue
    .line 319
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 320
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 322
    .local v0, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 323
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerStatus()I

    move-result v1

    .line 328
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 325
    .restart local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getContainerVerifyOnlyOnChangeMode(I)Z
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    .line 561
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 563
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 564
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerVerifyOnlyOnChangeMode: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getVerifyPwdOnlyOnChangeMode()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getVerifyPwdOnlyOnChangeMode()Z

    move-result v1

    .line 570
    :goto_0
    return v1

    .line 567
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContainerVerifyOnlyOnChangeMode: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContainers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 595
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainers(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContainers(I)Ljava/util/List;
    .locals 1
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 600
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainers(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getContainers(Lcom/sec/knox/container/constants/CSState;)Ljava/util/List;
    .locals 1
    .param p1, "state"    # Lcom/sec/knox/container/constants/CSState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sec/knox/container/constants/CSState;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/EnterpriseContainerObject;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    invoke-virtual {p1}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->getContainers(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFailedPasswordAttempts(I)I
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    .line 332
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 334
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 335
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFailedPasswordAttempts: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getFailedPasswordAttempts()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getFailedPasswordAttempts()I

    move-result v1

    .line 341
    :goto_0
    return v1

    .line 338
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFailedPasswordAttempts: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFeatureFlagForContainer(I)I
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 70
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    .line 72
    .local v0, "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    if-eqz v0, :cond_0

    .line 73
    iget v1, v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mCreateFlag:I

    .line 76
    .end local v0    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMaximumTimeToLock(I)J
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    .line 389
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 391
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 392
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumTimeToLock: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getMaximumTimeToLock()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getMaximumTimeToLock()J

    move-result-wide v1

    .line 398
    :goto_0
    return-wide v1

    .line 395
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMaximumTimeToLock: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordEnabledContainerLockTimeout(I)J
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    .line 422
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 424
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 425
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordEnabledContainerLockTimeout: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordEnabledContainerLockTimeout()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordEnabledContainerLockTimeout()J

    move-result-wide v1

    .line 431
    :goto_0
    return-wide v1

    .line 428
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordEnabledContainerLockTimeout: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordExpirationDate(I)J
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    .line 479
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 481
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 482
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordExpirationDate: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordExpirationDate()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordExpirationDate()J

    move-result-wide v1

    .line 488
    :goto_0
    return-wide v1

    .line 485
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordExpirationDate: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordExpirationTimeout(I)J
    .locals 5
    .param p1, "containerId"    # I

    .prologue
    .line 506
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 508
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 509
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordExpirationTimeout: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordExpirationTimeout()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordExpirationTimeout()J

    move-result-wide v1

    .line 515
    :goto_0
    return-wide v1

    .line 512
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordExpirationTimeout: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordHasExpired(I)Z
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    .line 452
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 454
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 455
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordHasExpired: getting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordHasExpired()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordHasExpired()Z

    move-result v1

    .line 461
    :goto_0
    return v1

    .line 458
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPasswordHasExpired: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPasswordStateInfoCache(I)Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 244
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 246
    .local v0, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getPasswordStateInfo()Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    move-result-object v1

    .line 250
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRequestIdForContainer(I)I
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 116
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    .line 118
    .local v0, "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    if-eqz v0, :cond_0

    .line 119
    iget v1, v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mRequestId:I

    .line 122
    .end local v0    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public isContainerCanceled(I)Z
    .locals 3
    .param p1, "containerId"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 107
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    .line 108
    .local v0, "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    if-eqz v0, :cond_0

    .line 109
    iget-boolean v1, v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mIsCanceled:Z

    .line 112
    .end local v0    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCreationInProgress()Z
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 778
    const/4 v0, 0x1

    .line 780
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeContainer(I)Z
    .locals 4
    .param p1, "containerId"    # I

    .prologue
    .line 713
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 714
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 715
    .local v0, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 716
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RemoveContiner- containerid success "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const/4 v1, 0x1

    .line 722
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 719
    .restart local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " RemoveContiner- Cannot remove containerid"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setContainerLockOnScreenLock(IZ)Z
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "containerLockOnScreenLock"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 546
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 548
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_1

    .line 549
    const-string v4, "EnterpriseContainerCacheData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContainerLockOnScreenLock: setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerLockOnScreenLock(Z)V

    .line 551
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 552
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "containerLockOnScreenLock"

    if-ne p2, v2, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 553
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v3

    .line 557
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    return v3

    .restart local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    move v2, v3

    .line 552
    goto :goto_0

    .line 555
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_1
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContainerLockOnScreenLock: There is no container with containerId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected setContainerStatus(II)V
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "containerStatus"    # I

    .prologue
    .line 306
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 307
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 309
    .local v0, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerStatus(I)V

    .line 315
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    :goto_0
    return-void

    .line 312
    .restart local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_1
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setContainerVerifyOnlyOnChangeMode(IZ)Z
    .locals 7
    .param p1, "containerId"    # I
    .param p2, "toggleFlag"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 574
    iget-object v4, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 576
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_1

    .line 577
    const-string v4, "EnterpriseContainerCacheData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setContainerVerifyOnlyOnChangeMode: setting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setVerifyPwdOnlyOnChangeMode(Z)V

    .line 579
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 580
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v4, "containerPwdVerfyOnModeChange"

    if-ne p2, v2, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 581
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_ACTIVE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;->updateValuesForContainer(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;I)Z

    move-result v3

    .line 585
    .end local v1    # "cv":Landroid/content/ContentValues;
    :goto_1
    return v3

    .restart local v1    # "cv":Landroid/content/ContentValues;
    :cond_0
    move v2, v3

    .line 580
    goto :goto_0

    .line 583
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_1
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setContainerVerifyOnlyOnChangeMode: There is no container with containerId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setFailedPasswordAttempts(II)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "failedPasswordAttempts"    # I

    .prologue
    .line 345
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 347
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 348
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFailedPasswordAttempts: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFailedPasswordAttempts(I)V

    .line 350
    const/4 v1, 0x1

    .line 355
    :goto_0
    return v1

    .line 352
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFailedPasswordAttempts: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setFeatureFlagForContainer(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "flag"    # I

    .prologue
    .line 60
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    .line 62
    .local v0, "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    if-eqz v0, :cond_0

    .line 63
    iput p2, v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mCreateFlag:I

    .line 64
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .end local v0    # "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    :cond_0
    return-void
.end method

.method public setFirmwareVersion(ILjava/lang/String;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "firmwareVersion"    # Ljava/lang/String;

    .prologue
    .line 372
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 374
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 375
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFirmwareVersion: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setFirmwareVersion(Ljava/lang/String;)V

    .line 377
    const/4 v1, 0x1

    .line 382
    :goto_0
    return v1

    .line 379
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setFailedPasswordAttempts: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setMaximumTimeToLock(IJ)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "maximumTimeToLock"    # J

    .prologue
    .line 405
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 407
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 408
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaximumTimeToLock: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {v0, p2, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setMaximumTimeToLock(J)V

    .line 410
    const/4 v1, 0x1

    .line 415
    :goto_0
    return v1

    .line 412
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMaximumTimeToLock: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordEnabledContainerLockTimeout(IJ)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "maximumTimeToUnmount"    # J

    .prologue
    .line 438
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 440
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 441
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordEnabledContainerLockTimeout: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-virtual {v0, p2, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordEnabledContainerLockTimeout(J)V

    .line 443
    const/4 v1, 0x1

    .line 448
    :goto_0
    return v1

    .line 445
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordEnabledContainerLockTimeout: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordExpirationDate(IJ)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "passwordExpirationDate"    # J

    .prologue
    .line 492
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 494
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 495
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordExpirationDate: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v0, p2, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordExpirationDate(J)V

    .line 497
    const/4 v1, 0x1

    .line 502
    :goto_0
    return v1

    .line 499
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordExpirationDate: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordExpirationTimeout(IJ)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "passwordExpirationTimeout"    # J

    .prologue
    .line 519
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 521
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 522
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordExpirationTimeout: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v0, p2, p3}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordExpirationTimeout(J)V

    .line 524
    const/4 v1, 0x1

    .line 529
    :goto_0
    return v1

    .line 526
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordExpirationTimeout: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPasswordHasExpired(IZ)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "passwordHasExpired"    # Z

    .prologue
    .line 465
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 467
    .local v0, "cacheObj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 468
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordHasExpired: setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordHasExpired(Z)V

    .line 470
    const/4 v1, 0x1

    .line 475
    :goto_0
    return v1

    .line 472
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPasswordHasExpired: There is no container with containerId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setRequestIdForContainer(II)V
    .locals 3
    .param p1, "containerId"    # I
    .param p2, "requestId"    # I

    .prologue
    .line 81
    new-instance v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;

    invoke-direct {v0, p0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;-><init>(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;)V

    .line 82
    .local v0, "data":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;
    iput p2, v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mRequestId:I

    .line 83
    iput p1, v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache$ContainerInprogressData;->mContainerId:I

    .line 84
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerInProgressData:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public updateCacheAddContainerObject(Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;)V
    .locals 2
    .param p1, "object"    # Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_0
    return-void
.end method

.method public updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z
    .locals 5
    .param p1, "info"    # Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    .prologue
    .line 201
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getContainerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 203
    .local v0, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_2

    .line 204
    invoke-virtual {v0}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->getContainerPackagesInfo()Ljava/util/HashMap;

    move-result-object v1

    .line 205
    .local v1, "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    if-nez v1, :cond_0

    .line 206
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 208
    .restart local v1    # "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 209
    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :goto_0
    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerPackagesInfo(Ljava/util/HashMap;)V

    .line 214
    iget-object v2, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getContainerId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const/4 v2, 0x1

    .line 222
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    .end local v1    # "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :goto_1
    return v2

    .line 211
    .restart local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    .restart local v1    # "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :cond_1
    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getAppPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 217
    .end local v1    # "pkgsInfo":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;>;"
    :cond_2
    const-string v2, "EnterpriseContainerCacheData"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There is no entry in cache for containerId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->getContainerId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_2
    const/4 v2, 0x0

    goto :goto_1

    .line 220
    :cond_3
    const-string v2, "EnterpriseContainerCacheData"

    const-string/jumbo v3, "there is error in updating the cache"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public updateContainerType(II)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "containerType"    # I

    .prologue
    .line 696
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 697
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 698
    .local v0, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 699
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setContainerType(I)V

    .line 700
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    const/4 v1, 0x1

    .line 708
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 703
    .restart local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 706
    :cond_1
    const-string v1, "EnterpriseContainerCacheData"

    const-string/jumbo v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateEmailId(ILjava/lang/String;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "emailId"    # Ljava/lang/String;

    .prologue
    .line 660
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 661
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 662
    .local v0, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 663
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setEmail(Ljava/lang/String;)V

    .line 664
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const/4 v1, 0x1

    .line 672
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 667
    .restart local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 670
    :cond_1
    const-string v1, "EnterpriseContainerCacheData"

    const-string/jumbo v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updateLockType(II)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "lockType"    # I

    .prologue
    .line 678
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 679
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 680
    .local v0, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {v0, p2}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setLockType(I)V

    .line 682
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const/4 v1, 0x1

    .line 690
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 685
    .restart local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 688
    :cond_1
    const-string v1, "EnterpriseContainerCacheData"

    const-string/jumbo v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updatePasswordStateInfoCache(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)Z
    .locals 4
    .param p1, "stateinfo"    # Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getContainerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 228
    .local v0, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordStateInfo(Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;)V

    .line 230
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getContainerId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const/4 v1, 0x1

    .line 239
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 233
    .restart local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/knox/container/contentprovider/ContainerPasswordStateInfo;->getContainerId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 236
    :cond_1
    const-string v1, "EnterpriseContainerCacheData"

    const-string/jumbo v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public updatePasswordStatus(ILjava/lang/Integer;)Z
    .locals 4
    .param p1, "containerId"    # I
    .param p2, "passwordStatus"    # Ljava/lang/Integer;

    .prologue
    .line 642
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 643
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;

    .line 644
    .local v0, "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    if-eqz v0, :cond_0

    .line 645
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;->setPasswordStatus(I)V

    .line 646
    iget-object v1, p0, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->mContainerCacheHashMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 647
    const/4 v1, 0x1

    .line 654
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_0
    return v1

    .line 649
    .restart local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :cond_0
    const-string v1, "EnterpriseContainerCacheData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There is no entry in cache for containerId"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .end local v0    # "obj":Lcom/sec/knox/container/contentprovider/EnterpriseContainerCacheObject;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 652
    :cond_1
    const-string v1, "EnterpriseContainerCacheData"

    const-string/jumbo v2, "there is error in updating the cache"

    invoke-static {v1, v2}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
