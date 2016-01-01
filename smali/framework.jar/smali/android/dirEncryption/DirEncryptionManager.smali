.class public Landroid/dirEncryption/DirEncryptionManager;
.super Ljava/lang/Object;
.source "DirEncryptionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dirEncryption/DirEncryptionManager$Error;,
        Landroid/dirEncryption/DirEncryptionManager$Status;
    }
.end annotation


# static fields
.field public static final ADMIN_START:Ljava/lang/String; = "adminStart"

.field public static final CHANGE_ECRYPTFS_PASSWORD:I = 0xb

.field private static final DEBUG:Z = true

.field public static final DECRYPT:I = 0x3

.field private static final DIR_ENCRYPTION:Z

.field public static final ENCRYPT:I = 0x2

.field public static final ENCRYPT_FULL_OFF:I = 0x5

.field public static final ENCRYPT_FULL_ON:I = 0x4

.field public static final ERR_FEATURE_UNAVAILABLE:I = 0xc8

.field public static final ERR_INVALID_PARAMETER:I = 0xcb

.field public static final ERR_INVALID_PERMISSION:I = 0xcc

.field public static final ERR_NOK:I = 0xc9

.field public static final ERR_SD_NOT_MOUNTED:I = 0xca

.field public static final EXCL_MEDIA_OFF:I = 0x7

.field public static final EXCL_MEDIA_ON:I = 0x6

.field public static final FAILURE:Z = false

.field public static final FLE_KEY_STORE:Ljava/lang/String; = "/efs/"

.field public static final FLE_KEY_STORE_LEGACY:Ljava/lang/String; = "/data/system/"

.field public static final INTERNAL_STORAGE_PATH:Ljava/lang/String; = "/mnt/sdcard"

.field public static final MOUNT_PATH_STATUS:I = 0xc

.field public static final MOVE_MOUNT:Ljava/lang/String; = "MoveMount"

.field private static final MSG_BASE:I = 0x0

.field private static final MSG_ERR_BASE:I = 0xc8

.field public static final NAME:Ljava/lang/String; = "DirEncryptService"

.field public static final OK:I = 0xd

.field public static final PERMISSION_RECEIVE_SDCARD_ENCRYPTION:Ljava/lang/String; = "android.permission.RECEIVE_SDCARD_ENCRYPTION"

.field public static final POLICY_ALREADY_SET:I = 0xa

.field public static final POLICY_CAN_NOT_BE_SET_UNDER_BUSY_STATE:I = 0xf

.field public static final POLICY_NOT_SAVED:I = 0x9

.field public static final POLICY_SAVED:I = 0x8

.field public static final SDCARD_ENCRYPTION_COMPLETED:Ljava/lang/String; = "android.intent.action.SDCARD_ENCRYPTION_COMPLETED"

.field public static final SDCARD_ENCRYPTION_REQUIRED:Ljava/lang/String; = "android.intent.action.SDCARD_ENCRYPTION_REQUIRED"

.field public static final SD_CARD_ENCRYPTION_ACTION:Ljava/lang/String; = "android.app.action.START_SDCARD_ENCRYPTION"

.field public static final SD_CARD_ENCRYPTION_UNMOUNT:Ljava/lang/String; = "android.app.action.UNMOUNT_SDCARD_ENCRYPTION"

.field public static SECURITY_POLICY_NOTIFICATION_ID:I = 0x0

.field public static final STATUS_BUSY:Ljava/lang/String; = "busy"

.field public static final STATUS_DONE:Ljava/lang/String; = "done"

.field public static final STATUS_FREE:Ljava/lang/String; = "free"

.field public static final STATUS_MOUNT:Ljava/lang/String; = "Mount"

.field public static final SUCCESS:Z = true

.field private static final TAG:Ljava/lang/String; = "DirEncryptionManager"

.field public static final VOLUME_STATE_HIDDEN:Ljava/lang/String; = "checking"

.field private static mPolicyChanged:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDew:Landroid/dirEncryption/DirEncryptionWrapper;

