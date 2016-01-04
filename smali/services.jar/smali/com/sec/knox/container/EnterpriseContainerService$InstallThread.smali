.class public Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;
.super Ljava/lang/Thread;
.source "EnterpriseContainerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/knox/container/EnterpriseContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InstallThread"
.end annotation


# instance fields
.field mApksToInstall:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContainerId:I

.field mIsSetup:Z

.field mParentHandler:Landroid/os/Handler;

.field mSource:I

.field final synthetic this$0:Lcom/sec/knox/container/EnterpriseContainerService;


# direct methods
.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;)V
    .locals 2
    .param p2, "cid"    # I
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2515
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2499
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mApksToInstall:Ljava/util/List;

    .line 2500
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    .line 2501
    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    .line 2502
    iput-boolean v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mIsSetup:Z

    .line 2503
    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mSource:I

    .line 2516
    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    .line 2517
    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    .line 2518
    return-void
.end method

.method public constructor <init>(Lcom/sec/knox/container/EnterpriseContainerService;ILandroid/os/Handler;Ljava/util/List;ZI)V
    .locals 2
    .param p2, "containerId"    # I
    .param p3, "handler"    # Landroid/os/Handler;
    .param p5, "isSetup"    # Z
    .param p6, "installSource"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Handler;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .local p4, "apks":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2506
    iput-object p1, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2499
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mApksToInstall:Ljava/util/List;

    .line 2500
    iput-object v1, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    .line 2501
    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    .line 2502
    iput-boolean v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mIsSetup:Z

    .line 2503
    iput v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mSource:I

    .line 2507
    iput-object p3, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    .line 2508
    iput-object p4, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mApksToInstall:Ljava/util/List;

    .line 2509
    iput p2, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    .line 2510
    iput-boolean p5, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mIsSetup:Z

    .line 2511
    iput p6, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mSource:I

    .line 2512
    const-string v0, "EnterpriseContainerService"

    const-string v1, "Constructor of Install thread"

    invoke-static {v0, v1}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2513
    return-void
.end method

