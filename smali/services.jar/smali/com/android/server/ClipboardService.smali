.class public Lcom/android/server/ClipboardService;
.super Landroid/content/IClipboard$Stub;
.source "ClipboardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ClipboardService$PerUserClipboard;,
        Lcom/android/server/ClipboardService$ListenerInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ClipboardService"

.field private static final is3LMAllowed:Z


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mClipboards:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/ClipboardService$PerUserClipboard;",
            ">;"
        }
    .end annotation
.end field

.field private mContainerID:I

.field private final mContext:Landroid/content/Context;

.field private final mPermissionOwner:Landroid/os/IBinder;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0}, Landroid/content/IClipboard$Stub;-><init>()V

    .line 110
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    .line 116
    iput-object p1, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    .line 117
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mPm:Landroid/content/pm/PackageManager;

    .line 119
    const-string v3, "appops"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AppOpsManager;

    iput-object v3, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    .line 120
    const/4 v1, 0x0

    .line 122
    .local v1, "permOwner":Landroid/os/IBinder;
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const-string v4, "clipboard"

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 126
    :goto_0
    iput-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    .line 129
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 130
    .local v2, "userFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 131
    iget-object v3, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/ClipboardService$1;

    invoke-direct {v4, p0}, Lcom/android/server/ClipboardService$1;-><init>(Lcom/android/server/ClipboardService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    .line 142
    return-void

    .line 123
    .end local v2    # "userFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "clipboard"

    const-string v4, "AM dead"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/ClipboardService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/ClipboardService;
    .param p1, "x1"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/server/ClipboardService;->removeClipboard(I)V

    return-void
.end method

.method private final addActiveOwnerLocked(ILjava/lang/String;)V
    .locals 12
    .param p1, "uid"    # I
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 601
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    .line 602
    .local v6, "pm":Landroid/content/pm/IPackageManager;
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    .line 603
    .local v8, "targetUserHandle":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 605
    .local v3, "oldIdentity":J
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v6, p2, v9, v8}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 606
    .local v5, "pi":Landroid/content/pm/PackageInfo;
    if-nez v5, :cond_1

    .line 607
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unknown package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 613
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v9

    .line 616
    :cond_0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 618
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 621
    .local v1, "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v7

    .line 622
    .local v7, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v7, :cond_4

    .line 623
    invoke-virtual {v7}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v9

    if-nez v9, :cond_3

    .line 624
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 626
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 627
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 628
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    .line 627
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 609
    .end local v0    # "N":I
    .end local v1    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .end local v2    # "i":I
    .end local v7    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .restart local v5    # "pi":Landroid/content/pm/PackageInfo;
    :cond_1
    :try_start_1
    iget-object v9, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9, p1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v9

    if-nez v9, :cond_0

    .line 610
    new-instance v9, Ljava/lang/SecurityException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Calling uid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " does not own package "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 616
    .end local v5    # "pi":Landroid/content/pm/PackageInfo;
    :catchall_0
    move-exception v9

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v9

    .line 630
    .restart local v0    # "N":I
    .restart local v1    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v2    # "i":I
    .restart local v7    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_2
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 645
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_3
    :goto_1
    return-void

    .line 638
    :cond_4
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v9, :cond_3

    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 639
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 640
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_5

    .line 641
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v9, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lcom/android/server/ClipboardService;->grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V

    .line 640
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 643
    :cond_5
    iget-object v9, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v9, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private final checkDataOwnerLocked(Landroid/content/ClipData;I)V
    .locals 3
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "uid"    # I

    .prologue
    .line 573
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 574
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 575
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/android/server/ClipboardService;->checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V

    .line 574
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 577
    :cond_0
    return-void
.end method

.method private final checkItemOwnerLocked(Landroid/content/ClipData$Item;I)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "uid"    # I

    .prologue
    .line 563
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 564
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 566
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 567
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 568
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->checkUriOwnerLocked(Landroid/net/Uri;I)V

    .line 570
    :cond_1
    return-void
.end method