.field private m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    .line 66
    const v0, -0x35014542    # -8346975.0f

    sput v0, Landroid/dirEncryption/DirEncryptionManager;->SECURITY_POLICY_NOTIFICATION_ID:I

    .line 133
    const/4 v0, 0x0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->mPolicyChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 130
    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    .line 131
    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    .line 132
    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 141
    iput-object p1, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    .line 143
    new-instance v0, Landroid/dirEncryption/DirEncryptionWrapper;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    .line 144
    const-string v0, "DirEncryptService"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/storage/IDirEncryptService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IDirEncryptService;

    move-result-object v0

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 146
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v0, :cond_0

    .line 147
    const-string v0, "Unable to get DirEncryptService instance."

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 149
    :cond_0
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    if-nez v0, :cond_1

    .line 150
    const-string v0, "Dir Encryption not available"

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 151
    iput-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    .line 153
    :cond_1
    return-void
.end method

.method public static isEncryptionFeatureEnabled()Z
    .locals 1

    .prologue
    .line 194
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    if-eqz v0, :cond_0

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 137
    const-string v0, "DirEncryptionManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method


# virtual methods
.method public changeEcryptfsPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;I)I
    .locals 9
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "mountPoint"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    .param p5, "containerId"    # I

    .prologue
    .line 614
    const/16 v7, 0xc8

    .line 616
    .local v7, "result":I
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v0, :cond_0

    move v8, v7

    .line 623
    .end local v7    # "result":I
    .local v8, "result":I
    :goto_0
    return v8

    .line 618
    .end local v8    # "result":I
    .restart local v7    # "result":I
    :cond_0
    :try_start_0
    const-string v0, "Calling changeEcryptfsPassword in DirEncryptService"

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 619
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Landroid/os/storage/IDirEncryptService;->changeEcryptfsPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    :goto_1
    move v8, v7

    .line 623
    .end local v7    # "result":I
    .restart local v8    # "result":I
    goto :goto_0

    .line 620
    .end local v8    # "result":I
    .restart local v7    # "result":I
    :catch_0
    move-exception v6

    .line 621
    .local v6, "re":Landroid/os/RemoteException;
    const-string v0, "Unable to communicate with DirEncryptService"

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public encryptStorage(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 383
    const/16 v1, 0xc8

    .line 385
    .local v1, "result":I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .line 393
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 389
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1}, Landroid/os/storage/IDirEncryptService;->encryptStorage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 393
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 390
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 391
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getAdditionalSpaceRequired()I
    .locals 4

    .prologue
    .line 447
    const/16 v1, 0xc8

    .line 449
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 460
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 452
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_1

    move v2, v1

    .line 453
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 456
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getAdditionalSpaceRequired()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 460
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 457
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 458
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCurrentStatus()I
    .locals 4

    .prologue
    .line 402
    const/16 v1, 0xc8

    .line 404
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 416
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 407
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_1

    move v2, v1

    .line 408
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 411
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getCurrentStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 416
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 412
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 413
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getCurrentUserID()I
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v0

    return v0
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getKeyguardStoredPasswordQuality()I

    move-result v0

    return v0
.end method

.method public getLastError()I
    .locals 4

    .prologue
    .line 425
    const/16 v1, 0xc8

    .line 427
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 438
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 430
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_1

    move v2, v1

    .line 431
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 434
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->getLastError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 438
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 435
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 436
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPolicyChanged()Z
    .locals 1

    .prologue
    .line 510
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->mPolicyChanged:Z

    return v0
.end method

.method public getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 3

    .prologue
    .line 469
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v2, :cond_0

    .line 470
    const/4 v0, 0x0

    .line 478
    :goto_0
    return-object v0

    .line 472
    :cond_0
    const/4 v0, 0x0

    .line 474
    .local v0, "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_start_0
    iget-object v2, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v2}, Landroid/os/storage/IDirEncryptService;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 475
    :catch_0
    move-exception v1

    .line 476
    .local v1, "re":Landroid/os/RemoteException;
    const-string v2, "Unable to communicate with DirEncryptService"

    invoke-static {v2}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSavedUserID()I
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getSavedUserID()I

    move-result v0

    return v0
.end method

.method public getUserDiff()Z
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getUserDiff()Z

    move-result v0

    return v0
.end method

.method public getVolumeState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEncryptionSupported()Z
    .locals 1

    .prologue
    .line 206
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionManager;->DIR_ENCRYPTION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->isExternalSDRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->getCurrentUserID()I

    move-result v0

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x1

    .line 209
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExternalSDRemovable()Z
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->isExternalSDRemovable()Z

    move-result v0

    return v0