.method private installPackages(Ljava/lang/String;)Z
    .locals 9
    .param p1, "apkFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x1

    .line 2611
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->installPackageInternal(Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    invoke-static {v0, p1, v2}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6200(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;

    move-result-object v8

    .line 2612
    .local v8, "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    iget v0, v8, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    if-ne v0, v1, :cond_0

    .line 2613
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 2614
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v0, "package_install_state"

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2615
    const-string v0, "package_install_uid"

    iget v2, v8, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->uid:I

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2616
    const-string v0, "containerid"

    iget v2, v8, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->containerId:I

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2617
    const-string v0, "package_install_name"

    iget-object v2, v8, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2618
    const-string v0, "package_install_source"

    iget v2, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mSource:I

    invoke-virtual {v6, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2619
    const-string v0, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ------Package Installed for container "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v8, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->containerId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2620
    const-string v0, "EnterpriseContainerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "---------Package name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v8, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2621
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    invoke-static {v0, v1, v5, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2624
    .local v7, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2632
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v7    # "msg":Landroid/os/Message;
    :goto_0
    return v1

    .line 2627
    :cond_0
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 2628
    .local v4, "data":Landroid/os/Bundle;
    const-string v0, "packageName"

    iget-object v2, v8, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2629
    const-string v0, "packageInstallStatus"

    const-string v2, "failed"

    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2630
    iget-object v0, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget v2, v8, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->containerId:I

    const/16 v3, 0x3f3

    invoke-virtual/range {v0 .. v5}, Lcom/sec/knox/container/EnterpriseContainerService;->updateCallbackStatus(IIILandroid/os/Bundle;Z)V

    move v1, v5

    .line 2632
    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 2522
    :try_start_0
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->acquireLock()V
    invoke-static {v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$5900(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 2524
    const-string v10, "EnterpriseContainerService"

    const-string v11, "In run of InstallThread"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2525
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2526
    .local v3, "bundle":Landroid/os/Bundle;
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mApksToInstall:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2527
    .local v0, "apkFilePath":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 2528
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Apkfile:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2529
    invoke-direct {p0, v0}, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->installPackages(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2530
    const-string v10, "containerid"

    iget v11, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2531
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2535
    .local v7, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2536
    const-string v10, "EnterpriseContainerService"

    const-string v11, "------------------------------------------------------------------"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2538
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ******* Package Installation FAILED for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2539
    const-string v10, "EnterpriseContainerService"

    const-string v11, "------------------------------------------------------------------"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2606
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    .end local v0    # "apkFilePath":Ljava/lang/String;
    .end local v7    # "msg":Landroid/os/Message;
    :goto_0
    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    .line 2608
    return-void

    .line 2542
    .restart local v0    # "apkFilePath":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # getter for: Lcom/sec/knox/container/EnterpriseContainerService;->mStateManager:Lcom/sec/knox/container/manager/StateManager;
    invoke-static {v10}, Lcom/sec/knox/container/EnterpriseContainerService;->access$900(Lcom/sec/knox/container/EnterpriseContainerService;)Lcom/sec/knox/container/manager/StateManager;

    move-result-object v10

    iget v11, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    invoke-virtual {v10, v11}, Lcom/sec/knox/container/contentprovider/EnterpriseContainerCache;->isContainerCanceled(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 2543
    const-string v10, "EnterpriseContainerService"

    const-string v11, "InstallThread Cancel Container Request"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2544
    const-string v10, "containerid"

    iget v11, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2545
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    const/4 v11, 0x6

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2549
    .local v4, "cancelMsg":Landroid/os/Message;
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v10, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2606
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    goto :goto_0

    .line 2553
    .end local v0    # "apkFilePath":Ljava/lang/String;
    .end local v4    # "cancelMsg":Landroid/os/Message;
    :cond_2
    :try_start_2
    iget-boolean v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mIsSetup:Z

    if-ne v10, v13, :cond_6

    .line 2554
    invoke-virtual {v3}, Landroid/os/Bundle;->clear()V

    .line 2556
    new-instance v1, Ljava/io/File;

    const-string v10, "/system/containers/framework"

    invoke-direct {v1, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2557
    .local v1, "apkFolder":Ljava/io/File;
    const/4 v6, 0x0

    .line 2558
    .local v6, "launcherApksPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 2559
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    invoke-virtual {v10, v1}, Lcom/sec/knox/container/EnterpriseContainerService;->getFrameworkApks(Ljava/io/File;)Ljava/util/List;

    move-result-object v6

    .line 2561
    :cond_3
    if-eqz v6, :cond_7

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_7

    .line 2562
    const-string v9, ""

    .line 2563
    .local v9, "pkgName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2564
    .local v2, "apkPath":Ljava/lang/String;
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    iget v11, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->installPackageInternal(Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    invoke-static {v10, v2, v11}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6200(Lcom/sec/knox/container/EnterpriseContainerService;Ljava/lang/String;I)Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;

    move-result-object v8

    .line 2566
    .local v8, "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    iget v10, v8, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->result:I

    if-eq v10, v13, :cond_4

    .line 2567
    const-string v10, "containerid"

    iget v11, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2568
    const-string v10, "package_install_name"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2569
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2573
    .restart local v7    # "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2574
    const-string v10, "EnterpriseContainerService"

    const-string v11, "------------------------------------------------------------------"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2576
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ******* Package Installation FAILED for: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2578
    const-string v10, "EnterpriseContainerService"

    const-string v11, "------------------------------------------------------------------"

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2606
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    goto/16 :goto_0

    .line 2582
    .end local v7    # "msg":Landroid/os/Message;
    :cond_4
    :try_start_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v8, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2583
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " ------Package Installed for container "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2584
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "---------Package name: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 2606
    .end local v1    # "apkFolder":Ljava/io/File;
    .end local v2    # "apkPath":Ljava/lang/String;
    .end local v3    # "bundle":Landroid/os/Bundle;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "launcherApksPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "obs":Lcom/sec/knox/container/EnterpriseContainerService$PackageInstallObserver;
    .end local v9    # "pkgName":Ljava/lang/String;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    # invokes: Lcom/sec/knox/container/EnterpriseContainerService;->releaseLock()V
    invoke-static {v11}, Lcom/sec/knox/container/EnterpriseContainerService;->access$6000(Lcom/sec/knox/container/EnterpriseContainerService;)V

    throw v10

    .line 2586
    .restart local v1    # "apkFolder":Ljava/io/File;
    .restart local v3    # "bundle":Landroid/os/Bundle;
    .restart local v5    # "i$":Ljava/util/Iterator;
    .restart local v6    # "launcherApksPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "pkgName":Ljava/lang/String;
    :cond_5
    :try_start_4
    const-string v10, "EnterpriseContainerService"

    const-string v11, " !!!!! InstallThread All Packages Installed !!!!! "

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2587
    const-string v10, "containerid"

    iget v11, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2588
    const-string v10, "package_install_name"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2589
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2593
    .restart local v7    # "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2606
    .end local v1    # "apkFolder":Ljava/io/File;
    .end local v6    # "launcherApksPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "msg":Landroid/os/Message;
    .end local v9    # "pkgName":Ljava/lang/String;
    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->this$0:Lcom/sec/knox/container/EnterpriseContainerService;

    goto/16 :goto_0

    .line 2595
    .restart local v1    # "apkFolder":Ljava/io/File;
    .restart local v6    # "launcherApksPath":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    :try_start_5
    const-string v10, "EnterpriseContainerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " No APKs found under /system/containers/framework. So removing container "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/sec/knox/container/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    const-string v10, "containerid"

    iget v11, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mContainerId:I

    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2598
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    const/4 v11, 0x5

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v10, v11, v12, v13, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 2602
    .restart local v7    # "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/sec/knox/container/EnterpriseContainerService$InstallThread;->mParentHandler:Landroid/os/Handler;

    invoke-virtual {v10, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2
.end method
