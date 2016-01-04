.class public Lcom/android/server/PowerSaving3LMService;
.super Landroid/os/IPowerSaving3LMService$Stub;
.source "PowerSaving3LMService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/PowerSaving3LMService$1;,
        Lcom/android/server/PowerSaving3LMService$RulesEngine;,
        Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;,
        Lcom/android/server/PowerSaving3LMService$UserReceiver;,
        Lcom/android/server/PowerSaving3LMService$ScreenReceiver;,
        Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;,
        Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "PowerSavingService"


# instance fields
.field private isSimulatorPermitted:Z

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mForgroundPackage:Ljava/lang/String;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerSavingEnabled:Z

.field private mPublicKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/PowerSaving3LMService$PowerSavingData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Landroid/os/IPowerSaving3LMService$Stub;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    .line 47
    iput v1, p0, Lcom/android/server/PowerSaving3LMService;->mCurrentUserId:I

    .line 52
    iput-boolean v1, p0, Lcom/android/server/PowerSaving3LMService;->isSimulatorPermitted:Z

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mForgroundPackage:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mPublicKeyList:Ljava/util/ArrayList;

    .line 57
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/PowerSaving3LMService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;

    .prologue
    .line 37
    iget-boolean v0, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/PowerSaving3LMService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PowerSaving3LMService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->setForgroundPackage()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/PowerSaving3LMService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->enablePowerSaving()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/PowerSaving3LMService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/PowerSaving3LMService;->setForgroundPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/PowerSaving3LMService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->disablePowerSaving()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/PowerSaving3LMService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;
    .param p1, "x1"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/PowerSaving3LMService;->removeUserData(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/android/server/PowerSaving3LMService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/PowerSaving3LMService;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/server/PowerSaving3LMService;->mCurrentUserId:I

    return p1
.end method

.method private disablePowerSaving()V
    .locals 1

    .prologue
    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    .line 208
    return-void
.end method

.method private enablePowerSaving()V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    .line 216
    return-void
.end method

.method private getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    .locals 5

    .prologue
    .line 237
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 238
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 240
    .local v2, "userId":I
    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    monitor-enter v4

    .line 241
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    .line 242
    .local v1, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    if-nez v1, :cond_0

    .line 243
    new-instance v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    .end local v1    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    invoke-direct {v1, p0, v2}, Lcom/android/server/PowerSaving3LMService$PowerSavingData;-><init>(Lcom/android/server/PowerSaving3LMService;I)V

    .line 244
    .restart local v1    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 246
    :cond_0
    monitor-exit v4

    return-object v1

    .line 247
    .end local v1    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private isAccessPermitted()Z
    .locals 25

    .prologue
    .line 258
    const/16 v18, 0x0

    .line 259
    .local v18, "permitted":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 260
    .local v6, "callerUid":I
    const-wide/16 v11, -0x1

    .line 262
    .local v11, "ident":J
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerSaving3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v16

    .line 263
    .local v16, "packages":[Ljava/lang/String;
    if-eqz v16, :cond_3

    .line 264
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v11

    .line 266
    move-object/from16 v3, v16

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    move v10, v8

    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v13    # "len$":I
    .local v10, "i$":I
    :goto_0
    if-ge v10, v13, :cond_3

    aget-object v19, v3, v10

    .line 268
    .local v19, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerSaving3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v22, v0

    const/16 v23, 0x40

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 270
    .local v15, "packageInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PowerSaving3LMService;->isSimulatorPermitted:Z

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    const-string v22, "com.samsung.psl"

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 271
    const-string v22, "PowerSavingService"

    const-string v23, "allowing com.sec.jpnmdm"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    const/16 v18, 0x1

    .line 273
    const/16 v22, 0x1

    .line 293
    const-wide/16 v23, -0x1

    cmp-long v23, v11, v23

    if-eqz v23, :cond_0

    .line 294
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 306
    .end local v10    # "i$":I
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "packages":[Ljava/lang/String;
    .end local v19    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_1
    return v22

    .line 276
    .restart local v10    # "i$":I
    .restart local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v16    # "packages":[Ljava/lang/String;
    .restart local v19    # "pkg":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v4, v15, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .local v4, "arr$":[Landroid/content/pm/Signature;
    array-length v14, v4

    .local v14, "len$":I
    const/4 v8, 0x0

    .end local v10    # "i$":I
    .restart local v8    # "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .local v9, "i$":I
    :goto_2
    if-ge v9, v14, :cond_7

    aget-object v20, v4, v9

    .line 277
    .local v20, "pkgSignature":Landroid/content/pm/Signature;
    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    .line 278
    .local v5, "blob":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerSaving3LMService;->mPublicKeyList:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .end local v9    # "i$":I
    .local v8, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;

    .line 279
    .local v21, "publicKey":Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;->comparePublicKey([B)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    .line 280
    .local v7, "compare":Z
    if-eqz v7, :cond_2

    .line 281
    const/16 v18, 0x1

    .line 293
    .end local v4    # "arr$":[Landroid/content/pm/Signature;
    .end local v5    # "blob":[B
    .end local v7    # "compare":Z
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v14    # "len$":I
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "pkg":Ljava/lang/String;
    .end local v20    # "pkgSignature":Landroid/content/pm/Signature;
    .end local v21    # "publicKey":Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;
    :cond_3
    const-wide/16 v22, -0x1

    cmp-long v22, v11, v22

    if-eqz v22, :cond_4

    .line 294
    .end local v16    # "packages":[Ljava/lang/String;
    :goto_3
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 298
    :cond_4
    if-nez v18, :cond_5

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PowerSaving3LMService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "com.threelm.android.permission.POWER_SAVING_3LM_SERVICE"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v17

    .line 300
    .local v17, "permission":I
    if-nez v17, :cond_5

    .line 301
    const/16 v18, 0x1

    .end local v17    # "permission":I
    :cond_5
    move/from16 v22, v18

    .line 306
    goto :goto_1

    .line 276
    .restart local v4    # "arr$":[Landroid/content/pm/Signature;
    .restart local v5    # "blob":[B
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v14    # "len$":I
    .restart local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    .restart local v16    # "packages":[Ljava/lang/String;
    .restart local v19    # "pkg":Ljava/lang/String;
    .restart local v20    # "pkgSignature":Landroid/content/pm/Signature;
    :cond_6
    add-int/lit8 v8, v9, 0x1

    .local v8, "i$":I
    move v9, v8

    .end local v8    # "i$":I
    .restart local v9    # "i$":I
    goto :goto_2

    .line 266
    .end local v5    # "blob":[B
    .end local v20    # "pkgSignature":Landroid/content/pm/Signature;
    :cond_7
    add-int/lit8 v8, v10, 0x1

    .end local v9    # "i$":I
    .restart local v8    # "i$":I
    move v10, v8

    .end local v8    # "i$":I
    .restart local v10    # "i$":I
    goto/16 :goto_0

    .line 293
    .end local v4    # "arr$":[Landroid/content/pm/Signature;
    .end local v10    # "i$":I
    .end local v14    # "len$":I
    .end local v15    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v16    # "packages":[Ljava/lang/String;
    .end local v19    # "pkg":Ljava/lang/String;
    :catchall_0
    move-exception v22

    const-wide/16 v23, -0x1

    cmp-long v23, v11, v23

    if-eqz v23, :cond_8

    .line 294
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 293
    :cond_8
    throw v22

    .line 290
    :catch_0
    move-exception v22

    .line 293
    const-wide/16 v22, -0x1

    cmp-long v22, v11, v22

    if-eqz v22, :cond_4

    goto :goto_3
.end method

.method private removeUserData(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 252
    iget-object v1, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerSaving3LMService;->mUserData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 254
    monitor-exit v1

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setForgroundPackage()V
    .locals 6

    .prologue
    .line 225
    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v3, :cond_0

    .line 227
    :try_start_0
    iget-object v3, p0, Lcom/android/server/PowerSaving3LMService;->mActivityManager:Landroid/app/ActivityManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 228
    .local v2, "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "fpackageName":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/PowerSaving3LMService;->setForgroundPackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    .end local v1    # "fpackageName":Ljava/lang/String;
    .end local v2    # "runningTask":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    :cond_0
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "PowerSavingService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setForgroundPackage(Ljava/lang/String;)V
    .locals 0
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/server/PowerSaving3LMService;->mForgroundPackage:Ljava/lang/String;

    .line 221
    return-void
.end method


# virtual methods
.method public disablePackageWhilePowerSaving(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    .line 146
    .local v0, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iget-object v2, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    monitor-enter v2

    .line 148
    :try_start_0
    iget-object v1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v3}, Lcom/android/server/PowerSaving3LMService$RulesEngine;->updatePolicy(Ljava/lang/String;Z)Z

    .line 149
    monitor-exit v2

    .line 154
    return-void

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 152
    .end local v0    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public enablePackageWhilePowerSaving(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 163
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    .line 165
    .local v0, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iget-object v2, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    monitor-enter v2

    .line 167
    :try_start_0
    iget-object v1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Lcom/android/server/PowerSaving3LMService$RulesEngine;->updatePolicy(Ljava/lang/String;Z)Z

    .line 168
    monitor-exit v2

    .line 173
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 171
    .end local v0    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public getIsSimulatorPermitted()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/server/PowerSaving3LMService;->isSimulatorPermitted:Z

    return v0
.end method

.method public getPowerSavingMode()Z
    .locals 2

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    .line 110
    .local v0, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iget-boolean v1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mPowerSavingSettingsEnabled:Z

    return v1

    .line 113
    .end local v0    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/server/PowerSaving3LMService;->mContext:Landroid/content/Context;

    .line 62
    const-string v8, "activity"

    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    iput-object v8, p0, Lcom/android/server/PowerSaving3LMService;->mActivityManager:Landroid/app/ActivityManager;

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/PowerSaving3LMService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 66
    .local v7, "resources":Landroid/content/res/Resources;
    const v8, 0x107004e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    .line 67
    .local v5, "powerSavingKey":[Ljava/lang/String;
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v3, v0, v1

    .line 68
    .local v3, "key":Ljava/lang/String;
    new-instance v6, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;

    invoke-direct {v6, v3}, Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;-><init>(Ljava/lang/String;)V

    .line 69
    .local v6, "publicKey":Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;
    iget-object v8, p0, Lcom/android/server/PowerSaving3LMService;->mPublicKeyList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "publicKey":Lcom/android/server/PowerSaving3LMService$PublicKeyCompare;
    :cond_0
    new-instance v8, Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;

    invoke-direct {v8, p0, v11}, Lcom/android/server/PowerSaving3LMService$BootCompletedReceiver;-><init>(Lcom/android/server/PowerSaving3LMService;Lcom/android/server/PowerSaving3LMService$1;)V

    new-instance v9, Landroid/content/IntentFilter;

    const-string v10, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v9, v10}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 73
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 74
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v8, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    new-instance v8, Lcom/android/server/PowerSaving3LMService$UserReceiver;

    invoke-direct {v8, p0, v11}, Lcom/android/server/PowerSaving3LMService$UserReceiver;-><init>(Lcom/android/server/PowerSaving3LMService;Lcom/android/server/PowerSaving3LMService$1;)V

    invoke-virtual {p1, v8, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method public isPackageDisabledWhilePowerSaving(Ljava/lang/String;)Z
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 184
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 185
    .local v0, "callingUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 186
    .local v3, "userId":I
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v1

    .line 187
    .local v1, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iget-boolean v4, v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mPowerSavingSettingsEnabled:Z

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/PowerSaving3LMService;->mPowerSavingEnabled:Z

    if-nez v4, :cond_1

    .line 188
    :cond_0
    const/4 v2, 0x0

    .line 199
    .local v2, "disabled":Z
    :goto_0
    return v2

    .line 190
    .end local v2    # "disabled":Z
    :cond_1
    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService;->mForgroundPackage:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/PowerSaving3LMService;->mForgroundPackage:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/server/PowerSaving3LMService;->mCurrentUserId:I

    if-ne v3, v4, :cond_3

    .line 191
    :cond_2
    const/4 v2, 0x0

    .restart local v2    # "disabled":Z
    goto :goto_0

    .line 194
    .end local v2    # "disabled":Z
    :cond_3
    iget-object v5, v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    monitor-enter v5

    .line 195
    :try_start_0
    iget-object v4, v1, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    invoke-virtual {v4, p1}, Lcom/android/server/PowerSaving3LMService$RulesEngine;->checkPolicy(Ljava/lang/String;)Z

    move-result v2

    .line 197
    .restart local v2    # "disabled":Z
    monitor-exit v5

    goto :goto_0

    .end local v2    # "disabled":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x1

    return v0
.end method

.method public setAllowedPackages(Ljava/util/Map;)Z
    .locals 3
    .param p1, "pkgNames"    # Ljava/util/Map;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    .line 127
    .local v0, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iget-object v2, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    monitor-enter v2

    .line 129
    :try_start_0
    iget-object v1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mDeniedPackagesWhilePowerSaving:Lcom/android/server/PowerSaving3LMService$RulesEngine;

    invoke-virtual {v1, p1}, Lcom/android/server/PowerSaving3LMService$RulesEngine;->loadPolicy(Ljava/util/Map;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 133
    .end local v0    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public setPowerSavingMode(Z)V
    .locals 2
    .param p1, "mode"    # Z

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->isAccessPermitted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/android/server/PowerSaving3LMService;->getUserData()Lcom/android/server/PowerSaving3LMService$PowerSavingData;

    move-result-object v0

    .line 98
    .local v0, "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    iput-boolean p1, v0, Lcom/android/server/PowerSaving3LMService$PowerSavingData;->mPowerSavingSettingsEnabled:Z

    .line 103
    return-void

    .line 101
    .end local v0    # "data":Lcom/android/server/PowerSaving3LMService$PowerSavingData;
    :cond_0
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1}, Ljava/lang/SecurityException;-><init>()V

    throw v1
.end method

.method public setisSimulatorPermitted(Z)V
    .locals 3
    .param p1, "value"    # Z

    .prologue
    .line 87
    const-string v0, "PowerSavingService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PowerSaving setisSimulatorPermitted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-boolean p1, p0, Lcom/android/server/PowerSaving3LMService;->isSimulatorPermitted:Z

    .line 89
    const-string v0, "EcoModeSimulator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimulatorPermitted is set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/PowerSaving3LMService;->isSimulatorPermitted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-void
.end method