.end method

.method public isPathMounted(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;)Z
    .locals 5
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .prologue
    .line 637
    const/4 v1, 0x0

    .line 638
    .local v1, "result":I
    const/4 v2, 0x0

    .line 639
    .local v2, "value":Z
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v4, :cond_0

    move v3, v2

    .line 649
    .end local v2    # "value":Z
    .local v3, "value":I
    :goto_0
    return v3

    .line 641
    .end local v3    # "value":I
    .restart local v2    # "value":Z
    :cond_0
    :try_start_0
    const-string v4, "Calling isPathMounted in DirEncryptService"

    invoke-static {v4}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 642
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v4, p1, p2}, Landroid/os/storage/IDirEncryptService;->isPathMounted(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 646
    :goto_1
    if-nez v1, :cond_1

    .line 647
    const/4 v2, 0x0

    :goto_2
    move v3, v2

    .line 649
    .restart local v3    # "value":I
    goto :goto_0

    .line 643
    .end local v3    # "value":I
    :catch_0
    move-exception v0

    .line 644
    .local v0, "re":Landroid/os/RemoteException;
    const-string v4, "Unable to communicate with DirEncryptService"

    invoke-static {v4}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 648
    .end local v0    # "re":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public isStorageCardEncryptionPoliciesApplied()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 332
    const/4 v1, 0x0

    .line 334
    .local v1, "result":Z
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v1

    .line 345
    .end local v1    # "result":Z
    .local v2, "result":I
    :goto_0
    return v2

    .line 337
    .end local v2    # "result":I
    .restart local v1    # "result":Z
    :cond_0
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v4, :cond_1

    move v2, v1

    .line 338
    .restart local v2    # "result":I
    goto :goto_0

    .line 341
    .end local v2    # "result":I
    :cond_1
    :try_start_0
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v4}, Landroid/os/storage/IDirEncryptService;->isStorageCardEncryptionPoliciesApplied()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v3, :cond_2

    move v1, v3

    :goto_1
    move v2, v1

    .line 345
    .restart local v2    # "result":I
    goto :goto_0

    .line 341
    .end local v2    # "result":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 342
    :catch_0
    move-exception v0

    .line 343
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I
    .locals 12
    .param p1, "sourcePath"    # Ljava/lang/String;
    .param p2, "mountPoint"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "mountAndEncrypt"    # Z
    .param p5, "excludeMediaTypes"    # I
    .param p6, "containerId"    # I
    .param p7, "state"    # I
    .param p8, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;

    .prologue
    .line 535
    const/16 v10, 0xc8

    .line 537
    .local v10, "result":I
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v0, :cond_0

    move v11, v10

    .line 545
    .end local v10    # "result":I
    .local v11, "result":I
    :goto_0
    return v11

    .line 539
    .end local v11    # "result":I
    .restart local v10    # "result":I
    :cond_0
    :try_start_0
    const-string v0, "Calling mountEcryptfsStorage in DirEncryptService"

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 540
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Landroid/os/storage/IDirEncryptService;->mountEcryptfsStorage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIILandroid/dirEncryption/IDirEncryptionManagerCallBack;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    :goto_1
    move v11, v10

    .line 545
    .end local v10    # "result":I
    .restart local v11    # "result":I
    goto :goto_0

    .line 542
    .end local v11    # "result":I
    .restart local v10    # "result":I
    :catch_0
    move-exception v9

    .line 543
    .local v9, "re":Landroid/os/RemoteException;
    const-string v0, "mountEcryptfsStorage Unable to communicate with DirEncryptService"

    invoke-static {v0}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public mountVolume()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z

    move-result v0

    return v0
.end method

