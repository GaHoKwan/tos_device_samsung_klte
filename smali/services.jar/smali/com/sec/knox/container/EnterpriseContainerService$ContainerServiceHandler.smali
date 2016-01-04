.class Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
.super Landroid/os/Handler;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerServiceHandler"
.end annotation


# static fields
.field public static final ENTERPRISE_CONTAINER_ALL_PACKAGES_INSTALLED:I = 0x2

.field public static final ENTERPRISE_CONTAINER_ALL_PACKAGES_UNINSTALLED:I = 0x4

.field public static final ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION:I = 0x6

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK:I = 0x9

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_CONTAINEROBJ:Ljava/lang/String; = "containerObj"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_ECRYPTFS_KEY:Ljava/lang/String; = "ecryptfskey"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_ERROR:Ljava/lang/String; = "errorCode"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_PASSWORD:Ljava/lang/String; = "password"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_PRIMARY:Ljava/lang/String; = "primary"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_RID:Ljava/lang/String; = "requestId"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_STATE:Ljava/lang/String; = "state"

.field public static final ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK_DATA_STATUS:Ljava/lang/String; = "status"

.field public static final ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER:I = 0x5

.field public static final ENTERPRISE_CONTAINER_ERROR_CODE:Ljava/lang/String; = "errCode"

.field public static final ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT:I = 0xe

.field public static final ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE:I = 0x7

.field public static final ENTERPRISE_CONTAINER_HANDLE_PASSWORD_TIMEOUT:I = 0x8

.field public static final ENTERPRISE_CONTAINER_LOCK_TIMEOUT:I = 0xf

.field public static final ENTERPRISE_CONTAINER_PACKAGE_INSTALLED:I = 0x1

.field public static final ENTERPRISE_CONTAINER_PACKAGE_UNINSTALLED:I = 0x3

.field public static final ENTERPRISE_CONTAINER_REMOUNT_FAILURE:I = 0xb

.field public static final ENTERPRISE_CONTAINER_REMOUNT_FAILURE_DATA_RID:Ljava/lang/String; = "rid"

.field public static final ENTERPRISE_CONTAINER_REMOUNT_SUCCESS:I = 0xd

.field public static final ENTERPRISE_CONTAINER_REMOUNT_SUCCESS_DATA_RID:Ljava/lang/String; = "rid"

.field public static final ENTERPRISE_CONTAINER_SETUP_FAILURE:I = 0xa

.field public static final ENTERPRISE_CONTAINER_SETUP_SUCCESS:I = 0xc

.field public static final ENTERPRISE_CONTAINER_UNMOUNT_TIMEOUT:I = 0x10


# instance fields
.field private mParent:Lcom/sec/knox/container/EnterpriseContainerService;

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Looper;Lcom/sec/knox/container/EnterpriseContainerService;)V
    .locals 1
    .param p2, "loop"    # Landroid/os/Looper;
    .param p3, "service"    # Lcom/sec/knox/container/EnterpriseContainerService;

    .prologue
    .line 1493
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 1494
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 1495
    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    .line 1496
    return-void
.end method


