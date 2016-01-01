.class public Landroid/dirEncryption/DirEncryptionWrapper;
.super Ljava/lang/Object;
.source "DirEncryptionWrapper.java"


# static fields
.field private static final CRYPT_PREFERENCES_FILE:Ljava/lang/String; = "DirEncryption.Pref"

.field private static final LOCAL_LOGD:Z

.field private static final LOCAL_LOGE:Z

.field private static final TAG:Ljava/lang/String; = "DirEncryptWrapper"

.field private static mSavedUserId:I

.field private static mUserDiff:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 24
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->LOCAL_LOGE:Z

    .line 25
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->LOCAL_LOGD:Z

    .line 33
    sput-boolean v2, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    .line 34
    sput v2, Landroid/dirEncryption/DirEncryptionWrapper;->mSavedUserId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    .line 31
    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 32
    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    .line 66
    iput-object p1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 2

    .prologue
    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "result":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->haveEncPrefs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const-string v1, "EncPrefs found"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    .line 233
    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    .line 235
    :cond_0
    const-string v1, "EncPrefs not found"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;
    .locals 1
    .param p1, "storageVolume"    # Landroid/os/storage/StorageVolume;

    .prologue
    .line 61
    invoke-virtual {p1}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVolumeList()[Landroid/os/storage/StorageVolume;
    .locals 5

    .prologue
    .line 45
    const/4 v2, 0x0

    .line 48
    .local v2, "storageManager":Landroid/os/storage/StorageManager;
    :try_start_0
    iget-object v3, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/os/storage/StorageManager;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :goto_0
    if-nez v2, :cond_0

    .line 55
    const/4 v3, 0x0

    .line 57
    :goto_1
    return-object v3

    .line 49
    :catch_0
    move-exception v1

    .line 50
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "Exception:: unable to get Storage Service"

    invoke-static {v3}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v2}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v3

    goto :goto_1
.end method

.method private haveEncPrefs()Z
    .locals 3

    .prologue
    .line 242
    new-instance v0, Ljava/io/File;

    const-string v1, "/efs/"

    const-string v2, "DirEncryption.Pref"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    const/4 v1, 0x1

    .line 248
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 37
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->LOCAL_LOGD:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_0
    return-void
.end method