.method private final checkUriOwnerLocked(Landroid/net/Uri;I)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "uid"    # I

    .prologue
    .line 549
    const-string v2, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    :goto_0
    return-void

    .line 552
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 555
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v2, p2, v3, p1, v4}, Landroid/app/IActivityManager;->checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 556
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private final clearActiveOwnersLocked()V
    .locals 8

    .prologue
    .line 670
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    .line 671
    .local v1, "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->activePermissionOwners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->clear()V

    .line 674
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v4

    .line 675
    .local v4, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v4, :cond_2

    .line 676
    invoke-virtual {v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v6

    if-nez v6, :cond_2

    .line 677
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 678
    .local v5, "uid":I
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 722
    .end local v5    # "uid":I
    :cond_0
    return-void

    .line 681
    .restart local v5    # "uid":I
    :cond_1
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 682
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 683
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 682
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v5    # "uid":I
    :cond_2
    iget v6, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v6, :cond_5

    .line 691
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-nez v6, :cond_3

    .line 692
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v6, :cond_0

    .line 695
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 696
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 697
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 696
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 701
    .end local v0    # "N":I
    .end local v2    # "i":I
    :cond_3
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 702
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v0, :cond_4

    .line 703
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 702
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 706
    :cond_4
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v6, :cond_0

    .line 709
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    .line 710
    .local v3, "n":I
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_0

    .line 711
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 710
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 714
    .end local v0    # "N":I
    .end local v2    # "i":I
    .end local v3    # "n":I
    :cond_5
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v6, :cond_0

    .line 717
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    .line 718
    .restart local v0    # "N":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v0, :cond_0

    .line 719
    iget-object v6, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v6, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/ClipboardService;->revokeItemLocked(Landroid/content/ClipData$Item;)V

    .line 718
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;
    .locals 1

    .prologue
    .line 159
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/ClipboardService;->getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    return-object v0
.end method

.method private getClipboard(I)Lcom/android/server/ClipboardService$PerUserClipboard;
    .locals 3
    .param p1, "userId"    # I

    .prologue
    .line 163
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v2

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    .line 165
    .local v0, "puc":Lcom/android/server/ClipboardService$PerUserClipboard;
    if-nez v0, :cond_0

    .line 166
    new-instance v0, Lcom/android/server/ClipboardService$PerUserClipboard;

    .end local v0    # "puc":Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {v0, p0, p1}, Lcom/android/server/ClipboardService$PerUserClipboard;-><init>(Lcom/android/server/ClipboardService;I)V

    .line 167
    .restart local v0    # "puc":Lcom/android/server/ClipboardService$PerUserClipboard;
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 169
    :cond_0
    monitor-exit v2

    return-object v0

    .line 170
    .end local v0    # "puc":Lcom/android/server/ClipboardService$PerUserClipboard;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;
    .locals 3

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    const-string v2, "enterprise_policy"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 734
    .local v0, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    if-eqz v0, :cond_0

    .line 735
    invoke-virtual {v0}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 737
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private final grantItemLocked(Landroid/content/ClipData$Item;Ljava/lang/String;)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 591
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 592
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    .line 594
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 595
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 596
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/server/ClipboardService;->grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V

    .line 598
    :cond_1
    return-void
.end method

.method private final grantUriLocked(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "pkg"    # Ljava/lang/String;

    .prologue
    .line 580
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 582
    .local v6, "ident":J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v5, 0x1

    move-object v3, p2

    move-object v4, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/IActivityManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    :goto_0
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    return-void

    .line 586
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    .line 584
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private removeClipboard(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 174
    iget-object v1, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    monitor-enter v1

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/android/server/ClipboardService;->mClipboards:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 176
    monitor-exit v1

    .line 177
    return-void

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final revokeItemLocked(Landroid/content/ClipData$Item;)V
    .locals 2
    .param p1, "item"    # Landroid/content/ClipData$Item;

    .prologue
    .line 660
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 661
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 663
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 664
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 665
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/ClipboardService;->revokeUriLocked(Landroid/net/Uri;)V

    .line 667
    :cond_1
    return-void
.end method

.method private final revokeUriLocked(Landroid/net/Uri;)V
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 648
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 650
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAm:Landroid/app/IActivityManager;

    iget-object v3, p0, Lcom/android/server/ClipboardService;->mPermissionOwner:Landroid/os/IBinder;

    const/4 v4, 0x3

    invoke-interface {v2, v3, p1, v4}, Landroid/app/IActivityManager;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 655
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    return-void

    .line 655
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 653
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public UpdateClipboardDB(I)V
    .locals 1
    .param p1, "format"    # I

    .prologue
    .line 725
    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-eq v0, p1, :cond_0

    .line 726
    iput p1, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    .line 728
    :cond_0
    return-void
.end method

.method public addPrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;Ljava/lang/String;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 476
    monitor-enter p0

    .line 477
    :try_start_0
    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v0, :cond_0

    .line 478
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    .line 484
    :goto_0
    monitor-exit p0

    .line 485
    return-void

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    new-instance v1, Lcom/android/server/ClipboardService$ListenerInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-direct {v1, p0, v2, p2}, Lcom/android/server/ClipboardService$ListenerInfo;-><init>(Lcom/android/server/ClipboardService;ILjava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    goto :goto_0

    .line 484
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPrimaryClip(Ljava/lang/String;)Landroid/content/ClipData;
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 318
    monitor-enter p0

    .line 320
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v0

    .line 321
    .local v0, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v0, :cond_0

    .line 322
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 324
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 325
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 326
    monitor-exit p0

    .line 377
    :goto_0
    return-object v1

    .line 351
    :cond_0
    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 353
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 361
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v3, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v2, v3, v4, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    .line 363
    monitor-exit p0

    goto :goto_0

    .line 379
    .end local v0    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 355
    .restart local v0    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 356
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_1

    .line 365
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/server/ClipboardService;->addActiveOwnerLocked(ILjava/lang/String;)V

    .line 367
    if-eqz v0, :cond_4

    .line 368
    invoke-virtual {v0}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 369
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_0

    .line 374
    :cond_4
    iget v1, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v1, :cond_5

    .line 375
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    monitor-exit p0

    goto :goto_0

    .line 377
    :cond_5
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getPrimaryClipDescription(Ljava/lang/String;)Landroid/content/ClipDescription;
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 383
    monitor-enter p0

    .line 384
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v5, v6, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 386
    monitor-exit p0

    .line 420
    :goto_0
    return-object v3

    .line 388
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 391
    .local v0, "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 392
    .local v1, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_4

    .line 393
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 394
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 395
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 396
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 397
    monitor-exit p0

    goto :goto_0

    .line 422
    .end local v0    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .end local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 400
    .restart local v0    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 401
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 407
    :goto_1
    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-nez v4, :cond_4

    .line 408
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 409
    .local v2, "uid":I
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 410
    monitor-exit p0

    goto :goto_0

    .line 403
    .end local v2    # "uid":I
    :cond_2
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 404
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_1

    .line 412
    .restart local v2    # "uid":I
    :cond_3
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    monitor-exit p0

    goto :goto_0

    .line 417
    .end local v2    # "uid":I
    :cond_4
    iget v4, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v4, :cond_6

    .line 418
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_5

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 420
    :cond_6
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v4, :cond_7

    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v3

    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public hasClipboardText(Ljava/lang/String;)Z
    .locals 9
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 498
    monitor-enter p0

    .line 499
    :try_start_0
    iget-object v4, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v7, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v4, v7, v8, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 501
    monitor-exit p0

    move v4, v5

    .line 544
    :goto_0
    return v4

    .line 503
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 506
    .local v0, "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 507
    .local v1, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_1

    .line 508
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 509
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 510
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 511
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 512
    monitor-exit p0

    move v4, v5

    goto :goto_0

    .line 516
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 517
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 523
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-nez v4, :cond_5

    .line 524
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 525
    .local v3, "uid":I
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 526
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ClipData;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 527
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_3

    move v4, v6

    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 545
    .end local v0    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .end local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    .end local v2    # "text":Ljava/lang/CharSequence;
    .end local v3    # "uid":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 519
    .restart local v0    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 520
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_1

    .restart local v2    # "text":Ljava/lang/CharSequence;
    .restart local v3    # "uid":I
    :cond_3
    move v4, v5

    .line 527
    goto :goto_2

    .line 529
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_4
    monitor-exit p0

    move v4, v5

    goto :goto_0

    .line 533
    .end local v3    # "uid":I
    :cond_5
    iget v4, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v4, :cond_7

    .line 534
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_9

    .line 535
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 536
    .restart local v2    # "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_6

    move v4, v6

    :goto_3
    monitor-exit p0

    goto/16 :goto_0

    :cond_6
    move v4, v5

    goto :goto_3

    .line 539
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_7
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v4, :cond_9

    .line 540
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 541
    .restart local v2    # "text":Ljava/lang/CharSequence;
    if-eqz v2, :cond_8

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-lez v4, :cond_8

    move v4, v6

    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    :cond_8
    move v4, v5

    goto :goto_4

    .line 544
    .end local v2    # "text":Ljava/lang/CharSequence;
    :cond_9
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto/16 :goto_0
.end method

.method public hasPrimaryClip(Ljava/lang/String;)Z
    .locals 7
    .param p1, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 426
    monitor-enter p0

    .line 441
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    .line 442
    .local v0, "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 443
    .local v1, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v1, :cond_0

    .line 444
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 445
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 446
    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 447
    iget-object v3, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 448
    monitor-exit p0

    .line 469
    :goto_0
    return v2

    .line 452
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 453
    :cond_1
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 461
    iget-object v4, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v5, 0x1d

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v5, v6, p1}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4

    .line 463
    monitor-exit p0

    goto :goto_0

    .line 471
    .end local v0    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .end local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 455
    .restart local v0    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v1    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 456
    const/4 v4, 0x0

    iput-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 457
    iget-object v4, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_3

    move v2, v3

    :cond_3
    monitor-exit p0

    goto :goto_0

    .line 466
    :cond_4
    iget v4, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v4, :cond_6

    .line 467
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    if-eqz v4, :cond_5

    move v2, v3

    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 469
    :cond_6
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    if-eqz v4, :cond_7

    move v2, v3

    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 148
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IClipboard$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 151
    const-string v1, "clipboard"

    const-string v2, "Exception: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :cond_0
    throw v0
.end method

.method public removePrimaryClipChangedListener(Landroid/content/IOnPrimaryClipChangedListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/content/IOnPrimaryClipChangedListener;

    .prologue
    .line 488
    monitor-enter p0

    .line 489
    :try_start_0
    iget v0, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v0, :cond_0

    .line 490
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 494
    :goto_0
    monitor-exit p0

    .line 495
    return-void

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    goto :goto_0

    .line 494
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setPrimaryClip(Landroid/content/ClipData;Ljava/lang/String;)V
    .locals 15
    .param p1, "clip"    # Landroid/content/ClipData;
    .param p2, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 180
    monitor-enter p0

    .line 181
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getClipboard()Lcom/android/server/ClipboardService$PerUserClipboard;

    move-result-object v2

    .line 184
    .local v2, "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v10

    .line 185
    .local v10, "rp":Landroid/app/enterprise/RestrictionPolicy;
    if-eqz v10, :cond_0

    .line 186
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v11

    if-nez v11, :cond_0

    .line 187
    const/4 v11, 0x0

    iput-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 188
    const/4 v11, 0x0

    iput-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 189
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 190
    monitor-exit p0

    .line 315
    :goto_0
    return-void

    .line 196
    :cond_0
    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 197
    :cond_1
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 204
    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v11

    if-gtz v11, :cond_3

    .line 205
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "No items"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 314
    .end local v2    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .end local v10    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :catchall_0
    move-exception v11

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 199
    .restart local v2    # "clipboard":Lcom/android/server/ClipboardService$PerUserClipboard;
    .restart local v10    # "rp":Landroid/app/enterprise/RestrictionPolicy;
    :cond_2
    const/4 v11, 0x0

    :try_start_1
    iput-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 200
    const/4 v11, 0x0

    iput-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    goto :goto_1

    .line 207
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 208
    .local v1, "callingUid":I
    iget-object v11, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x1e

    move-object/from16 v0, p2

    invoke-virtual {v11, v12, v1, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v11

    if-eqz v11, :cond_4

    .line 210
    monitor-exit p0

    goto :goto_0

    .line 212
    :cond_4
    move-object/from16 v0, p1

    invoke-direct {p0, v0, v1}, Lcom/android/server/ClipboardService;->checkDataOwnerLocked(Landroid/content/ClipData;I)V

    .line 213
    invoke-direct {p0}, Lcom/android/server/ClipboardService;->clearActiveOwnersLocked()V

    .line 234
    if-eqz v10, :cond_6

    invoke-virtual {v10}, Landroid/app/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v11

    if-nez v11, :cond_6

    .line 235
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipByUid:Ljava/util/Map;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-interface {v11, v12, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ClipData;

    .line 238
    .local v9, "ret":Landroid/content/ClipData;
    if-eqz v9, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Landroid/content/ClipData;->checkEquals(Landroid/content/ClipData;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 239
    iget-object v11, p0, Lcom/android/server/ClipboardService;->mContext:Landroid/content/Context;

    const v12, 0x1040b3a

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .line 242
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 244
    .end local v9    # "ret":Landroid/content/ClipData;
    :cond_6
    iget v11, p0, Lcom/android/server/ClipboardService;->mContainerID:I

    if-nez v11, :cond_8

    .line 245
    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClip:Landroid/content/ClipData;

    .line 246
    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;

    .line 252
    :goto_2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5

    .line 253
    .local v5, "ident":J
    iget v11, p0, Lcom/android/server/ClipboardService;->mContainerID:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v11, :cond_b

    .line 255
    :try_start_2
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v8

    .line 256
    .local v8, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_3
    if-ge v4, v8, :cond_9

    .line 258
    :try_start_3
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ClipboardService$ListenerInfo;

    .line 260
    .local v7, "li":Lcom/android/server/ClipboardService$ListenerInfo;
    iget-object v11, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x1d

    iget v13, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mUid:I

    iget-object v14, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_7

    .line 262
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v11}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 256
    .end local v7    # "li":Lcom/android/server/ClipboardService$ListenerInfo;
    :cond_7
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 248
    .end local v4    # "i":I
    .end local v5    # "ident":J
    .end local v8    # "n":I
    :cond_8
    :try_start_4
    move-object/from16 v0, p1

    iput-object v0, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipForKNOX:Landroid/content/ClipData;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 271
    .restart local v4    # "i":I
    .restart local v5    # "ident":J
    .restart local v8    # "n":I
    :cond_9
    :try_start_5
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v3

    .line 272
    .local v3, "count":I
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v3, :cond_d

    .line 274
    :try_start_6
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ClipboardService$ListenerInfo;

    .line 276
    .restart local v7    # "li":Lcom/android/server/ClipboardService$ListenerInfo;
    iget-object v11, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x1d

    iget v13, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mUid:I

    iget-object v14, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_a

    .line 278
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v11}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 272
    .end local v7    # "li":Lcom/android/server/ClipboardService$ListenerInfo;
    :cond_a
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 288
    .end local v3    # "count":I
    .end local v4    # "i":I
    .end local v8    # "n":I
    :catchall_1
    move-exception v11

    :try_start_7
    iget-object v12, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 289
    iget-object v12, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 290
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 288
    throw v11

    .line 293
    :cond_b
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result v8

    .line 295
    .restart local v8    # "n":I
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    if-ge v4, v8, :cond_e

    .line 297
    :try_start_8
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ClipboardService$ListenerInfo;

    .line 299
    .restart local v7    # "li":Lcom/android/server/ClipboardService$ListenerInfo;
    iget-object v11, p0, Lcom/android/server/ClipboardService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v12, 0x1d

    iget v13, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mUid:I

    iget-object v14, v7, Lcom/android/server/ClipboardService$ListenerInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12, v13, v14}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v11

    if-nez v11, :cond_c

    .line 301
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v11

    check-cast v11, Landroid/content/IOnPrimaryClipChangedListener;

    invoke-interface {v11}, Landroid/content/IOnPrimaryClipChangedListener;->dispatchPrimaryClipChanged()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 295
    .end local v7    # "li":Lcom/android/server/ClipboardService$ListenerInfo;
    :cond_c
    :goto_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 310
    :catchall_2
    move-exception v11

    :try_start_9
    iget-object v12, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 311
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 310
    throw v11

    .line 288
    .restart local v3    # "count":I
    :cond_d
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 289
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 290
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 314
    .end local v3    # "count":I
    :goto_9
    monitor-exit p0

    goto/16 :goto_0

    .line 310
    :cond_e
    iget-object v11, v2, Lcom/android/server/ClipboardService$PerUserClipboard;->primaryClipListenersForKNOX:Landroid/os/RemoteCallbackList;

    invoke-virtual {v11}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 311
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_9

    .line 304
    :catch_0
    move-exception v11

    goto :goto_8

    .line 281
    .restart local v3    # "count":I
    :catch_1
    move-exception v11

    goto :goto_6

    .line 265
    .end local v3    # "count":I
    :catch_2
    move-exception v11

    goto/16 :goto_4
.end method