.method public registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 162
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    .line 170
    :goto_0
    return-void

    .line 166
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->registerListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setNullSDCardPassword()I
    .locals 4

    .prologue
    .line 493
    const/16 v1, 0xc8

    .line 494
    .local v1, "result":I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .line 502
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 498
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3}, Landroid/os/storage/IDirEncryptService;->setNullSDCardPassword()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 502
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 499
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 500
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPassword(Ljava/lang/String;)I
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 357
    const/16 v1, 0xc8

    .line 359
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 371
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 362
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_1

    move v2, v1

    .line 363
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 366
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1}, Landroid/os/storage/IDirEncryptService;->setPassword(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 371
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 367
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 368
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setPolicyChanged(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 506
    sput-boolean p1, Landroid/dirEncryption/DirEncryptionManager;->mPolicyChanged:Z

    .line 507
    return-void
.end method

.method public setSavedUserID(I)V
    .locals 1
    .param p1, "in"    # I

    .prologue
    .line 273
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionWrapper;->setSavedUserID(I)V

    .line 274
    return-void
.end method

.method public setStorageCardEncryptionPolicy(III)I
    .locals 5
    .param p1, "encType"    # I
    .param p2, "fullEnc"    # I
    .param p3, "excludeMediaFiles"    # I

    .prologue
    .line 301
    const/16 v1, 0xc8

    .line 303
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->isEncryptionSupported()Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    .line 324
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 306
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_1

    move v2, v1

    .line 307
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 310
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1, p2, p3}, Landroid/os/storage/IDirEncryptService;->setStorageCardEncryptionPolicy(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 316
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setStorageCardEncryptionPolicy result : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 317
    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    .line 318
    :cond_2
    const-string v3, "result : POLICY_SAVED || POLICY_ALREADY_SET"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->unmountSDCardByAdmin()V

    .line 322
    :cond_3
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Landroid/dirEncryption/DirEncryptionManager;->setPolicyChanged(Z)V

    move v2, v1

    .line 324
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 311
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 312
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public setUserDiff(Z)V
    .locals 1
    .param p1, "in"    # Z

    .prologue
    .line 264
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0, p1}, Landroid/dirEncryption/DirEncryptionWrapper;->setUserDiff(Z)V

    .line 265
    return-void
.end method

.method public unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I
    .locals 4
    .param p1, "mountPoint"    # Ljava/lang/String;
    .param p2, "callback"    # Landroid/dirEncryption/IDirEncryptionManagerCallBack;
    .param p3, "uninstallOrStop"    # I
    .param p4, "containerId"    # I

    .prologue
    .line 589
    const/16 v1, 0xc8

    .line 591
    .local v1, "result":I
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v3, :cond_0

    move v2, v1

    .line 598
    .end local v1    # "result":I
    .local v2, "result":I
    :goto_0
    return v2

    .line 593
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    :try_start_0
    const-string v3, "Calling unmountEcryptfsStorage in DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    .line 594
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v3, p1, p2, p3, p4}, Landroid/os/storage/IDirEncryptService;->unmountEcryptfsStorage(Ljava/lang/String;Landroid/dirEncryption/IDirEncryptionManagerCallBack;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    move v2, v1

    .line 598
    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0

    .line 595
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :catch_0
    move-exception v0

    .line 596
    .local v0, "re":Landroid/os/RemoteException;
    const-string v3, "Unable to communicate with DirEncryptService"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public unmountSDCardByAdmin()V
    .locals 2

    .prologue
    .line 482
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    .line 490
    :goto_0
    return-void

    .line 486
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1}, Landroid/os/storage/IDirEncryptService;->unmountSDCardByAdmin()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unmountVolumeByDiffUser()Z
    .locals 3

    .prologue
    .line 251
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionManager;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 252
    .local v0, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v0, :cond_0

    .line 253
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 256
    .restart local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_0
    const/4 v1, 0x2

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v1, v2, :cond_1

    .line 257
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolumeByDiffUser()Z

    move-result v1

    .line 259
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/os/storage/IDirEncryptServiceListener;

    .prologue
    .line 178
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    if-nez v1, :cond_0

    .line 186
    :goto_0
    return-void

    .line 182
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionManager;->m_InstDirEncSvc:Landroid/os/storage/IDirEncryptService;

    invoke-interface {v1, p1}, Landroid/os/storage/IDirEncryptService;->unregisterListener(Landroid/os/storage/IDirEncryptServiceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "re":Landroid/os/RemoteException;
    const-string v1, "Unable to communicate with DirEncryptService"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionManager;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateSDcardState()V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionManager;->mDew:Landroid/dirEncryption/DirEncryptionWrapper;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionWrapper;->updateSDcardState()V

    .line 286
    return-void
.end method
