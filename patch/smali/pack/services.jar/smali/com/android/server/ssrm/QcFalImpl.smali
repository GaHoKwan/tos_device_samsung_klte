.class public Lcom/android/server/ssrm/QcFalImpl;
.super Ljava/lang/Object;
.source "QcFalImpl.java"

# interfaces
.implements Lcom/android/server/ssrm/SysFileAbstraction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/QcFalImpl$1;,
        Lcom/android/server/ssrm/QcFalImpl$SysfsPath;,
        Lcom/android/server/ssrm/QcFalImpl$PlatformType;
    }
.end annotation


# static fields
.field private static final DUALCORE_TABLE:[I

.field private static final MSM8974PRO_BUS_TABLE:[I

.field static final TAG:Ljava/lang/String; = "SSRMv2:QcFalImpl"


# instance fields
.field final DEBUG:Z

.field final UTF8:Ljava/lang/String;

.field mGpuFreqTable:[I

.field mPerfCoreMaxLock:Lorg/codeaurora/Performance;

.field mPerfCoreMinLock:Lorg/codeaurora/Performance;

.field mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

.field mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 340
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl;->MSM8974PRO_BUS_TABLE:[I

    .line 344
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/ssrm/QcFalImpl;->DUALCORE_TABLE:[I

    return-void

    .line 340
    :array_0
    .array-data 4
        0x3a3
        0x320
        0x266
        0x1cc
        0x133
        0xc8
        0x96
        0x4b
    .end array-data

    .line 344
    :array_1
    .array-data 4
        0x2
        0x1
    .end array-data
.end method

.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v1, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/ssrm/QcFalImpl;->DEBUG:Z

    .line 32
    const-string v1, "UTF-8"

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->UTF8:Ljava/lang/String;

    .line 40
    iput-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    .line 235
    iput-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 274
    iput-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 45
    const-string v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "mPlatformInfo":Ljava/lang/String;
    const-string v1, "msm8960"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8064:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    .line 58
    :goto_0
    new-instance v1, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;-><init>(Lcom/android/server/ssrm/QcFalImpl$PlatformType;)V

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    .line 59
    return-void

    .line 48
    :cond_0
    const-string v1, "msm8226"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 49
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8226:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0

    .line 50
    :cond_1
    const-string v1, "msm8974"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8974:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0

    .line 52
    :cond_2
    const-string v1, "msm8610"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 53
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8610:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0

    .line 55
    :cond_3
    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->NONE:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    iput-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    goto :goto_0
.end method

.method private checkFileExistence(Ljava/lang/String;)Z
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 374
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 375
    .local v0, "filePtr":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private parseCpuCoreTable()[I
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 379
    const-string v4, "SSRMv2:QcFalImpl"

    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v5, v5, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->CPU_CORE_TABLE_PATH:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "cpuKernelMax":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 395
    :cond_0
    return-object v3

    .line 384
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    .line 385
    .local v2, "maxNum":I
    const/16 v4, 0x20

    if-gt v2, v4, :cond_0

    .line 389
    new-array v3, v2, [I

    .line 390
    .local v3, "table":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_0

    .line 391
    sub-int v4, v2, v1

    aput v4, v3, v1

    .line 392
    const-string v4, "SSRMv2:QcFalImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parseCpuCoreTable:: table["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private parseGpuFreqTable()[I
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 399
    const-string v5, "SSRMv2:QcFalImpl"

    iget-object v6, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v6, v6, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_TABLE_PATH:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 400
    .local v2, "rawFreqTable":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 418
    :cond_0
    :goto_0
    return-object v3

    .line 404
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 405
    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "gpuLevels":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 409
    array-length v4, v0

    .line 410
    .local v4, "totalLevelNum":I
    new-array v3, v4, [I

    .line 412
    .local v3, "table":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v4, :cond_2

    .line 413
    aget-object v5, v0, v1

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    aput v5, v3, v1

    .line 414
    const-string v5, "SSRMv2:QcFalImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseGpuFreqTable:: table["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 416
    :cond_2
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iput v4, v5, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 417
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    const/4 v6, 0x0

    iput v6, v5, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    goto :goto_0
.end method


# virtual methods
.method acquirePerfCoreMaxLock(I)V
    .locals 9
    .param p1, "coreNum"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 278
    const/16 v0, 0x7fe

    .line 279
    .local v0, "CPUS_ONLINE_MAX_LIMIT_1":I
    const/16 v1, 0x7fd

    .line 280
    .local v1, "CPUS_ONLINE_MAX_LIMIT_2":I
    const/16 v2, 0x7fc

    .line 281
    .local v2, "CPUS_ONLINE_MAX_LIMIT_3":I
    const/16 v3, 0x7fb

    .line 282
    .local v3, "CPUS_ONLINE_MAX_LIMIT_4":I
    const/16 v4, 0x7fb

    .line 284
    .local v4, "CPUS_ONLINE_MAX_LIMIT_MAX":I
    if-lt p1, v7, :cond_0

    const/4 v5, 0x4

    if-le p1, v5, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v5, :cond_2

    .line 290
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: create new Performance instance"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v5}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 292
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 296
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 310
    :pswitch_0
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_1)"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 313
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v6, v7, [I

    const/16 v7, 0x7fe

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 298
    :pswitch_1
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_3)"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 301
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v6, v7, [I

    const/16 v7, 0x7fc

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 304
    :pswitch_2
    const-string v5, "SSRMv2:QcFalImpl"

    const-string v6, "acquirePerfCoreMaxLock:: perfLockAcquire(CPUS_ONLINE_MAX_LIMIT_2)"

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    new-instance v5, Lorg/codeaurora/Performance;

    invoke-direct {v5}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    .line 307
    iget-object v5, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    new-array v6, v7, [I

    const/16 v7, 0x7fd

    aput v7, v6, v8

    invoke-virtual {v5, v8, v6}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 296
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method acquirePerfCoreMinLock(I)V
    .locals 4
    .param p1, "coreNum"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 238
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x4

    if-le p1, v0, :cond_1

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v0, :cond_2

    .line 244
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: create new Performance instance"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v0}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 246
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 250
    :cond_2
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 264
    :pswitch_0
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_2)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 266
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 252
    :pswitch_1
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_MAX)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 254
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 258
    :pswitch_2
    const-string v0, "SSRMv2:QcFalImpl"

    const-string v1, "acquirePerfCoreMinLock:: perfLockAcquire(CPUS_ON_3)"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    .line 260
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    invoke-virtual {v0, v2, v1}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_0

    .line 250
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 266
    :array_0
    .array-data 4
        0x702
        0x100
    .end array-data

    .line 254
    :array_1
    .array-data 4
        0x704
        0x100
    .end array-data

    .line 260
    :array_2
    .array-data 4
        0x703
        0x100
    .end array-data
.end method

.method adjustFreqToIndexValue(II)I
    .locals 2
    .param p1, "type"    # I
    .param p2, "value"    # I

    .prologue
    .line 188
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 190
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    if-nez v1, :cond_3

    .line 191
    const/4 p2, 0x0

    :cond_1
    :goto_0
    move v0, p2

    .line 232
    :cond_2
    return v0

    .line 193
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 194
    iget-object v1, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    aget v1, v1, v0

    if-eq p2, v1, :cond_2

    .line 193
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 198
    :cond_4
    const/4 p2, 0x0

    goto :goto_0

    .line 200
    .end local v0    # "i":I
    :cond_5
    const/4 v1, 0x5

    if-eq p1, v1, :cond_6

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    .line 202
    :cond_6
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 225
    :sswitch_0
    const/16 p2, 0x23c

    .line 226
    goto :goto_0

    .line 204
    :sswitch_1
    const/16 p2, 0x1bbe

    .line 205
    goto :goto_0

    .line 207
    :sswitch_2
    const/16 p2, 0x17d7

    .line 208
    goto :goto_0

    .line 210
    :sswitch_3
    const/16 p2, 0x124c

    .line 211
    goto :goto_0

    .line 213
    :sswitch_4
    const/16 p2, 0xdb5

    .line 214
    goto :goto_0

    .line 216
    :sswitch_5
    const/16 p2, 0x926

    .line 217
    goto :goto_0

    .line 219
    :sswitch_6
    const/16 p2, 0x5f5

    .line 220
    goto :goto_0

    .line 222
    :sswitch_7
    const/16 p2, 0x478

    .line 223
    goto :goto_0

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x4b -> :sswitch_0
        0x96 -> :sswitch_7
        0xc8 -> :sswitch_6
        0x133 -> :sswitch_5
        0x1cc -> :sswitch_4
        0x266 -> :sswitch_3
        0x320 -> :sswitch_2
        0x3a3 -> :sswitch_1
    .end sparse-switch
.end method

.method public checkNodeExistence(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 322
    packed-switch p1, :pswitch_data_0

    .line 337
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 325
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 327
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 329
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 331
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 333
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v0, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/ssrm/QcFalImpl;->checkFileExistence(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 322
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public initSupportedFrequency(I)[I
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 350
    packed-switch p1, :pswitch_data_0

    .line 370
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 353
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/ssrm/QcFalImpl;->parseGpuFreqTable()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    .line 354
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mGpuFreqTable:[I

    goto :goto_0

    .line 357
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/ssrm/QcFalImpl;->mPlatformType:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    sget-object v1, Lcom/android/server/ssrm/QcFalImpl$PlatformType;->MSM8610:Lcom/android/server/ssrm/QcFalImpl$PlatformType;

    if-ne v0, v1, :cond_1

    .line 358
    sget-object v0, Lcom/android/server/ssrm/QcFalImpl;->DUALCORE_TABLE:[I

    goto :goto_0

    .line 360
    :cond_1
    invoke-direct {p0}, Lcom/android/server/ssrm/QcFalImpl;->parseCpuCoreTable()[I

    move-result-object v0

    goto :goto_0

    .line 364
    :pswitch_3
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    if-eqz v0, :cond_0

    .line 365
    sget-object v0, Lcom/android/server/ssrm/QcFalImpl;->MSM8974PRO_BUS_TABLE:[I

    goto :goto_0

    .line 350
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public modifyToValues(II)Z
    .locals 5
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 154
    const-string v0, ""

    .line 156
    .local v0, "path":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 176
    :pswitch_0
    const/4 v1, 0x0

    .line 184
    :goto_0
    return v1

    .line 158
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/QcFalImpl;->acquirePerfCoreMinLock(I)V

    goto :goto_0

    .line 161
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/android/server/ssrm/QcFalImpl;->acquirePerfCoreMaxLock(I)V

    goto :goto_0

    .line 164
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 179
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ssrm/QcFalImpl;->adjustFreqToIndexValue(II)I

    move-result p2

    .line 181
    const-string v2, "SSRMv2:QcFalImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "modifyToValues:: path = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", value = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v2, "SSRMv2:QcFalImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v0, v3}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 167
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 168
    goto :goto_1

    .line 170
    :pswitch_5
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 171
    goto :goto_1

    .line 173
    :pswitch_6
    iget-object v2, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v2, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 174
    goto :goto_1

    .line 156
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public revertToDefault(I)Z
    .locals 6
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    .line 108
    const-string v0, ""

    .line 109
    .local v0, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .line 111
    .local v1, "value":I
    packed-switch p1, :pswitch_data_0

    .line 143
    :pswitch_0
    const/4 v2, 0x0

    .line 149
    :goto_0
    return v2

    .line 113
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    invoke-virtual {v3}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 115
    iput-object v4, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMinLock:Lorg/codeaurora/Performance;

    goto :goto_0

    .line 120
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    if-eqz v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    invoke-virtual {v3}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 122
    iput-object v4, p0, Lcom/android/server/ssrm/QcFalImpl;->mPerfCoreMaxLock:Lorg/codeaurora/Performance;

    goto :goto_0

    .line 127
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_PATH:Ljava/lang/String;

    .line 128
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MIN_DEFAULT_FREQUENCY:I

    .line 146
    :cond_0
    :goto_1
    const-string v3, "SSRMv2:QcFalImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertToDefault:: path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v3, "SSRMv2:QcFalImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_4
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_PATH:Ljava/lang/String;

    .line 132
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->GPU_MAX_DEFAULT_FREQUENCY:I

    .line 133
    goto :goto_1

    .line 135
    :pswitch_5
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_PATH:Ljava/lang/String;

    .line 136
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MIN_DEFAULT_FREQUENCY:I

    .line 137
    goto :goto_1

    .line 139
    :pswitch_6
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget-object v0, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_PATH:Ljava/lang/String;

    .line 140
    iget-object v3, p0, Lcom/android/server/ssrm/QcFalImpl;->mSysfsPath:Lcom/android/server/ssrm/QcFalImpl$SysfsPath;

    iget v1, v3, Lcom/android/server/ssrm/QcFalImpl$SysfsPath;->BUS_MAX_DEFAULT_FREQUENCY:I

    .line 141
    goto :goto_1

    .line 111
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
