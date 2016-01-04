.class Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "EnterpriseDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/EnterpriseDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;)V
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 325
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onPackageUpdateFinished - packageName: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", uid: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v7, "com.sec.enterprise.permissions"

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 329
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 330
    .local v5, "pm":Landroid/content/pm/PackageManager;
    const-string v7, "com.sec.enterprise.permissions"

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v8, v9}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 374
    .end local v5    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->updateAdminPermissions()V

    .line 375
    :goto_1
    return-void

    .line 332
    :cond_0
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    monitor-enter v8

    .line 333
    const/4 v6, 0x0

    .line 334
    .local v6, "updatedAdmin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 336
    .local v2, "admin":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v7

    if-nez v7, :cond_1

    .line 339
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    invoke-virtual {v7}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 340
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v9, "Admin found on map with same package name!"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    move-object v6, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 345
    .end local v2    # "admin":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;>;"
    :cond_2
    if-eqz v6, :cond_4

    .line 346
    const/4 v1, 0x0

    .line 348
    .local v1, "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->findAdmin(Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-static {v7, v9, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$100(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 353
    :goto_3
    if-nez v1, :cond_3

    .line 354
    :try_start_2
    const-string v7, "EnterpriseDeviceManagerService"

    const-string v9, "Removing Admin as component name changed"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v10

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    invoke-static {v7, v9, v10}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V

    .line 358
    monitor-exit v8

    goto :goto_1

    .line 370
    .end local v1    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v4    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 350
    .restart local v1    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v4    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v3

    .line 351
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    goto :goto_3

    .line 360
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_3
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 361
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->setLicenseExpiryTime(Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V
    invoke-static {v7, v1}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$200(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/app/enterprise/EnterpriseDeviceAdminInfo;)V

    .line 367
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->verifyEnterprisePayload(I)Z
    invoke-static {v7, v9}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$300(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;I)Z

    .line 370
    .end local v1    # "admin":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    :cond_4
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0
.end method

.method public onSomePackagesChanged()V
    .locals 11

    .prologue
    .line 286
    iget-object v8, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    monitor-enter v8

    .line 287
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    .line 288
    .local v6, "userId":I
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Package has changed for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_4

    .line 291
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;

    .line 293
    .local v0, "adm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->isProxy()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 290
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 296
    :cond_1
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 297
    .local v5, "packageName":Ljava/lang/String;
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin package name: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v1

    .line 300
    .local v1, "change":I
    const/4 v7, 0x3

    if-eq v1, v7, :cond_2

    const/4 v7, 0x2

    if-ne v1, v7, :cond_3

    .line 301
    :cond_2
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin unexpectedly uninstalled: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    invoke-static {v7, v9, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V

    goto :goto_1

    .line 320
    .end local v0    # "adm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v1    # "change":I
    .end local v3    # "i":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "userId":I
    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 303
    .restart local v0    # "adm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .restart local v1    # "change":I
    .restart local v3    # "i":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "userId":I
    :cond_3
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-eqz v7, :cond_0

    .line 304
    const/4 v4, 0x0

    .line 306
    .local v4, "info":Landroid/content/pm/ActivityInfo;
    :try_start_2
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    iget-object v7, v7, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->mPMS:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10, v6}, Landroid/content/pm/IPackageManager;->getReceiverInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    .line 313
    :goto_2
    if-nez v4, :cond_0

    .line 314
    :try_start_3
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin package change removed component: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v7, p0, Lcom/android/server/enterprise/EnterpriseDeviceManagerService$MyPackageMonitor;->this$0:Lcom/android/server/enterprise/EnterpriseDeviceManagerService;

    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    # invokes: Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->removeActiveAdminDelayed(Landroid/content/ComponentName;I)V
    invoke-static {v7, v9, v6}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->access$000(Lcom/android/server/enterprise/EnterpriseDeviceManagerService;Landroid/content/ComponentName;I)V

    goto/16 :goto_1

    .line 307
    :catch_0
    move-exception v2

    .line 308
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "EnterpriseDeviceManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onSomePackagesChanged EX:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const/4 v4, 0x0

    goto :goto_2

    .line 320
    .end local v0    # "adm":Landroid/app/enterprise/EnterpriseDeviceAdminInfo;
    .end local v1    # "change":I
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v4    # "info":Landroid/content/pm/ActivityInfo;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_4
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    return-void
.end method