.method private static logE(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 40
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->LOCAL_LOGE:Z

    if-eqz v0, :cond_0

    const-string v0, "DirEncryptWrapper"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    return-void
.end method

.method private restorePrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;
    .locals 9

    .prologue
    .line 252
    new-instance v3, Landroid/dirEncryption/SDCardEncryptionPolicies;

    invoke-direct {v3}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 254
    .local v3, "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    new-instance v2, Ljava/io/File;

    const-string v7, "/efs/"

    const-string v8, "DirEncryption.Pref"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_1

    .line 256
    :cond_0
    const-string v7, "unable to get enc properties"

    invoke-static {v7}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    move-object v4, v3

    .line 277
    .end local v3    # "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    .local v4, "policies":Ljava/lang/Object;
    :goto_0
    return-object v4

    .line 260
    .end local v4    # "policies":Ljava/lang/Object;
    .restart local v3    # "policies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1
    const/4 v5, 0x0

    .line 262
    .local v5, "reader":Ljava/io/FileReader;
    :try_start_0
    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    .end local v5    # "reader":Ljava/io/FileReader;
    .local v6, "reader":Ljava/io/FileReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v7

    long-to-int v7, v7

    new-array v0, v7, [C

    .line 265
    .local v0, "buf":[C
    invoke-virtual {v6, v0}, Ljava/io/FileReader;->read([C)I

    .line 267
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([C)V

    invoke-static {v7}, Landroid/dirEncryption/SDCardEncryptionPolicies;->unflattenFromString(Ljava/lang/String;)Landroid/dirEncryption/SDCardEncryptionPolicies;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 273
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v5, v6

    .end local v0    # "buf":[C
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    :goto_1
    move-object v4, v3

    .line 277
    .restart local v4    # "policies":Ljava/lang/Object;
    goto :goto_0

    .line 274
    .end local v4    # "policies":Ljava/lang/Object;
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v0    # "buf":[C
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_0
    move-exception v7

    move-object v5, v6

    .line 275
    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_1

    .line 268
    .end local v0    # "buf":[C
    :catch_1
    move-exception v1

    .line 269
    .local v1, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v7, "IOException:: unable to get enc properties"

    invoke-static {v7}, Landroid/dirEncryption/DirEncryptionWrapper;->logE(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 273
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 274
    :catch_2
    move-exception v7

    goto :goto_1

    .line 272
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 273
    :goto_3
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 274
    :goto_4
    throw v7

    :catch_3
    move-exception v8

    goto :goto_4

    .line 272
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_3

    .line 268
    .end local v5    # "reader":Ljava/io/FileReader;
    .restart local v6    # "reader":Ljava/io/FileReader;
    :catch_4
    move-exception v1

    move-object v5, v6

    .end local v6    # "reader":Ljava/io/FileReader;
    .restart local v5    # "reader":Ljava/io/FileReader;
    goto :goto_2
.end method


# virtual methods
.method public getActivePasswordQuality()I
    .locals 2

    .prologue
    .line 123
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality()I

    move-result v1

    return v1
.end method

.method public getCurrentUserID()I
    .locals 2

    .prologue
    .line 177
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 178
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v1

    return v1
.end method

.method public getExternalSdPath()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 152
    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 153
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_1

    .line 162
    :cond_0
    :goto_0
    return-object v4

    .line 155
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 156
    aget-object v1, v2, v0

    .line 157
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-direct {p0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    .line 158
    .local v3, "subsystem":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, "sd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 159
    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 155
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getKeyguardStoredPasswordQuality()I
    .locals 2

    .prologue
    .line 128
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    return v1
.end method

.method public getMountService()Landroid/os/storage/IMountService;
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    if-nez v1, :cond_0

    .line 71
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 72
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 73
    invoke-static {v0}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v1

    iput-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    .line 78
    .end local v0    # "service":Landroid/os/IBinder;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mMountService:Landroid/os/storage/IMountService;

    return-object v1

    .line 75
    .restart local v0    # "service":Landroid/os/IBinder;
    :cond_1
    const-string v1, "Can\'t get mount service"

    invoke-static {v1}, Landroid/dirEncryption/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getSavedUserID()I
    .locals 1

    .prologue
    .line 194
    sget v0, Landroid/dirEncryption/DirEncryptionWrapper;->mSavedUserId:I

    return v0
.end method

.method public getUserDiff()Z
    .locals 1

    .prologue
    .line 186
    sget-boolean v0, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    return v0
.end method

.method public getVolumeState()Ljava/lang/String;
    .locals 3

    .prologue
    .line 116
    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 117
    .local v0, "storageManager":Landroid/os/storage/StorageManager;
    if-nez v0, :cond_0

    .line 118
    const/4 v1, 0x0

    .line 119
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public isExternalSDRemovable()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 138
    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v2

    .line 139
    .local v2, "storageVolumes":[Landroid/os/storage/StorageVolume;
    if-nez v2, :cond_1

    .line 148
    :cond_0
    :goto_0
    return v4

    .line 141
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v5, v2

    if-ge v0, v5, :cond_0

    .line 142
    aget-object v1, v2, v0

    .line 143
    .local v1, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-direct {p0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->getSubSystem(Landroid/os/storage/StorageVolume;)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "subsystem":Ljava/lang/String;
    if-eqz v3, :cond_2

    const-string v5, "sd"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 145
    const/4 v4, 0x1

    goto :goto_0

    .line 141
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public isSecure()Z
    .locals 2

    .prologue
    .line 133
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 134
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v1

    return v1
.end method

.method public mountVolume()Z
    .locals 3

    .prologue
    .line 83
    :try_start_0
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v1

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->mountVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 86
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerStorageEventListener(Landroid/os/storage/StorageEventListener;)Z
    .locals 3
    .param p1, "listner"    # Landroid/os/storage/StorageEventListener;

    .prologue
    const/4 v1, 0x0

    .line 166
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_1

    .line 167
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string v2, "storage"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    iput-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 168
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v0, :cond_0

    move v0, v1

    .line 173
    :goto_0
    return v0

    .line 170
    :cond_0
    iget-object v0, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v0, p1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 171
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 173
    goto :goto_0
.end method

.method public setSavedUserID(I)V
    .locals 0
    .param p1, "in"    # I

    .prologue
    .line 190
    sput p1, Landroid/dirEncryption/DirEncryptionWrapper;->mSavedUserId:I

    .line 191
    return-void
.end method

.method public setUserDiff(Z)V
    .locals 0
    .param p1, "in"    # Z

    .prologue
    .line 182
    sput-boolean p1, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    .line 183
    return-void
.end method

.method public unmountHiddenVolume()Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    :try_start_0
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " hidden"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return v1

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 110
    goto :goto_0
.end method

.method public unmountVolume()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 92
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.app.action.UNMOUNT_SDCARD_ENCRYPTION"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .local v1, "intentUnmount":Landroid/content/Intent;
    const-string v4, "unmount"

    const-string v5, "normal"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    iget-object v4, p0, Landroid/dirEncryption/DirEncryptionWrapper;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.RECEIVE_SDCARD_ENCRYPTION"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 95
    const-string v4, "SD_CARD_ENCRYPTION_UNMOUNT intent has been sent"

    invoke-static {v4}, Landroid/dirEncryption/DirEncryptionWrapper;->logD(Ljava/lang/String;)V

    .line 97
    :try_start_0
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getMountService()Landroid/os/storage/IMountService;

    move-result-object v4

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getExternalSdPath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v4, v5, v6, v7}, Landroid/os/storage/IMountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return v2

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v2, v3

    .line 100
    goto :goto_0
.end method

.method public unmountVolumeByDiffUser()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 198
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getVolumeState()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "state":Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 200
    sput-boolean v2, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    .line 201
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolume()Z

    move-result v1

    .line 209
    :goto_0
    return v1

    .line 202
    :cond_0
    const-string v1, "checking"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 203
    sput-boolean v2, Landroid/dirEncryption/DirEncryptionWrapper;->mUserDiff:Z

    .line 204
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountHiddenVolume()Z

    move-result v1

    goto :goto_0

    .line 205
    :cond_1
    const-string v1, "unmounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "bad_removal"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    if-nez v1, :cond_3

    .line 206
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->mountVolume()Z

    move-result v1

    goto :goto_0

    .line 209
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateSDcardState()V
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getSavedUserID()I

    move-result v1

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 214
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getSavedUserID()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    if-nez v1, :cond_2

    .line 215
    :cond_0
    invoke-direct {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getSDCardEncryptionPrefs()Landroid/dirEncryption/SDCardEncryptionPolicies;

    move-result-object v0

    .line 216
    .local v0, "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    if-nez v0, :cond_1

    .line 217
    new-instance v0, Landroid/dirEncryption/SDCardEncryptionPolicies;

    .end local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    invoke-direct {v0}, Landroid/dirEncryption/SDCardEncryptionPolicies;-><init>()V

    .line 220
    .restart local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_1
    const/4 v1, 0x2

    iget v2, v0, Landroid/dirEncryption/SDCardEncryptionPolicies;->mEnc:I

    if-ne v1, v2, :cond_2

    .line 221
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->unmountVolumeByDiffUser()Z

    .line 225
    .end local v0    # "sdPolicies":Landroid/dirEncryption/SDCardEncryptionPolicies;
    :cond_2
    invoke-virtual {p0}, Landroid/dirEncryption/DirEncryptionWrapper;->getCurrentUserID()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/dirEncryption/DirEncryptionWrapper;->setSavedUserID(I)V

    .line 226
    return-void
.end method
