.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static DEBUG:Z = false

.field static DHA_INCREASE_THRESHOLD:J = 0x0L

.field static final DHA_MAX_MARGIN:J = 0x800000L

.field static final DHA_MIN_MARGIN:J = 0x400000L

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static INIT_CACHED_APPS:I = 0x0

.field static INIT_EMPTY_APPS:I = 0x0

.field static MAX_CACHED_APPS:I = 0x0

.field static MAX_EMPTY_APPS:I = 0x0

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static MAX_KNOX_CACHED_APPS:I = 0x0

.field static MAX_KNOX_EMPTY_APPS:I = 0x0

.field static MID_EMPTY_APPS_FOR_DHA:I = 0x0

.field static MIN_CACHED_APPS:I = 0x0

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static MIN_EMPTY_APPS_FOR_DHA:I = 0x0

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static SMART_DHA_BG_APPS_MAX:I = 0x0

.field static final SMART_DHA_BG_APPS_MAX_HIGH:I = 0x28

.field static final SMART_DHA_BG_APPS_MAX_LOW:I = 0xf

.field static SMART_DHA_BG_APPS_MIN:I = 0x0

.field static final SMART_DHA_BG_APPS_MIN_HIGH:I = 0x1

.field static final SMART_DHA_MARGIN_MIN_HIGH:J = 0x2800000L

.field static final SMART_DHA_MARGIN_MIN_LOW:J = 0x1400000L

.field static final SYSTEM_ADJ:I = -0x10

.field static final TOTAL_DEVICE_MEMORY:J

.field static TRIM_CACHED_APPS:I = 0x0

.field static TRIM_CRITICAL_THRESHOLD:I = 0x0

.field static TRIM_EMPTY_APPS:I = 0x0

.field static TRIM_LOW_THRESHOLD:I = 0x0

.field static final UNKNOWN_ADJ:I = 0x10

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static mInfo:Lcom/android/internal/util/MemInfoReader;

.field static mMaxCached:I