# virtual methods
.method public addContainer(IZIILcom/sec/knox/container/EnterpriseContainerObjectParam;Ljava/lang/String;)Z
    .locals 19
    .param p1, "state"    # I
    .param p2, "status"    # Z
    .param p3, "errorCode"    # I
    .param p4, "containerId"    # I
    .param p5, "containerObj"    # Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .param p6, "password"    # Ljava/lang/String;

    .prologue
    .line 2301
    const/16 v18, 0x0

    .line 2302
    .local v18, "returnCode":Z
    if-nez p1, :cond_2

    .line 2304
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2306
    .local v11, "apkList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p5

    move/from16 v1, p4

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->addOrUpdateContainerToDB(Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z
    invoke-static {v2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5600(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2308
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v3, Lcom/sec/knox/container/constants/CSState;->CSSTATE_CREATION_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    move-object/from16 v0, p5

    move/from16 v1, p4

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->addContainerToCache(Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V
    invoke-static {v2, v0, v1, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5700(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerObjectParam;II)V

    .line 2310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v2

    move/from16 v0, p4

    move-object/from16 v1, p6

    invoke-virtual {v2, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->storeUserCredentials(ILjava/lang/String;)V

    .line 2312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, p4

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->removeUntrustedContainerApps(I)V
    invoke-static {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 2316
    :try_start_0
    new-instance v14, Ljava/io/File;

    const-string v2, "/system/containers"

    invoke-direct {v14, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2317
    .local v14, "apkFolder":Ljava/io/File;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 2320
    .local v15, "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 2321
    invoke-interface {v11, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2328
    .end local v14    # "apkFolder":Ljava/io/File;
    .end local v15    # "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual/range {p5 .. p5}, Lcom/sec/knox/container/EnterpriseContainerObjectParam;->getApkInstallPath()Ljava/lang/String;

    move-result-object v17

    .line 2329
    .local v17, "installApkPath":Ljava/lang/String;
    if-eqz v17, :cond_1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2330
    new-instance v14, Ljava/io/File;

    move-object/from16 v0, v17

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2331
    .restart local v14    # "apkFolder":Ljava/io/File;
    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2332
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sec_container_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v14, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->getApksFromFolder(Ljava/io/File;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 2334
    .restart local v15    # "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_1

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 2335
    invoke-interface {v11, v15}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2343
    .end local v14    # "apkFolder":Ljava/io/File;
    .end local v15    # "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v17    # "installApkPath":Ljava/lang/String;
    :cond_1
    :goto_1
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2344
    .local v6, "data":Landroid/os/Bundle;
    const-string v2, "apksCount"

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2346
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x1

    const/16 v5, 0x3f3

    const/4 v7, 0x0

    move/from16 v4, p4

    invoke-virtual/range {v2 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 2349
    new-instance v7, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v10

    const/4 v12, 0x1

    const/4 v13, 0x1

    move/from16 v9, p4

    invoke-direct/range {v7 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;ZI)V

    .line 2351
    .local v7, "installer":Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;
    invoke-virtual {v7}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->start()V

    .line 2352
    const/16 v18, 0x1

    .line 2364
    .end local v6    # "data":Landroid/os/Bundle;
    .end local v7    # "installer":Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;
    .end local v11    # "apkList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    :goto_2
    return v18

    .line 2324
    .restart local v11    # "apkList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v16

    .line 2325
    .local v16, "ex":Ljava/lang/Exception;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContainer() Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2339
    .end local v16    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v16

    .line 2340
    .restart local v16    # "ex":Ljava/lang/Exception;
    const-string v2, "EnterpriseContainerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addContainer() Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2359
    .end local v16    # "ex":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, p4

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v2, v0, v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    .line 2361
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Failed after mount cannot add to DB"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 72
    .param p1, "param"    # Landroid/os/Message;

    .prologue
    .line 1561
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Message received "

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->toString(I)V

    .line 1566
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1567
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Cache object is null returning from handleMessage()"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2257
    :cond_0
    :goto_0
    return-void

    .line 1570
    :cond_1
    const/16 v36, 0x0

    .line 1571
    .local v36, "cid":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/os/Bundle;

    .line 1572
    .local v27, "bundle":Landroid/os/Bundle;
    const/16 v63, 0x0

    .line 1573
    .local v63, "pkgName":Ljava/lang/String;
    const/16 v70, 0x0

    .line 1574
    .local v70, "uid":I
    const/16 v53, 0x0

    .line 1575
    .local v53, "installSource":I
    const/16 v61, 0x0

    .line 1577
    .local v61, "origSignatures":[Ljava/lang/String;
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_2
    :pswitch_0
    move/from16 v25, v36

    .end local v36    # "cid":I
    .local v25, "cid":I
    goto :goto_0

    .line 1579
    .end local v25    # "cid":I
    .restart local v36    # "cid":I
    :pswitch_1
    const-string v3, "EnterpriseContainerService"

    const-string v4, "ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE called. Starting everything from here."

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1583
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/knox/container/manager/StateManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$902(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)Lcom/sec/knox/container/manager/StateManager;

    .line 1584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->registerClientCallback(Lcom/sec/knox/container/manager/IStateManagerCallback;)I

    .line 1585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    invoke-direct {v4}, Lcom/sec/knox/container/contentprovider/ContainerDatabase;-><init>()V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDatabase:Lcom/sec/knox/container/contentprovider/ContainerDatabase;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2202(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/contentprovider/ContainerDatabase;)Lcom/sec/knox/container/contentprovider/ContainerDatabase;

    .line 1586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService$WakeLockHandler;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLockHandler:Landroid/os/Handler;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$102(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/Handler;)Landroid/os/Handler;

    .line 1587
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    const/4 v8, 0x1

    sget-object v9, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_INSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntArrayValues()[I

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/server/container/util/StringUtil;->getRegisteringKey(I[I)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;-><init>([Ljava/lang/String;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mCallbackMgr:Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2302(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;)Lcom/sec/knox/container/manager/EnterpriseContainerCallbackList;

    .line 1593
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mCreateContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 1594
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRemoveContainerCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2502(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 1595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mChangeContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2602(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 1596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2702(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    .line 1597
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mParent:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v11}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v11

    invoke-direct {v4, v8, v9, v11}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;-><init>(Landroid/content/Context;Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/manager/StateManager;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2802(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerPasswordService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    .line 1599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->initializeDPMActiveAdminList()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2900(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1600
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->registerReciever()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Landroid/dirEncryption/DirEncryptionManager;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v8

    invoke-direct {v4, v8}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3102(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/dirEncryption/DirEncryptionManager;)Landroid/dirEncryption/DirEncryptionManager;

    .line 1602
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    const-string v8, "power"

    invoke-virtual {v3, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4, v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3202(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/os/PowerManager;)Landroid/os/PowerManager;

    .line 1603
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3200(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/os/PowerManager;

    move-result-object v3

    const/4 v4, 0x1

    const-string v8, "EnterpriseContainerService"

    invoke-virtual {v3, v4, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3302(Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    .line 1604
    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3300()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1605
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->bindRedexService()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$300(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1606
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getVpnService()Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3500(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    move-result-object v4

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVpnService:Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IEnterprisePremiumVpnPolicy;

    .line 1607
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getGenericVpnService()Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    move-result-object v4

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mGenericVpnService:Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3602(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;)Lcom/sec/enterprise/knox/vpn/IEnterpriseVpnPolicy;

    .line 1608
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1400(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1609
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    new-instance v4, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;)V

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->mRIdGenerator:Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1402(Lcom/sec/knox/container/EnterpriseContainerService;Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;)Lcom/sec/knox/container/EnterpriseContainerService$RequestIdGenerator;

    .line 1611
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->initialiseContainer()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3800(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/knox/container/manager/StateManager;->getContainers()Ljava/util/List;

    move-result-object v56

    .line 1615
    .local v56, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "List of objects:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1616
    if-eqz v56, :cond_4

    .line 1617
    const-string v3, "EnterpriseContainerService"

    const-string v4, "List of objects not null"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1618
    invoke-interface/range {v56 .. v56}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v51

    .local v51, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 1619
    .local v59, "object":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    const-string v3, "EnterpriseContainerService"

    const-string v4, "At least one container is there"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual/range {v59 .. v59}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v8

    invoke-virtual/range {v59 .. v59}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v8

    sget-object v9, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_REBOOT:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v4, v8, v9}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    goto :goto_1

    .line 1625
    .end local v51    # "i$":Ljava/util/Iterator;
    .end local v59    # "object":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :cond_4
    const-string v3, "EnterpriseContainerService"

    const-string v4, "List is null, nothing to set"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1630
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x1

    # setter for: Lcom/sec/knox/container/EnterpriseContainerService;->isServiceInitialized:Z
    invoke-static {v3, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3902(Lcom/sec/knox/container/EnterpriseContainerService;Z)Z

    .line 1633
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->getContainers(Lcom/sec/knox/container/constants/CSState;)Ljava/util/List;

    move-result-object v65

    .line 1636
    .local v65, "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "List of objects:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v65

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    if-eqz v65, :cond_7

    .line 1638
    const-string v3, "EnterpriseContainerService"

    const-string v4, "removeList of objects not null"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    invoke-interface/range {v65 .. v65}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v51

    .restart local v51    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    .line 1640
    .restart local v59    # "object":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual/range {v59 .. v59}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerId()I

    move-result v4

    const/4 v8, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto :goto_2

    .end local v59    # "object":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    :cond_6
    move/from16 v25, v36

    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1643
    .end local v25    # "cid":I
    .end local v51    # "i$":Ljava/util/Iterator;
    .restart local v36    # "cid":I
    :cond_7
    const-string v3, "EnterpriseContainerService"

    const-string v4, "createInprogresslist is null, nothing to set"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v25, v36

    .line 1645
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1648
    .end local v25    # "cid":I
    .end local v56    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .end local v65    # "removeList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/enterprise/knox/EnterpriseContainerObject;>;"
    .restart local v36    # "cid":I
    :pswitch_2
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1649
    .local v10, "containerId":I
    const-string v3, "rid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1650
    .local v5, "requestId":I
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container remount successfully: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    .line 1659
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1661
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_VERIFY_PWD_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v69

    .line 1664
    .local v69, "transitState":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v69 .. v69}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-eq v3, v4, :cond_a

    .line 1665
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container remount successfully: New state is "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4100(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    .line 1672
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1673
    .local v7, "data":Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1674
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x4

    const/16 v6, 0x3f6

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1678
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v69    # "transitState":Lcom/sec/knox/container/constants/CSState;
    :cond_8
    new-instance v66, Landroid/content/Intent;

    const-string v3, "enterprise.container.remount.success"

    move-object/from16 v0, v66

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1679
    .local v66, "success":Landroid/content/Intent;
    const-string v3, "containerid"

    move-object/from16 v0, v66

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1680
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1682
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ACTIVE:Lcom/sec/knox/container/constants/CSState;

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_VERIFY_PWD:Lcom/sec/knox/container/constants/CSState;

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_ADMIN_PWD_RESET:Lcom/sec/knox/container/constants/CSState;

    if-eq v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_RESET_PWD:Lcom/sec/knox/container/constants/CSState;

    if-ne v3, v4, :cond_2

    .line 1686
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerSetupSuccessMessage(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4200(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v25, v36

    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1668
    .end local v25    # "cid":I
    .end local v66    # "success":Landroid/content/Intent;
    .restart local v36    # "cid":I
    .restart local v69    # "transitState":Lcom/sec/knox/container/constants/CSState;
    :cond_a
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Container remount successfully: transitState failed. State still invalid"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1691
    .end local v5    # "requestId":I
    .end local v10    # "containerId":I
    .end local v69    # "transitState":Lcom/sec/knox/container/constants/CSState;
    :pswitch_3
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1693
    .restart local v10    # "containerId":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1696
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    .line 1697
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V
    invoke-static {v3, v4, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2000(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    .line 1701
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->startContainerEventsRelayManager()V
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4400(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 1703
    new-instance v42, Landroid/content/Intent;

    const-string v3, "enterprise.container.setup.success"

    move-object/from16 v0, v42

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1704
    .local v42, "containerSuccess":Landroid/content/Intent;
    const-string v3, "containerid"

    move-object/from16 v0, v42

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v42

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v25, v36

    .line 1706
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1711
    .end local v10    # "containerId":I
    .end local v25    # "cid":I
    .end local v42    # "containerSuccess":Landroid/content/Intent;
    .restart local v36    # "cid":I
    :pswitch_4
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1712
    .restart local v10    # "containerId":I
    const-string v3, "rid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1713
    .restart local v5    # "requestId":I
    const-string v3, "errCode"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1714
    .local v6, "errorCode":I
    if-nez v6, :cond_b

    .line 1715
    const/16 v6, 0x3f7

    .line 1717
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x2

    const/4 v8, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v10, v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    .line 1718
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> Container remount failed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " <<<<"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mVerifyContainerPwdCallbackMgr:Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerCallbackManager;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1720
    const-string v3, "EnterpriseContainerService"

    const-string v4, "    Calling callback container remount failure"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1721
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1722
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x4

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1726
    .end local v7    # "data":Landroid/os/Bundle;
    :cond_c
    new-instance v46, Landroid/content/Intent;

    const-string v3, "enterprise.container.remount.failed"

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1727
    .local v46, "failure":Landroid/content/Intent;
    const-string v3, "containerid"

    move-object/from16 v0, v46

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1728
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1731
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1732
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1733
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/16 v4, 0xa

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v3, v4, v8, v9, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v58

    .line 1735
    .local v58, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    move/from16 v25, v36

    .line 1736
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1739
    .end local v5    # "requestId":I
    .end local v6    # "errorCode":I
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v10    # "containerId":I
    .end local v25    # "cid":I
    .end local v46    # "failure":Landroid/content/Intent;
    .end local v58    # "msg":Landroid/os/Message;
    .restart local v36    # "cid":I
    :pswitch_5
    const-string v3, "containerid"

    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 1740
    .restart local v10    # "containerId":I
    const-string v3, "errCode"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1741
    .restart local v6    # "errorCode":I
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ">>> Container create failed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " <<<<"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1742
    const-string v3, "EnterpriseContainerService"

    const-string v4, "    Calling callback container set up failure"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1743
    if-nez v6, :cond_d

    .line 1744
    const/16 v6, 0x3ea

    .line 1747
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_FAILURE:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 1750
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1751
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1752
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v9, 0x1

    const/4 v13, 0x1

    move v11, v6

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1755
    new-instance v46, Landroid/content/Intent;

    const-string v3, "enterprise.container.setup.failure"

    move-object/from16 v0, v46

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1756
    .restart local v46    # "failure":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v46

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v25, v36

    .line 1757
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1760
    .end local v6    # "errorCode":I
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v10    # "containerId":I
    .end local v25    # "cid":I
    .end local v46    # "failure":Landroid/content/Intent;
    .restart local v36    # "cid":I
    :pswitch_6
    const-string/jumbo v3, "state"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v18

    .line 1761
    .local v18, "state":I
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 1762
    .restart local v10    # "containerId":I
    const-string v3, "requestId"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 1763
    .restart local v5    # "requestId":I
    const-string v3, "errorCode"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 1765
    .restart local v6    # "errorCode":I
    const-string v3, "primary"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v54

    .line 1767
    .local v54, "isPrimary":Z
    const-string/jumbo v3, "status"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v19

    .line 1769
    .local v19, "status":Z
    const-string v3, "password"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1771
    .local v15, "password":Ljava/lang/String;
    const-string v3, "ecryptfskey"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1773
    .local v16, "ecryptfsKey":Ljava/lang/String;
    const-string v3, "containerObj"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v22

    check-cast v22, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .line 1776
    .local v22, "containerObj":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    new-instance v57, Landroid/os/Bundle;

    invoke-direct/range {v57 .. v57}, Landroid/os/Bundle;-><init>()V

    .line 1777
    .local v57, "message":Landroid/os/Bundle;
    if-eqz v18, :cond_e

    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_18

    .line 1778
    :cond_e
    const/4 v3, 0x1

    move/from16 v0, v54

    if-ne v0, v3, :cond_13

    .line 1779
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_11

    .line 1781
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1782
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v3, "primaryMountStatus"

    const-string/jumbo v4, "success"

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1784
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v9, 0x1

    const/16 v11, 0x3f2

    const/4 v13, 0x0

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    move-object/from16 v11, p0

    move/from16 v12, v18

    move v13, v5

    move v14, v10

    .line 1787
    invoke-virtual/range {v11 .. v16}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->mountSecondStorage(IIILjava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1789
    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_10

    .line 1790
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V
    invoke-static {v3, v10, v5, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    .line 1791
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v10, v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    :cond_f
    :goto_4
    move/from16 v25, v36

    .line 1798
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1794
    .end local v25    # "cid":I
    .restart local v36    # "cid":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v3, v10, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    .line 1795
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    goto :goto_4

    .line 1799
    .end local v7    # "data":Landroid/os/Bundle;
    :cond_11
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1801
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed for mounting primary partition: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1803
    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_12

    .line 1804
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container remount failed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1805
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V
    invoke-static {v3, v10, v5, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    move/from16 v25, v36

    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1807
    .end local v25    # "cid":I
    .restart local v36    # "cid":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v3, v10, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v25, v36

    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1813
    .end local v25    # "cid":I
    .restart local v36    # "cid":I
    :cond_13
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1815
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_16

    .line 1817
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1818
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v3, "secondaryMountStatus"

    const-string/jumbo v4, "success"

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v9, 0x1

    const/16 v11, 0x3f2

    const/4 v13, 0x0

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1824
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mMountCallBackData:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4900(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/sec/knox/container/EnterpriseContainerObjectParam;

    .line 1826
    .local v39, "containerData":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    move-object/from16 v22, v39

    .line 1830
    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_15

    .line 1833
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Remount success for : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    const-string v3, "containerid"

    move-object/from16 v0, v57

    invoke-virtual {v0, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1835
    const-string v3, "rid"

    move-object/from16 v0, v57

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1837
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/16 v4, 0xd

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v57

    invoke-static {v3, v4, v8, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v58

    .line 1839
    .restart local v58    # "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v58    # "msg":Landroid/os/Message;
    :cond_14
    :goto_5
    move/from16 v25, v36

    .line 1848
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .end local v25    # "cid":I
    .restart local v36    # "cid":I
    :cond_15
    move-object/from16 v17, p0

    move/from16 v20, v6

    move/from16 v21, v10

    move-object/from16 v23, v15

    .line 1842
    invoke-virtual/range {v17 .. v23}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->addContainer(IZIILcom/sec/knox/container/EnterpriseContainerObjectParam;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 1844
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v3, v10, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    .line 1845
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    goto :goto_5

    .line 1850
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v39    # "containerData":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    :cond_16
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed for mounting secondary partition: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1852
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    const/4 v8, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v10, v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    .line 1853
    const/4 v3, 0x2

    move/from16 v0, v18

    if-ne v0, v3, :cond_17

    .line 1854
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerRemountFailureMessage(III)V
    invoke-static {v3, v10, v5, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4600(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    move/from16 v25, v36

    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1856
    .end local v25    # "cid":I
    .restart local v36    # "cid":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v3, v10, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    .line 1857
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    move/from16 v25, v36

    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1861
    .end local v25    # "cid":I
    .restart local v36    # "cid":I
    :cond_18
    const/4 v3, 0x1

    move/from16 v0, v18

    if-ne v0, v3, :cond_1a

    .line 1862
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ContainerEncryptionCallbackupdateStatus"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_19

    .line 1865
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unmount is success "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    move/from16 v25, v36

    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1867
    .end local v25    # "cid":I
    .restart local v36    # "cid":I
    :cond_19
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1868
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1869
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v9, 0x2

    const/16 v11, 0x3ed

    const/4 v13, 0x1

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1872
    new-instance v71, Landroid/content/Intent;

    const-string v3, "enterprise.container.unmountfailure"

    move-object/from16 v0, v71

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1877
    .local v71, "unmountFailed":Landroid/content/Intent;
    const-string v3, "containerid"

    move-object/from16 v0, v71

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1878
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v25, v36

    .line 1879
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1880
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v25    # "cid":I
    .end local v71    # "unmountFailed":Landroid/content/Intent;
    .restart local v36    # "cid":I
    :cond_1a
    const/4 v3, 0x4

    move/from16 v0, v18

    if-ne v0, v3, :cond_1e

    .line 1881
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ContainerEncryptionCallbackENCRYPTION_STATE_PRIMARY_UNMOUNT:updateStatus"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1883
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_1d

    .line 1884
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unmount is success "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1885
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v41

    .line 1886
    .local v41, "containerState":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v41 .. v41}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_DOESNOT_EXISTS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-eq v3, v4, :cond_1b

    invoke-virtual/range {v41 .. v41}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_UNINSTALL_INPROGRESS:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-ne v3, v4, :cond_1c

    .line 1888
    :cond_1b
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Deleting the .container_1 forcibly "

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    const-string v3, "ctl.start"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "containersetup:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v8, 0x3

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    const-string v3, "EnterpriseContainerService"

    const-string v4, "After Deleting the .container_1 forcibly "

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    move/from16 v25, v36

    .line 1893
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1894
    .end local v25    # "cid":I
    .end local v41    # "containerState":Lcom/sec/knox/container/constants/CSState;
    .restart local v36    # "cid":I
    :cond_1d
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1895
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1896
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v9, 0x2

    const/16 v11, 0x3ed

    const/4 v13, 0x1

    move-object v12, v7

    invoke-virtual/range {v8 .. v13}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1899
    new-instance v71, Landroid/content/Intent;

    const-string v3, "enterprise.container.unmountfailure"

    move-object/from16 v0, v71

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1904
    .restart local v71    # "unmountFailed":Landroid/content/Intent;
    const-string v3, "containerid"

    move-object/from16 v0, v71

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1905
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v71

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move/from16 v25, v36

    .line 1906
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1907
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v25    # "cid":I
    .end local v71    # "unmountFailed":Landroid/content/Intent;
    .restart local v36    # "cid":I
    :cond_1e
    const/4 v3, 0x3

    move/from16 v0, v18

    if-ne v0, v3, :cond_2

    .line 1908
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Change Password callback"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    const/4 v3, 0x1

    move/from16 v0, v19

    if-ne v0, v3, :cond_21

    .line 1910
    const-string v3, "EnterpriseContainerService"

    const-string v4, "changePassword success"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Change Password storing the new password"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1912
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10, v15}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->updatePassword(ILjava/lang/String;)V

    .line 1913
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->onChangePasswordSuccess(I)V

    .line 1914
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1915
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1916
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v26, 0x3f4

    const/16 v28, 0x1

    move/from16 v25, v5

    move-object/from16 v27, v7

    invoke-virtual/range {v23 .. v28}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 1922
    .end local v27    # "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CHANGE_PWD:Lcom/sec/knox/container/constants/CSEvent;

    invoke-virtual {v3, v10, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v67

    .line 1925
    .local v67, "tempState":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v67 .. v67}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-eq v3, v4, :cond_20

    .line 1926
    const-string v3, "EnterpriseContainerService"

    const-string v4, "ContainerEncryptionCallback.updateStatus(): restarting password expiry timeout"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mActiveAdminList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5000(Lcom/sec/knox/container/EnterpriseContainerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v51

    .restart local v51    # "i$":Ljava/util/Iterator;
    :goto_6
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1f

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/content/ComponentName;

    .line 1929
    .local v37, "componentName":Landroid/content/ComponentName;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v3, v10, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->updatePasswordExpirationTimeout(ILandroid/content/ComponentName;)V

    goto :goto_6

    .line 1932
    .end local v37    # "componentName":Landroid/content/ComponentName;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->loadPasswordInfoToCache(I)V
    invoke-static {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4300(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 1933
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    .line 1934
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->scheduleTimer(Landroid/content/Context;I)V
    invoke-static {v3, v4, v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2000(Lcom/sec/knox/container/EnterpriseContainerService;Landroid/content/Context;I)V

    .line 1936
    const-string v3, "EnterpriseContainerService"

    const-string v4, "ContainerEncryptionCallback.updateStatus(): firing intent: com.samsung.redex.proxy.activity.close_dialog"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    new-instance v64, Landroid/content/Intent;

    const-string v3, "com.samsung.redex.proxy.activity.close_dialog"

    move-object/from16 v0, v64

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1940
    .local v64, "redexclosedialog":Landroid/content/Intent;
    const-string v3, "containerid"

    move-object/from16 v0, v64

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1941
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v64

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v51    # "i$":Ljava/util/Iterator;
    .end local v64    # "redexclosedialog":Landroid/content/Intent;
    :cond_20
    move/from16 v25, v36

    .line 1943
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1944
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v25    # "cid":I
    .end local v67    # "tempState":Lcom/sec/knox/container/constants/CSState;
    .restart local v27    # "bundle":Landroid/os/Bundle;
    .restart local v36    # "cid":I
    :cond_21
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Change Password failed cannot update the cache error code:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1947
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 1948
    .restart local v7    # "data":Landroid/os/Bundle;
    const-string v3, "containerid"

    invoke-virtual {v7, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v23, v0

    const/16 v24, 0x3

    const/16 v26, 0x3f5

    const/16 v28, 0x1

    move/from16 v25, v5

    move-object/from16 v27, v7

    invoke-virtual/range {v23 .. v28}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .end local v27    # "bundle":Landroid/os/Bundle;
    move/from16 v25, v36

    .line 1952
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    goto/16 :goto_0

    .line 1957
    .end local v5    # "requestId":I
    .end local v6    # "errorCode":I
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v10    # "containerId":I
    .end local v15    # "password":Ljava/lang/String;
    .end local v16    # "ecryptfsKey":Ljava/lang/String;
    .end local v18    # "state":I
    .end local v19    # "status":Z
    .end local v22    # "containerObj":Lcom/sec/knox/container/EnterpriseContainerObjectParam;
    .end local v25    # "cid":I
    .end local v54    # "isPrimary":Z
    .end local v57    # "message":Landroid/os/Bundle;
    .restart local v27    # "bundle":Landroid/os/Bundle;
    .restart local v36    # "cid":I
    :pswitch_7
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binder UID :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1958
    const-string v3, "package_install_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 1959
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 1960
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    const-string v3, "package_install_uid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v70

    .line 1961
    const-string v3, "package_install_source"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v53

    .line 1962
    const-string v3, "package_original_signature"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v61

    .line 1963
    const-string v60, "NA"

    .line 1964
    .local v60, "origSignatureAsString":Ljava/lang/String;
    const/16 v44, 0x0

    .line 1969
    .local v44, "event":I
    if-eqz v61, :cond_22

    .line 1970
    const-string v3, ","

    move-object/from16 v0, v61

    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v60

    .line 1973
    :cond_22
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v3, v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_24

    .line 1974
    new-instance v43, Landroid/content/ContentValues;

    invoke-direct/range {v43 .. v43}, Landroid/content/ContentValues;-><init>()V

    .line 1975
    .local v43, "contentval":Landroid/content/ContentValues;
    const-string v3, "containerid"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1976
    const-string v3, "packages"

    move-object/from16 v0, v43

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1977
    const-string v3, "original_signature"

    move-object/from16 v0, v43

    move-object/from16 v1, v60

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1979
    const-string v3, "installation_source"

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1980
    const-string v3, "app_uid"

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v43

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1981
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v43

    invoke-virtual {v3, v4, v0, v8}, Lcom/sec/knox/container/manager/StateManager;->insert(Landroid/content/Context;Landroid/content/ContentValues;Landroid/net/Uri;)Z

    .line 1983
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v7

    .line 1985
    .local v7, "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-eqz v7, :cond_0

    .line 1989
    invoke-virtual {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v34

    .line 1990
    .local v34, "adminId":I
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setApplicationUninstallationDisabledBySystem to true :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5100(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    if-eqz v3, :cond_23

    .line 1993
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5100(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v63

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 2001
    :cond_23
    new-instance v52, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct/range {v52 .. v52}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    .line 2002
    .local v52, "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    move-object/from16 v0, v52

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    .line 2003
    move-object/from16 v0, v52

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    .line 2004
    move-object/from16 v0, v52

    move-object/from16 v1, v60

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setSignature(Ljava/lang/String;)V

    .line 2005
    invoke-virtual/range {v52 .. v53}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setInstallationSource(I)V

    .line 2006
    move-object/from16 v0, v52

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setUid(I)V

    .line 2008
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z

    .line 2012
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " INSTALLED SUCCESSFULLY in container: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    sget-object v3, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_INSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntValue()I

    move-result v44

    .line 2030
    .end local v7    # "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v34    # "adminId":I
    .end local v43    # "contentval":Landroid/content/ContentValues;
    .end local v52    # "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    :goto_7
    new-instance v45, Landroid/os/Bundle;

    invoke-direct/range {v45 .. v45}, Landroid/os/Bundle;-><init>()V

    .line 2031
    .local v45, "eventData":Landroid/os/Bundle;
    const-string v3, "containerid"

    move-object/from16 v0, v45

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2032
    const-string v3, "package"

    move-object/from16 v0, v45

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    move/from16 v1, v44

    move-object/from16 v2, v45

    invoke-virtual {v3, v0, v1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->updateEventToListners(IILandroid/os/Bundle;)V

    .line 2040
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    move-object/from16 v1, v63

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getOriginalPackageNameInternal(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v0, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5200(Lcom/sec/knox/container/EnterpriseContainerService;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v68

    .line 2041
    .local v68, "transformedPackageName":Ljava/lang/String;
    if-eqz v68, :cond_0

    .line 2042
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2043
    .local v7, "data":Landroid/os/Bundle;
    const-string v3, "packageName"

    move-object/from16 v0, v68

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2045
    const-string v3, "packageInstallStatus"

    const-string/jumbo v4, "success"

    invoke-virtual {v7, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v26, 0x3f3

    const/16 v28, 0x0

    move-object/from16 v27, v7

    invoke-virtual/range {v23 .. v28}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    goto/16 :goto_0

    .line 2016
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v45    # "eventData":Landroid/os/Bundle;
    .end local v68    # "transformedPackageName":Ljava/lang/String;
    :cond_24
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " UPDATED SUCCESSFULLY in container: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2018
    sget-object v3, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_UPDATED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v3}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntValue()I

    move-result v44

    goto/16 :goto_7

    .line 2054
    .end local v25    # "cid":I
    .end local v44    # "event":I
    .end local v60    # "origSignatureAsString":Ljava/lang/String;
    .restart local v36    # "cid":I
    :pswitch_8
    new-instance v57, Landroid/os/Bundle;

    invoke-direct/range {v57 .. v57}, Landroid/os/Bundle;-><init>()V

    .line 2055
    .restart local v57    # "message":Landroid/os/Bundle;
    const/16 v58, 0x0

    .line 2056
    .restart local v58    # "msg":Landroid/os/Message;
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 2057
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    const-string v3, "package_install_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 2058
    .local v48, "frameworkPackageList":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1200(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sec/knox/container/manager/StateManager;->isContainerCanceled(I)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 2059
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Cancel Container: All packages will be uninstalled"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2061
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 2063
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v25

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_0

    .line 2067
    :cond_25
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerObjectFromCache(I)Lcom/sec/enterprise/knox/EnterpriseContainerObject;

    move-result-object v7

    .line 2068
    .local v7, "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    if-eqz v7, :cond_0

    .line 2072
    invoke-virtual {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerAdmin()I

    move-result v34

    .line 2073
    .restart local v34    # "adminId":I
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setApplicationUninstallationDisabledBySystem to true :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    if-nez v48, :cond_27

    const/16 v49, 0x0

    .line 2078
    .local v49, "frameworkPackages":[Ljava/lang/String;
    :goto_8
    if-eqz v49, :cond_28

    .line 2079
    move-object/from16 v35, v49

    .local v35, "arr$":[Ljava/lang/String;
    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v55, v0

    .local v55, "len$":I
    const/16 v51, 0x0

    .local v51, "i$":I
    :goto_9
    move/from16 v0, v51

    move/from16 v1, v55

    if-ge v0, v1, :cond_28

    aget-object v50, v35, v51

    .line 2080
    .local v50, "frameworkPkg":Ljava/lang/String;
    invoke-virtual/range {v50 .. v50}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_26

    .line 2081
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5100(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 2082
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->getApplicationPolicy()Lcom/android/server/enterprise/application/ApplicationPolicy;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5100(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/android/server/enterprise/application/ApplicationPolicy;

    move-result-object v3

    const/4 v4, 0x1

    move/from16 v0, v34

    move-object/from16 v1, v50

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationUninstallationDisabledBySystem(ILjava/lang/String;Z)V

    .line 2079
    :cond_26
    add-int/lit8 v51, v51, 0x1

    goto :goto_9

    .line 2076
    .end local v35    # "arr$":[Ljava/lang/String;
    .end local v49    # "frameworkPackages":[Ljava/lang/String;
    .end local v50    # "frameworkPkg":Ljava/lang/String;
    .end local v51    # "i$":I
    .end local v55    # "len$":I
    :cond_27
    const-string v3, ";"

    move-object/from16 v0, v48

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v49

    goto :goto_8

    .line 2089
    .restart local v49    # "frameworkPackages":[Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    move-object/from16 v0, v48

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2093
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_CREATION_SUCCESS:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 2095
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v18

    .line 2096
    .local v18, "state":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v18 .. v18}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-ne v3, v4, :cond_29

    .line 2097
    const-string v3, "containerid"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContainerId:I
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1200(Lcom/sec/knox/container/EnterpriseContainerService;)I

    move-result v4

    move-object/from16 v0, v57

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2098
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    const/4 v4, 0x5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, v57

    invoke-static {v3, v4, v8, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v58

    .line 2102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mThreadHandler:Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$700(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;

    move-result-object v3

    move-object/from16 v0, v58

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 2105
    :cond_29
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getFeatureFlagForContainer(I)I

    move-result v47

    .line 2106
    .local v47, "flag":I
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "container flag value "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v47

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    const/16 v26, 0x3e9

    const/16 v28, 0x1

    invoke-virtual/range {v23 .. v28}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 2110
    and-int/lit8 v3, v47, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2b

    .line 2111
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Container activation flow is enabled......"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->sendContainerCreationIntent(I)V
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5300(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 2117
    :goto_a
    const-string v38, "B2B"

    .line 2118
    .local v38, "conType":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2c

    .line 2119
    const-string v38, "B2B"

    .line 2123
    :cond_2a
    :goto_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const-string v4, "[ECS] createContainerInternal()"

    move-object/from16 v0, v38

    invoke-virtual {v3, v4, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->WriteContainerHistory(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2114
    .end local v38    # "conType":Ljava/lang/String;
    :cond_2b
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Container activation flow is disabled......"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->activateContainer(I)Z

    goto :goto_a

    .line 2120
    .restart local v38    # "conType":Ljava/lang/String;
    :cond_2c
    invoke-virtual {v7}, Lcom/sec/enterprise/knox/EnterpriseContainerObject;->getContainerType()I

    move-result v3

    if-nez v3, :cond_2a

    .line 2121
    const-string v38, "B2C"

    goto :goto_b

    .line 2129
    .end local v7    # "data":Lcom/sec/enterprise/knox/EnterpriseContainerObject;
    .end local v18    # "state":Lcom/sec/knox/container/constants/CSState;
    .end local v25    # "cid":I
    .end local v34    # "adminId":I
    .end local v38    # "conType":Ljava/lang/String;
    .end local v47    # "flag":I
    .end local v48    # "frameworkPackageList":Ljava/lang/String;
    .end local v49    # "frameworkPackages":[Ljava/lang/String;
    .end local v57    # "message":Landroid/os/Bundle;
    .end local v58    # "msg":Landroid/os/Message;
    .restart local v36    # "cid":I
    :pswitch_9
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Binder UID :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2130
    const-string v3, "package_install_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v63

    .line 2131
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 2132
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/contentprovider/DBConstants;->CONTAINER_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v63

    move/from16 v1, v25

    invoke-virtual {v3, v4, v0, v1, v8}, Lcom/sec/knox/container/manager/StateManager;->delete(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Z

    .line 2134
    new-instance v52, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;

    invoke-direct/range {v52 .. v52}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;-><init>()V

    .line 2135
    .restart local v52    # "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    move-object/from16 v0, v52

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setContainerId(I)V

    .line 2136
    move-object/from16 v0, v52

    move-object/from16 v1, v63

    invoke-virtual {v0, v1}, Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;->setAppPackage(Ljava/lang/String;)V

    .line 2137
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->updateContainerPackageCache(Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;)Z

    .line 2140
    new-instance v45, Landroid/os/Bundle;

    invoke-direct/range {v45 .. v45}, Landroid/os/Bundle;-><init>()V

    .line 2141
    .restart local v45    # "eventData":Landroid/os/Bundle;
    const-string v3, "containerid"

    move-object/from16 v0, v45

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2142
    const-string v3, "package"

    move-object/from16 v0, v45

    move-object/from16 v1, v63

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    sget-object v4, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->PACKAGE_UNINSTALLED:Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;

    invoke-virtual {v4}, Lcom/sec/enterprise/knox/EnterpriseContainerEventReceiver$EVENTS;->getIntValue()I

    move-result v4

    move/from16 v0, v25

    move-object/from16 v1, v45

    invoke-virtual {v3, v0, v4, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->updateEventToListners(IILandroid/os/Bundle;)V

    .line 2150
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Package: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v63

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, " UNINSTALLED SUCCESSFULLY in container: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2155
    .end local v25    # "cid":I
    .end local v45    # "eventData":Landroid/os/Bundle;
    .end local v52    # "info":Lcom/sec/knox/container/contentprovider/ContainerPackageInfo;
    .restart local v36    # "cid":I
    :pswitch_a
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() All Packages Uninstalled Part of Remove Container"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2157
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 2158
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 2159
    .local v7, "data":Landroid/os/Bundle;
    const/16 v40, 0x0

    .line 2160
    .local v40, "containerRemoved":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->isContainerCanceled(I)Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 2161
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/manager/StateManager;->getRequestIdForContainer(I)I

    move-result v5

    .line 2162
    .restart local v5    # "requestId":I
    const-string v3, "containerid"

    move/from16 v0, v25

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2163
    const-string v3, "requestid"

    invoke-virtual {v7, v3, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v28, v0

    const/16 v29, 0x5

    const/16 v31, 0x3f8

    const/16 v33, 0x1

    move/from16 v30, v25

    move-object/from16 v32, v7

    invoke-virtual/range {v28 .. v33}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 2167
    new-instance v40, Landroid/content/Intent;

    .end local v40    # "containerRemoved":Landroid/content/Intent;
    const-string v3, "enterprise.container.cancelled"

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2168
    .restart local v40    # "containerRemoved":Landroid/content/Intent;
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container Cancelled intent Container id: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2169
    const-string v3, "containerid"

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2170
    const-string v3, "requestid"

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2181
    .end local v5    # "requestId":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_COMPLETED:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 2184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->cleanupContainer(I)V
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4800(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 2187
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    const-string v8, ""

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2189
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2172
    :cond_2d
    const-string v3, "containerid"

    move/from16 v0, v25

    invoke-virtual {v7, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move-object/from16 v28, v0

    const/16 v29, 0x2

    const/16 v31, 0x3eb

    const/16 v33, 0x1

    move/from16 v30, v25

    move-object/from16 v32, v7

    invoke-virtual/range {v28 .. v33}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    .line 2176
    new-instance v40, Landroid/content/Intent;

    .end local v40    # "containerRemoved":Landroid/content/Intent;
    const-string v3, "enterprise.container.uninstalled"

    move-object/from16 v0, v40

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2177
    .restart local v40    # "containerRemoved":Landroid/content/Intent;
    const-string v3, "EnterpriseContainerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Container removed intent Container id: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2178
    const-string v3, "containerid"

    move-object/from16 v0, v40

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_c

    .line 2193
    .end local v7    # "data":Landroid/os/Bundle;
    .end local v25    # "cid":I
    .end local v40    # "containerRemoved":Landroid/content/Intent;
    .restart local v36    # "cid":I
    :pswitch_b
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2194
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 2195
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    const-string v3, "package_install_name"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v48

    .line 2196
    .restart local v48    # "frameworkPackageList":Ljava/lang/String;
    if-eqz v48, :cond_2e

    .line 2197
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "framework.pkgName.key"

    move-object/from16 v0, v48

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2200
    :cond_2e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v25

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->setupContainerCreationFailureMessage(II)V
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4700(Lcom/sec/knox/container/EnterpriseContainerService;II)V

    .line 2202
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 2204
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v25

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_0

    .line 2212
    .end local v25    # "cid":I
    .end local v48    # "frameworkPackageList":Ljava/lang/String;
    .restart local v36    # "cid":I
    :pswitch_c
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2213
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 2215
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_UNINSTALL_CONTAINER:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    .line 2217
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x0

    move/from16 v0, v25

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->removeContainerHelper(ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z
    invoke-static {v3, v0, v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4000(Lcom/sec/knox/container/EnterpriseContainerService;ILcom/sec/enterprise/knox/IEnterpriseContainerCallback;)Z

    goto/16 :goto_0

    .line 2221
    .end local v25    # "cid":I
    .restart local v36    # "cid":I
    :pswitch_d
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2222
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 2225
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->changePasswordIfPasswordHasExpired(I)Z
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4100(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 2226
    new-instance v62, Landroid/content/Intent;

    const-string v3, "com.samsung.redex.proxy.activity.show_dialog"

    move-object/from16 v0, v62

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2227
    .local v62, "passwordExpired":Landroid/content/Intent;
    const-string v3, "EnterpriseContainerService"

    const-string v4, "Password is expired. Fire a change password intent"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2228
    const-string v3, "containerid"

    move-object/from16 v0, v62

    move/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$1000(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, v62

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2231
    .end local v62    # "passwordExpired":Landroid/content/Intent;
    :cond_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->setExpirationAlarmCheck(I)V

    goto/16 :goto_0

    .line 2236
    .end local v25    # "cid":I
    .restart local v36    # "cid":I
    :pswitch_e
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_UNMOUNT_TIMEOUT"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2238
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 2239
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v4}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/sec/knox/container/manager/StateManager;->getContainerStatus(I)Lcom/sec/knox/container/constants/CSState;

    move-result-object v4

    sget-object v8, Lcom/sec/knox/container/constants/CSEvent;->CSEVENT_HIBERNATE_UNMOUNT_TIMEOUT:Lcom/sec/knox/container/constants/CSEvent;

    move/from16 v0, v25

    invoke-virtual {v3, v0, v4, v8}, Lcom/sec/knox/container/manager/StateManager;->transitState(ILcom/sec/knox/container/constants/CSState;Lcom/sec/knox/container/constants/CSEvent;)Lcom/sec/knox/container/constants/CSState;

    move-result-object v69

    .line 2241
    .restart local v69    # "transitState":Lcom/sec/knox/container/constants/CSState;
    invoke-virtual/range {v69 .. v69}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v3

    sget-object v4, Lcom/sec/knox/container/constants/CSState;->CSSTATE_INVALID:Lcom/sec/knox/container/constants/CSState;

    invoke-virtual {v4}, Lcom/sec/knox/container/constants/CSState;->getId()I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 2242
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->killAllApps(I)Z

    .line 2243
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, v25

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->killUnmountTimer(I)V
    invoke-static {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5400(Lcom/sec/knox/container/EnterpriseContainerService;I)V

    .line 2244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v4, 0x2

    const/4 v8, 0x1

    move/from16 v0, v25

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->unmount(III)V
    invoke-static {v3, v0, v4, v8}, Lcom/sec/knox/container/EnterpriseContainerService;->access$4500(Lcom/sec/knox/container/EnterpriseContainerService;III)V

    goto/16 :goto_0

    .line 2249
    .end local v25    # "cid":I
    .end local v69    # "transitState":Lcom/sec/knox/container/constants/CSState;
    .restart local v36    # "cid":I
    :pswitch_f
    const-string v3, "EnterpriseContainerService"

    const-string v4, "handleMessage() ENTERPRISE_CONTAINER_LOCK_TIMEOUT"

    invoke-static {v3, v4}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2250
    const-string v3, "containerid"

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v25

    .line 2251
    .end local v36    # "cid":I
    .restart local v25    # "cid":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mPasswordService:Lcom/sec/knox/container/EnterpriseContainerPasswordService;
    invoke-static {v3}, Lcom/sec/knox/container/EnterpriseContainerService;->access$2800(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/EnterpriseContainerPasswordService;

    move-result-object v3

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Lcom/sec/knox/container/EnterpriseContainerPasswordService;->executeTimeout(I)V

    goto/16 :goto_0

    .line 1577
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_d
        :pswitch_f
        :pswitch_e
    .end packed-switch
.end method

.method public mountSecondStorage(IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 14
    .param p1, "state"    # I
    .param p2, "requestId"    # I
    .param p3, "containerId"    # I
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "ecryptfsKey"    # Ljava/lang/String;

    .prologue
    .line 2261
    const-string v2, "EnterpriseContainerService"

    const-string v3, "mountSecondStorage()"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    move/from16 v0, p3

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->isContainerPartition(I)Z
    invoke-static {v2, v0}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5500(Lcom/sec/knox/container/EnterpriseContainerService;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2264
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Error create container: sdcard directory"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2265
    const/4 v2, 0x0

    .line 2295
    :goto_0
    return v2

    .line 2268
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/storage/container/.sdcontainer_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2269
    .local v12, "sdSrcPath":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/mnt_1/sdcard_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2270
    .local v11, "sdMountPath":Ljava/lang/String;
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2272
    .local v13, "srcSDPathFile":Ljava/io/File;
    if-eqz p5, :cond_1

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 2273
    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v7, 0x0

    move v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Ljava/lang/String;Z)V

    .line 2275
    .local v1, "callback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    .line 2276
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x2

    move-object v3, v12

    move-object v4, v11

    move-object/from16 v5, p5

    move/from16 v8, p3

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    .line 2278
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Error create container: DirEncryptionManager secondary mount failed"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    const/4 v2, 0x0

    goto :goto_0

    .line 2284
    .end local v1    # "callback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    :cond_1
    new-instance v1, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;

    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    const/4 v6, 0x0

    move v3, p1

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;-><init>(Lcom/sec/knox/container/EnterpriseContainerService;IILjava/lang/String;Z)V

    .line 2286
    .restart local v1    # "callback":Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;
    move/from16 v0, p2

    invoke-virtual {v1, v0}, Lcom/sec/knox/container/EnterpriseContainerService$ContainerEncryptionCallback;->setRequestId(I)V

    .line 2287
    iget-object v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$ContainerServiceHandler;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mDirEncryptionManager:Landroid/dirEncryption/DirEncryptionManager;
    invoke-static {v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$3100(Lcom/sec/knox/container/EnterpriseContainerService;)Landroid/dirEncryption/DirEncryptionManager;

    move-result-object v2

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v9, 0x2

    move-object v3, v12

    move-object v4, v11

    move-object/from16 v5, p4

    move/from16 v8, p3

    move-object v10, v1

    invoke-virtual/range {v2 .. v10}, Landroid/dirEncryption/DirEncryptionManager;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I

    move-result v2

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    .line 2289
    const-string v2, "EnterpriseContainerService"

    const-string v3, "Error create container: DirEncryptionManager secondary mount failed"

    invoke-static {v2, v3}, Lcom/sec/knox/container/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2291
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 2295
    :cond_2
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method public toString(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 1499
    packed-switch p1, :pswitch_data_0

    .line 1554
    const-string v0, "EnterpriseContainerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message parameter : Unknown return - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1557
    :goto_0
    return-void

    .line 1501
    :pswitch_0
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_PACKAGE_INSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1504
    :pswitch_1
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ALL_PACKAGES_INSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1508
    :pswitch_2
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_PACKAGE_UNINSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1511
    :pswitch_3
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ALL_PACKAGES_UNINSTALLED"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1515
    :pswitch_4
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ERASE_PARTIAL_CONTAINER"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1519
    :pswitch_5
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_CANCEL_CONTAINER_CREATION"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1523
    :pswitch_6
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_HANDLE_BOOT_COMPLETE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1526
    :pswitch_7
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_HANDLE_PASSWORD_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1530
    :pswitch_8
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_SETUP_FAILURE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1533
    :pswitch_9
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_REMOUNT_FAILURE"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1536
    :pswitch_a
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_SETUP_SUCCESS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1539
    :pswitch_b
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_REMOUNT_SUCCESS"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1542
    :pswitch_c
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_ECRYPTFS_CALLBACK"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1545
    :pswitch_d
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_EXPIRATION_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1548
    :pswitch_e
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_LOCK_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1551
    :pswitch_f
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Message parameter : ENTERPRISE_CONTAINER_UNMOUNT_TIMEOUT"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1499
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_c
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