.field private static final sFirstAwakePssTimes:[J

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private final mOomAdj:[I

.field private final mOomMinFree:[J

.field private final mOomMinFreeHigh:[J

.field private final mOomMinFreeLow:[J

.field private mSmartDHADefaultMargin:J

.field private mSmartDHAKswapdWatermark:J

.field private mSz2ndDHAThreshold:J

.field private mSzDHADefendThreshold:J

.field private mSzDHAStep:I

.field private mSzDHAThreshold:J

.field private mSzDHAThresholdRate:F

.field private mSzMidDHA:I

.field private mSzMidDHA2nd:I

.field private mSzMidDHA2ndStep:I

.field private mSzMidDHAStep:I

.field private mSzUpdateDHACount:I

.field private mSzUpdateDHAMaxCount:I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xe

    .line 47
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->DEBUG:Z

    .line 122
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 124
    invoke-static {}, Lcom/android/server/am/ProcessList;->totalDeviceMemory()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/ProcessList;->TOTAL_DEVICE_MEMORY:J

    .line 145
    const-string v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_CACHED_APPS:I

    .line 149
    const-string v0, "ro.config.dha_cached_min"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    .line 151
    const-string v0, "ro.config.dha_cached_max"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 153
    const-string v0, "ro.config.dha_cached_max_knox"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_KNOX_CACHED_APPS:I

    .line 159
    const-string v0, "ro.config.dha_empty_init"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->INIT_EMPTY_APPS:I

    .line 161
    const-string v0, "ro.config.dha_empty_min"

    const-string v1, "6"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    .line 163
    const-string v0, "ro.config.dha_empty_mid"

    const-string v1, "9"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    .line 165
    const-string v0, "ro.config.dha_empty_max"

    const-string v1, "30"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 167
    const-string v0, "ro.config.dha_empty_max_knox"

    const-string v1, "60"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_KNOX_EMPTY_APPS:I

    .line 171
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 175
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 178
    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 181
    const/4 v0, 0x5

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 229
    sget v0, Lcom/android/server/am/ProcessList;->INIT_CACHED_APPS:I

    sput v0, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 235
    const-wide/32 v0, 0x200000

    sput-wide v0, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    .line 247
    const/16 v0, 0x28

    sput v0, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MAX:I

    .line 250
    const/4 v0, 0x1

    sput v0, Lcom/android/server/am/ProcessList;->SMART_DHA_BG_APPS_MIN:I

    .line 617
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 634
    new-array v0, v2, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 651
    new-array v0, v2, [J

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    return-void

    .line 617
    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 634
    :array_1
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 651
    :array_2
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data
.end method

.method constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x6

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    new-array v1, v3, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 192
    new-array v1, v3, [J

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    .line 198
    new-array v1, v3, [J

    fill-array-data v1, :array_2

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    .line 203
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    .line 207
    const-wide/32 v1, 0x2000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 209
    const-wide/32 v1, 0x1000000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 211
    const-wide/32 v1, 0x800000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 213
    iput v5, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 215
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    .line 217
    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    .line 219
    iput v3, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    .line 221
    sget v1, Lcom/android/server/am/ProcessList;->INIT_EMPTY_APPS:I

    iget v2, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 223
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v2, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    .line 225
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    .line 227
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    .line 239
    const-wide/32 v1, 0x1400000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    .line 240
    const-wide/32 v1, 0x2800000

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    .line 258
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 259
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 260
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v1

    const-wide/32 v3, 0x100000

    div-long/2addr v1, v3

    iput-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 269
    invoke-direct {p0, v5, v5, v5}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 270
    return-void

    .line 186
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 192
    :array_1
    .array-data 8
        0x2000
        0x3000
        0x4000
        0x6000
        0x7000
        0x8000
    .end array-data

    .line 198
    :array_2
    .array-data 8
        0xc000
        0xf000
        0x12000
        0x15000
        0x18000
        0x1e000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 573
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_0
    const/4 v2, 0x6

    if-ge v1, v2, :cond_1

    .line 574
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_0

    .line 575
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 573
    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 578
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 579
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 2
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 478
    if-ne p2, p3, :cond_1

    .line 479
    if-nez p1, :cond_0

    .line 482
    .end local p0    # "prefix":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 480
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 482
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static computeNextPssTime(IZZJ)J
    .locals 3
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "sleeping"    # Z
    .param p3, "now"    # J

    .prologue
    .line 674
    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 681
    .local v0, "table":[J
    :goto_0
    aget-wide v1, v0, p0

    add-long/2addr v1, p3

    return-wide v1

    .line 674
    .end local v0    # "table":[J
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_0
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .locals 6
    .param p0, "setAdj"    # I

    .prologue
    const/4 v5, 0x1

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    .line 486
    const/16 v0, 0x9

    if-lt p0, v0, :cond_0

    .line 487
    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 513
    :goto_0
    return-object v0

    .line 488
    :cond_0
    const/16 v0, 0x8

    if-lt p0, v0, :cond_1

    .line 489
    const-string/jumbo v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 490
    :cond_1
    const/4 v0, 0x7

    if-lt p0, v0, :cond_2

    .line 491
    const-string v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_2
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3

    .line 493
    const-string v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 494
    :cond_3
    const/4 v0, 0x5

    if-lt p0, v0, :cond_4

    .line 495
    const-string/jumbo v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 496
    :cond_4
    const/4 v0, 0x4

    if-lt p0, v0, :cond_5

    .line 497
    const-string v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 498
    :cond_5
    const/4 v0, 0x3

    if-lt p0, v0, :cond_6

    .line 499
    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 500
    :cond_6
    const/4 v0, 0x2

    if-lt p0, v0, :cond_7

    .line 501
    const-string v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 502
    :cond_7
    if-lt p0, v5, :cond_8

    .line 503
    const-string/jumbo v0, "vis  "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 504
    :cond_8
    if-ltz p0, :cond_9

    .line 505
    const-string v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 506
    :cond_9
    if-lt p0, v4, :cond_a

    .line 507
    const-string v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 508
    :cond_a
    if-lt p0, v3, :cond_b

    .line 509
    const-string/jumbo v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 510
    :cond_b
    if-lt p0, v1, :cond_c

    .line 511
    const-string v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 513
    :cond_c
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .locals 1
    .param p0, "curProcState"    # I

    .prologue
    .line 519
    packed-switch p0, :pswitch_data_0

    .line 566
    const-string v0, "??"

    .line 569
    .local v0, "procState":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 521
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_0
    const-string v0, "N "

    .line 522
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 524
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1
    const-string v0, "P "

    .line 525
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 527
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2
    const-string v0, "PU"

    .line 528
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 530
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_3
    const-string v0, "T "

    .line 531
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 533
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_4
    const-string v0, "IF"

    .line 534
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 536
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_5
    const-string v0, "IB"

    .line 537
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 539
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "BU"

    .line 540
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 542
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_7
    const-string v0, "HW"

    .line 543
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 545
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_8
    const-string v0, "S "

    .line 546
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 548
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "R "

    .line 549
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 551
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_a
    const-string v0, "HO"

    .line 552
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 554
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_b
    const-string v0, "LA"

    .line 555
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 557
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "CA"

    .line 558
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 560
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_d
    const-string v0, "Ca"

    .line 561
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 563
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_e
    const-string v0, "CE"

    .line 564
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public static procStatesDifferForMem(II)Z
    .locals 2
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 669
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static totalDeviceMemory()J
    .locals 4

    .prologue
    .line 127
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    .line 130
    :cond_0
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 132
    sget-object v0, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private updateOomLevels(IIZ)V
    .locals 31
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 286
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x12c

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x43c80000    # 400.0f

    div-float v24, v25, v26

    .line 289
    .local v24, "scaleMem":F
    const v15, 0x5dc00

    .line 290
    .local v15, "minSize":I
    const v13, 0xfa000

    .line 292
    .local v13, "maxSize":I
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v25

    if-nez v25, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x600

    cmp-long v25, v25, v27

    if-gez v25, :cond_1

    mul-int v25, p1, p2

    const v26, 0xfa000

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1

    .line 294
    :cond_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x12c

    sub-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    const v26, 0x44b54000    # 1450.0f

    div-float v24, v25, v26

    .line 296
    const v15, 0x25800

    .line 297
    const v13, 0x1fa400

    .line 300
    :cond_1
    mul-int v25, p1, p2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    int-to-float v0, v15

    move/from16 v26, v0

    sub-float v25, v25, v26

    sub-int v26, v13, v15

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    div-float v23, v25, v26

    .line 307
    .local v23, "scaleDisp":F
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    .local v3, "adjString":Ljava/lang/StringBuilder;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v14, "memString":Ljava/lang/StringBuilder;
    cmpl-float v25, v24, v23

    if-lez v25, :cond_4

    move/from16 v22, v24

    .line 313
    .local v22, "scale":F
    :goto_0
    const-string v25, "ro.config.dha_lmk_scale"

    const-string v26, "-1"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    .line 315
    .local v6, "dha_lmk_scale_property":F
    const/high16 v25, -0x40800000    # -1.0f

    cmpl-float v25, v6, v25

    if-eqz v25, :cond_2

    .line 316
    move/from16 v22, v6

    .line 319
    :cond_2
    const/16 v25, 0x0

    cmpg-float v25, v22, v25

    if-gez v25, :cond_5

    const/16 v22, 0x0

    .line 321
    :cond_3
    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10e0009

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 323
    .local v17, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10e0008

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v16

    .line 329
    .local v16, "minfree_abs":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_6

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v25, v0

    aget-wide v10, v25, v9

    .line 331
    .local v10, "low":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[J

    move-object/from16 v25, v0

    aget-wide v7, v25, v9

    .line 332
    .local v7, "high":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v25, v0

    long-to-float v0, v10

    move/from16 v26, v0

    sub-long v27, v7, v10

    move-wide/from16 v0, v27

    long-to-float v0, v0

    move/from16 v27, v0

    mul-float v27, v27, v22

    add-float v26, v26, v27

    move/from16 v0, v26

    float-to-long v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v25, v9

    .line 329
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .end local v6    # "dha_lmk_scale_property":F
    .end local v7    # "high":J
    .end local v9    # "i":I
    .end local v10    # "low":J
    .end local v16    # "minfree_abs":I
    .end local v17    # "minfree_adj":I
    .end local v22    # "scale":F
    :cond_4
    move/from16 v22, v23

    .line 310
    goto :goto_0

    .line 320
    .restart local v6    # "dha_lmk_scale_property":F
    .restart local v22    # "scale":F
    :cond_5
    const/high16 v25, 0x3f800000    # 1.0f

    cmpl-float v25, v22, v25

    if-lez v25, :cond_3

    const/high16 v22, 0x3f800000    # 1.0f

    goto :goto_1

    .line 335
    .restart local v9    # "i":I
    .restart local v16    # "minfree_abs":I
    .restart local v17    # "minfree_adj":I
    :cond_6
    if-ltz v16, :cond_7

    .line 336
    const/4 v9, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_7

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v25, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v27, v0

    aget-wide v27, v27, v9

    move-wide/from16 v0, v27

    long-to-float v0, v0

    move/from16 v27, v0

    mul-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    array-length v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, -0x1

    aget-wide v27, v27, v28

    move-wide/from16 v0, v27

    long-to-float v0, v0

    move/from16 v27, v0

    div-float v26, v26, v27

    move/from16 v0, v26

    float-to-long v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v25, v9

    .line 336
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 341
    :cond_7
    if-eqz v17, :cond_9

    .line 342
    const/4 v9, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_9

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v25, v0

    aget-wide v26, v25, v9

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v29, v0

    aget-wide v29, v29, v9

    move-wide/from16 v0, v29

    long-to-float v0, v0

    move/from16 v29, v0

    mul-float v28, v28, v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    array-length v0, v0

    move/from16 v30, v0

    add-int/lit8 v30, v30, -0x1

    aget-wide v29, v29, v30

    move-wide/from16 v0, v29

    long-to-float v0, v0

    move/from16 v29, v0

    div-float v28, v28, v29

    move/from16 v0, v28

    float-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    aput-wide v26, v25, v9

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v25, v0

    aget-wide v25, v25, v9

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-gez v25, :cond_8

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v25, v0

    const-wide/16 v26, 0x0

    aput-wide v26, v25, v9

    .line 342
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 353
    :cond_9
    const/16 v25, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v25

    const-wide/16 v27, 0x400

    div-long v25, v25, v27

    const-wide/16 v27, 0x3

    div-long v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 355
    const/4 v9, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v9, v0, :cond_b

    .line 356
    if-lez v9, :cond_a

    .line 357
    const/16 v25, 0x2c

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    const/16 v25, 0x2c

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 360
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v25, v0

    aget v25, v25, v9

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    move-object/from16 v25, v0

    aget-wide v25, v25, v9

    const-wide/16 v27, 0x400

    mul-long v25, v25, v27

    const-wide/16 v27, 0x1000

    div-long v25, v25, v27

    move-wide/from16 v0, v25

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 355
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 366
    :cond_b
    mul-int v25, p1, p2

    mul-int/lit8 v25, v25, 0x4

    mul-int/lit8 v25, v25, 0x3

    move/from16 v0, v25

    div-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    .line 367
    .local v19, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10e000b

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v21

    .line 368
    .local v21, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x10e000a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v20

    .line 370
    .local v20, "reserve_abs":I
    if-ltz v20, :cond_c

    .line 371
    move/from16 v19, v20

    .line 374
    :cond_c
    if-eqz v21, :cond_d

    .line 375
    add-int v19, v19, v21

    .line 376
    if-gez v19, :cond_d

    .line 377
    const/16 v19, 0x0

    .line 400
    :cond_d
    if-eqz p3, :cond_e

    .line 401
    const-string v25, "/sys/module/lowmemorykiller/parameters/adj"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v25, "/sys/module/lowmemorykiller/parameters/minfree"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ProcessList;->writeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v25, "klteskt"

    const-string v26, "ro.product.name"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_e

    const-string v25, "kltektt"

    const-string v26, "ro.product.name"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_e

    const-string v25, "kltelgt"

    const-string v26, "ro.product.name"

    invoke-static/range {v26 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v25

    if-nez v25, :cond_e

    .line 405
    const-string/jumbo v25, "sys.sysctl.extra_free_kbytes"

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :cond_e
    const/16 v25, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 411
    const/16 v25, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v25, v0

    const/16 v26, 0x3

    aget-wide v25, v25, v26

    const-wide/16 v27, 0x400

    mul-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v22

    move/from16 v0, v25

    float-to-long v0, v0

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 415
    const-string v25, "ro.com.google.gmsversion"

    const-string v26, "none"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v26, "none"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    .line 416
    const-string v25, "ro.config.dha_empty_max"

    const-string v26, "30"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    add-int/lit8 v25, v25, 0xc

    sput v25, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 417
    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "No GMS,  MAX_EMPTY_APPS = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    :cond_f
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v4

    .line 421
    .local v4, "at":Landroid/app/ActivityThread;
    invoke-virtual {v4}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v5

    .line 423
    .local v5, "context":Landroid/content/Context;
    const-string v25, "persona"

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/PersonaManager;

    .line 424
    .local v12, "mPersona":Landroid/os/PersonaManager;
    invoke-virtual {v12}, Landroid/os/PersonaManager;->getPersonas()Ljava/util/List;

    move-result-object v18

    .line 426
    .local v18, "personas":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PersonaInfo;>;"
    if-eqz v18, :cond_10

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v25

    if-lez v25, :cond_10

    .line 428
    sget v25, Lcom/android/server/am/ProcessList;->MAX_KNOX_CACHED_APPS:I

    sput v25, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 429
    sget v25, Lcom/android/server/am/ProcessList;->MAX_KNOX_EMPTY_APPS:I

    sput v25, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 430
    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "KNOX is installed. MAX_CACHED_APPS = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " , MAX_EMPTY_APPS = "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget v27, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    :cond_10
    const-string v25, "ro.config.dha_update_max_count"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    .line 435
    const-string v25, "ro.config.dha_mid_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    .line 437
    const-string v25, "ro.config.dha_mid_2nd_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    .line 439
    const-string v25, "ro.config.dha_step"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    .line 441
    const-string v25, "ro.config.dha_th_rate"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    .line 443
    const-string v25, "ro.config.dha_th_level"

    const-string v26, "15"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    .line 444
    const-string v25, "ro.config.dha_th_2nd_level"

    const-string v26, "3"

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[J

    move-object/from16 v25, v0

    const-string v26, "ro.config.dha_defend_th_level"

    const-string v27, "3"

    invoke-static/range {v26 .. v27}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    aget-wide v25, v25, v26

    const-wide/16 v27, 0x400

    mul-long v25, v25, v27

    move-wide/from16 v0, v25

    long-to-float v0, v0

    move/from16 v25, v0

    mul-float v25, v25, v22

    move/from16 v0, v25

    float-to-long v0, v0

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    .line 446
    const-string v25, "ro.config.dha_increase_th"

    sget-wide v26, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    sput-wide v25, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    .line 448
    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA UPDATE MAX COUNT "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA MID STEP "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA MID 2ND STEP "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA STEP "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA TH RATE "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA mSzDHAThreshold "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA mSz2ndDHAThreshold "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA mSzDHADefendThreshold "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const-string v25, "DHA_PROPERTY"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "DHA DHA_INCREASE_THRESHOLD "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    sget-wide v27, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const-string v25, "Smart_DHA"

    const-string v26, "SMART_DHA_DISABLED"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    return-void
.end method

.method private writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 720
    const/4 v1, 0x0

    .line 722
    .local v1, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 723
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 727
    if-eqz v2, :cond_2

    .line 729
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 734
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .line 730
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v3

    move-object v1, v2

    .line 731
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 724
    :catch_1
    move-exception v0

    .line 725
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 727
    if-eqz v1, :cond_0

    .line 729
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 730
    :catch_2
    move-exception v3

    goto :goto_0

    .line 727
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_1

    .line 729
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 731
    :cond_1
    :goto_3
    throw v3

    .line 730
    :catch_3
    move-exception v4

    goto :goto_3

    .line 727
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 724
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    move-object v1, v2

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .locals 4
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    .line 273
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_0

    .line 274
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 275
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 276
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    .line 277
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 278
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 281
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_0
    return-void
.end method

.method decrementEmptyAppCount(II)I
    .locals 2
    .param p1, "empty"    # I
    .param p2, "cached"    # I

    .prologue
    .line 836
    const/4 v0, 0x0

    .line 838
    .local v0, "ret":I
    iget v1, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    sub-int v0, p1, v1

    .line 840
    sget v1, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v0, v1, :cond_0

    .line 841
    sget v0, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    .line 843
    :cond_0
    sget v1, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    if-le p2, v1, :cond_1

    .line 844
    add-int/lit8 v1, p2, -0x1

    sput v1, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 846
    :cond_1
    return v0
.end method

.method getCachedRestoreThresholdKb()J
    .locals 2

    .prologue
    .line 698
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getKswapdWatermark()J
    .locals 2

    .prologue
    .line 715
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mSmartDHAKswapdWatermark:J

    return-wide v0
.end method

.method getLMKThreshold(I)J
    .locals 2
    .param p1, "adj"    # I

    .prologue
    const/16 v0, 0xf

    .line 705
    if-ge p1, v0, :cond_0

    const/16 v0, 0x9

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxMinfree()J
    .locals 4

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v0, v0, v1

    const-wide/16 v2, 0x400

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method getMemLevel(I)J
    .locals 5
    .param p1, "adjustment"    # I

    .prologue
    const-wide/16 v3, 0x400

    .line 685
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_0

    .line 687
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    aget-wide v1, v1, v0

    mul-long/2addr v1, v3

    .line 690
    :goto_1
    return-wide v1

    .line 685
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 690
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[J

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget-wide v1, v1, v2

    mul-long/2addr v1, v3

    goto :goto_1
.end method

.method getSmartDHADefaultMargin()J
    .locals 2

    .prologue
    .line 710
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mSmartDHADefaultMargin:J

    return-wide v0
.end method

.method public setTrimCachedApps(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 855
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 856
    return-void
.end method

.method public setTrimCriticalTH(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 859
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_CRITICAL_THRESHOLD:I

    .line 860
    return-void
.end method

.method public setTrimEmptyApps(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 851
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 852
    return-void
.end method

.method public setTrimLowlTH(I)V
    .locals 0
    .param p1, "lValue"    # I

    .prologue
    .line 863
    sput p1, Lcom/android/server/am/ProcessList;->TRIM_LOW_THRESHOLD:I

    .line 864
    return-void
.end method

.method public updateHiddenAppNum(III)I
    .locals 15
    .param p1, "maxEmptyApp"    # I
    .param p2, "curCached"    # I
    .param p3, "curEmpty"    # I

    .prologue
    .line 745
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHAMaxCount:I

    if-ge v9, v10, :cond_3

    .line 746
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 754
    :goto_0
    move/from16 v3, p1

    .line 756
    .local v3, "ret":I
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    if-eqz v9, :cond_8

    .line 758
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 761
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v7

    .line 762
    .local v7, "szFreeMem":J
    sget-object v9, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v9}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v9

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v11

    add-long v5, v9, v11

    .line 764
    .local v5, "szAvailableMem":J
    move/from16 v2, p1

    .line 765
    .local v2, "maxEmpty":I
    div-int/lit8 v9, v2, 0x2

    sput v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 767
    sget v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v10, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    if-ge v9, v10, :cond_0

    .line 768
    sget v9, Lcom/android/server/am/ProcessList;->MIN_CACHED_APPS:I

    sput v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 770
    :cond_0
    sget v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    sget v10, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    if-le v9, v10, :cond_1

    .line 771
    sget v9, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sput v9, Lcom/android/server/am/ProcessList;->mMaxCached:I

    .line 774
    :cond_1
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_2

    .line 775
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "AvailableMem = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-wide/16 v11, 0x400

    div-long v11, v5, v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB (Free: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB, Cached: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/android/server/am/ProcessList;->mInfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v11}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB) "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "Threshold = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "kB [MaxHidden: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget v11, Lcom/android/server/am/ProcessList;->mMaxCached:I

    add-int v11, v11, p1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Current Hidden"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Current Empty"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_2
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_6

    move v4, v3

    .line 832
    .end local v2    # "maxEmpty":I
    .end local v3    # "ret":I
    .end local v5    # "szAvailableMem":J
    .end local v7    # "szFreeMem":J
    .local v4, "ret":I
    :goto_1
    return v4

    .line 749
    .end local v4    # "ret":I
    :cond_3
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 750
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, p1, v9

    sget v10, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_4

    sget v9, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_2
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 751
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    sget v10, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_5

    sget v9, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_3
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    goto/16 :goto_0

    .line 750
    :cond_4
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, p1, v9

    goto :goto_2

    .line 751
    :cond_5
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    goto :goto_3

    .line 786
    .restart local v2    # "maxEmpty":I
    .restart local v3    # "ret":I
    .restart local v5    # "szAvailableMem":J
    .restart local v7    # "szFreeMem":J
    :cond_6
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_7

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_9

    :cond_7
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v3, v9, :cond_9

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    if-le v3, v9, :cond_9

    .line 788
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->decrementEmptyAppCount(II)I

    move-result v3

    .line 789
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_8

    .line 790
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decrease Hidden App1 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "maxEmpty":I
    .end local v5    # "szAvailableMem":J
    .end local v7    # "szFreeMem":J
    :cond_8
    :goto_4
    move v4, v3

    .line 832
    .end local v3    # "ret":I
    .restart local v4    # "ret":I
    goto :goto_1

    .line 794
    .end local v4    # "ret":I
    .restart local v2    # "maxEmpty":I
    .restart local v3    # "ret":I
    .restart local v5    # "szAvailableMem":J
    .restart local v7    # "szFreeMem":J
    :cond_9
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_a

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-gez v9, :cond_b

    :cond_a
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-le v3, v9, :cond_b

    .line 796
    move/from16 v0, p3

    move/from16 v1, p2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessList;->decrementEmptyAppCount(II)I

    move-result v3

    .line 797
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_8

    .line 798
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Decrease Hidden App2 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 803
    :cond_b
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSz2ndDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    sget-wide v11, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_f

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-lez v9, :cond_f

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-ge v3, v9, :cond_f

    move/from16 v0, p3

    if-lt v0, v2, :cond_f

    .line 806
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int/2addr v3, v9

    .line 807
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 808
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v9, v3, :cond_c

    .line 809
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    sget v10, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_d

    sget v9, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_5
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 810
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    sget v10, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_e

    sget v9, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_6
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    .line 812
    :cond_c
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_8

    .line 813
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Increase Hidden App1 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 809
    :cond_d
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    goto :goto_5

    .line 810
    :cond_e
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    goto :goto_6

    .line 817
    :cond_f
    long-to-float v9, v5

    iget-wide v10, p0, Lcom/android/server/am/ProcessList;->mSzDHAThreshold:J

    long-to-float v10, v10

    iget v11, p0, Lcom/android/server/am/ProcessList;->mSzDHAThresholdRate:F

    mul-float/2addr v10, v11

    sget-wide v11, Lcom/android/server/am/ProcessList;->DHA_INCREASE_THRESHOLD:J

    long-to-float v11, v11

    add-float/2addr v10, v11

    cmpl-float v9, v9, v10

    if-lez v9, :cond_8

    iget-wide v9, p0, Lcom/android/server/am/ProcessList;->mSzDHADefendThreshold:J

    cmp-long v9, v7, v9

    if-lez v9, :cond_8

    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-lt v3, v9, :cond_8

    sget v9, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    if-ge v3, v9, :cond_8

    move/from16 v0, p3

    if-lt v0, v2, :cond_8

    .line 820
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzDHAStep:I

    add-int/2addr v3, v9

    .line 821
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzUpdateDHACount:I

    .line 822
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    if-gt v9, v3, :cond_10

    .line 823
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    sget v10, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_11

    sget v9, Lcom/android/server/am/ProcessList;->MID_EMPTY_APPS_FOR_DHA:I

    :goto_7
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    .line 824
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    sget v10, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    if-ge v9, v10, :cond_12

    sget v9, Lcom/android/server/am/ProcessList;->MIN_EMPTY_APPS_FOR_DHA:I

    :goto_8
    iput v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2nd:I

    .line 826
    :cond_10
    sget-boolean v9, Lcom/android/server/am/ProcessList;->DEBUG:Z

    if-eqz v9, :cond_8

    .line 827
    const-string v9, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Increase Hidden App2 Number from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 823
    :cond_11
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHAStep:I

    sub-int v9, v3, v9

    goto :goto_7

    .line 824
    :cond_12
    iget v9, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA:I

    iget v10, p0, Lcom/android/server/am/ProcessList;->mSzMidDHA2ndStep:I

    sub-int/2addr v9, v10

    goto :goto_8
.end method
