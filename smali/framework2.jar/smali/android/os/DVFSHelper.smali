.class public Landroid/os/DVFSHelper;
.super Ljava/lang/Object;
.source "DVFSHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/DVFSHelper$1;,
        Landroid/os/DVFSHelper$ModelMSM8x26;,
        Landroid/os/DVFSHelper$ModelHawaii;,
        Landroid/os/DVFSHelper$ModelD2;,
        Landroid/os/DVFSHelper$ModelExynos4;,
        Landroid/os/DVFSHelper$ModelKAM;,
        Landroid/os/DVFSHelper$ModelPicasso3GWIFI;,
        Landroid/os/DVFSHelper$ModelV23GWIFI;,
        Landroid/os/DVFSHelper$ModelV13GWIFI;,
        Landroid/os/DVFSHelper$ModelKQ;,
        Landroid/os/DVFSHelper$ModelKA;,
        Landroid/os/DVFSHelper$ModelKF;,
        Landroid/os/DVFSHelper$ModelHA;,
        Landroid/os/DVFSHelper$ModelHF;,
        Landroid/os/DVFSHelper$ModelSantos10;,
        Landroid/os/DVFSHelper$ModelJF;,
        Landroid/os/DVFSHelper$ModelJA;,
        Landroid/os/DVFSHelper$ModelJBP;,
        Landroid/os/DVFSHelper$Model;
    }
.end annotation


# static fields
.field public static final ACTION_AMS_RESUME:Ljava/lang/String; = "ActivityManager_resume"

.field public static final ACTION_BROWSER_FLING:Ljava/lang/String; = "Browser_fling"

.field public static final ACTION_GALLERY_TOUCH:Ljava/lang/String; = "Gallery_touch"

.field public static final ACTION_LAUNCHER_HOMEMENU:Ljava/lang/String; = "Launcher_homemenu"

.field public static final ACTION_LAUNCHER_TOUCH:Ljava/lang/String; = "Launcher_touch"

.field public static final ACTION_LISTVIEW_SCROLL:Ljava/lang/String; = "ListView_scroll"

.field public static final ACTION_PWM_ROTATION:Ljava/lang/String; = "PhoneWindowManager_rotation"

.field public static final ACTION_SHAREMUSIC_GROUPPLAY:Ljava/lang/String; = "ShareMusic_groupPlay"

.field public static volatile AMS_RESUME_TAIL_BOOST_TIMEOUT:I = 0x0

.field private static final BASE_MODEL:Ljava/lang/String; = "kf"

.field private static final BOARD_PLATFORM:Ljava/lang/String;

.field public static final BOOST_TYPE_LCD_FRAME_RATE:I = 0x4

.field public static final BOOST_TYPE_TOUCH:I = 0x1

.field public static final BO_BUS_MAX:J = 0x8L

.field public static final BO_CPU_MAX:J = 0x2L

.field public static final BO_CUSTOM_VALUE:J = 0x20L

.field private static final DEVICE_TYPE:Ljava/lang/String;

.field public static volatile LIST_SCROLL_BOOSTER_CORE_NUM:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "DVFSHelper"

.field public static final OPTION_BUS_MAX:J = 0x8L

.field public static final OPTION_CPU_CORE_NUM_MAX:J = 0x4L

.field public static final OPTION_CPU_MAX:J = 0x2L

.field public static final OPTION_NONE:J = 0x0L

.field private static final SIOP_MODEL:Ljava/lang/String; = "ssrm_kflte_xx"

.field public static final TYPE_BUS_MAX:I = 0x14

.field public static final TYPE_BUS_MIN:I = 0x13

.field public static final TYPE_CPU_CORE_NUM_MAX:I = 0xf

.field public static final TYPE_CPU_CORE_NUM_MIN:I = 0xe

.field public static final TYPE_CPU_MAX:I = 0xd

.field public static final TYPE_CPU_MIN:I = 0xc

.field public static final TYPE_EMMC_BURST_MODE:I = 0x12

.field public static final TYPE_FPS_MAX:I = 0x15

.field public static final TYPE_GPU_MAX:I = 0x11

.field public static final TYPE_GPU_MIN:I = 0x10

.field public static final TYPE_NONE:I = 0xb

.field private static final isEngBinary:Z

.field private static mToken:I


# instance fields
.field final APP_LAUNCH_BOOSTING_TIMEOUT:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_H:I

.field final APP_LAUNCH_BOOSTING_TIMEOUT_K:I

.field final ROTATION_BOOSTING_TIMEOUT:I

.field final ROTATION_GPU_BOOSTING_TIMEOUT:I

.field busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field private cpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

.field mCPUCoreTable:[I

.field mCPUFrequencyTable:[I

.field mCameraCPUBooster:Landroid/os/DVFSHelper;

.field mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field private mContext:Landroid/content/Context;

.field private mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field private mCustomValue:I

.field private mId:I

.field private mIntent:Landroid/content/Intent;

.field private mIntentExtra:Landroid/content/Intent;

.field private volatile mIsAcquired:Z

.field private mModel:Landroid/os/DVFSHelper$Model;

.field private mOption:J

.field private mPkgName:Ljava/lang/String;

.field private mRandom:Ljava/util/Random;

.field mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

.field mRotationGPUBooster:Landroid/os/DVFSHelper;

.field private mSupportedBUSFrequency:[I

.field private mSupportedCPUCoreNum:[I

.field private mSupportedCPUFrequency:[I

.field private mSupportedCPUFrequencyForSSRM:[I

.field private mSupportedGPUFrequency:[I

.field private mType:I

.field mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 49
    sput v1, Landroid/os/DVFSHelper;->LIST_SCROLL_BOOSTER_CORE_NUM:I

    .line 50
    sput v1, Landroid/os/DVFSHelper;->AMS_RESUME_TAIL_BOOST_TIMEOUT:I

    .line 54
    const-string/jumbo v0, "ro.board.platform"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, "ro.build.characteristics"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    .line 83
    sput v1, Landroid/os/DVFSHelper;->mToken:I

    .line 644
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 90
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I
    .param p3, "option"    # J

    .prologue
    .line 94
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "option"    # J

    .prologue
    .line 99
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJI)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IJI)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "option"    # J
    .param p6, "customValue"    # I

    .prologue
    const/16 v5, 0x7d0

    const/16 v4, 0x1f4

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object v2, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 58
    iput-object v2, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 59
    iput-object v2, p0, Landroid/os/DVFSHelper;->mIntent:Landroid/content/Intent;

    .line 60
    iput-object v2, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 61
    const/16 v0, 0xb

    iput v0, p0, Landroid/os/DVFSHelper;->mType:I

    .line 62
    iput v3, p0, Landroid/os/DVFSHelper;->mId:I

    .line 63
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    .line 66
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 67
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuBoost:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 69
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 70
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 71
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 72
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 73
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 75
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 76
    iput-object v2, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 77
    iput-object v2, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 78
    iput-object v2, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 79
    iput-object v2, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 80
    iput-object v2, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 82
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    .line 85
    iput-boolean v3, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    .line 660
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    .line 661
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 662
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 663
    iput-object v2, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 664
    iput v5, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT:I

    .line 665
    iput v4, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_H:I

    .line 666
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/os/DVFSHelper;->APP_LAUNCH_BOOSTING_TIMEOUT_K:I

    .line 723
    iput v4, p0, Landroid/os/DVFSHelper;->ROTATION_BOOSTING_TIMEOUT:I

    .line 724
    iput-object v2, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 725
    iput v5, p0, Landroid/os/DVFSHelper;->ROTATION_GPU_BOOSTING_TIMEOUT:I

    .line 726
    iput-object v2, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 103
    if-nez p1, :cond_0

    .line 104
    const-string v0, "DVFSHelper"

    const-string v1, "DVFSHelper:: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :goto_0
    return-void

    .line 107
    :cond_0
    iput-object p1, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    .line 108
    invoke-direct {p0}, Landroid/os/DVFSHelper;->createModel()Landroid/os/DVFSHelper$Model;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    .line 110
    iget-object v0, p0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    const-string v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 111
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_1

    .line 112
    const-string v0, "DVFSHelper"

    const-string v1, "DVFSHelper:: failed to load CFMS"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_1
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DVFSHelper:: New instance is created for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    .line 119
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    .line 120
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustCPUFreqTable()V

    .line 121
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    .line 122
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedGPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    .line 123
    invoke-direct {p0}, Landroid/os/DVFSHelper;->adjustGPUFreqTable()V

    .line 124
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager;->getSupportedSysBusFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    .line 126
    sget v0, Landroid/os/DVFSHelper;->mToken:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroid/os/DVFSHelper;->mToken:I

    .line 127
    if-eqz p2, :cond_2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    .line 133
    :goto_1
    iput p3, p0, Landroid/os/DVFSHelper;->mType:I

    .line 134
    iput-wide p4, p0, Landroid/os/DVFSHelper;->mOption:J

    .line 135
    invoke-direct {p0}, Landroid/os/DVFSHelper;->getRandomNum()I

    move-result v0

    iput v0, p0, Landroid/os/DVFSHelper;->mId:I

    .line 136
    iput p6, p0, Landroid/os/DVFSHelper;->mCustomValue:I

    goto/16 :goto_0

    .line 130
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/DVFSHelper;->mToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    goto :goto_1
.end method

.method static synthetic access$000(Landroid/os/DVFSHelper;)[I
    .locals 1
    .param p0, "x0"    # Landroid/os/DVFSHelper;

    .prologue
    .line 17
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    return-object v0
.end method

.method private adjustCPUFreqTable()V
    .locals 5

    .prologue
    .line 141
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v3, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    const/4 v0, 0x0

    .line 146
    .local v0, "SHIFT_STEPS":I
    const-string v3, "hf"

    const-string v4, "kf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    .line 147
    :cond_2
    const-string v3, "kf"

    const-string v4, "kf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "ka"

    const-string v4, "kf"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v0, 0x2

    .line 148
    :cond_4
    const-string/jumbo v3, "ssrm_kflte_xx"

    const-string v4, "ja_kor"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v0, 0x3

    .line 150
    :cond_5
    if-lez v0, :cond_0

    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    if-le v3, v0, :cond_0

    .line 151
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    new-array v2, v3, [I

    .line 152
    .local v2, "newCPUFreqTable":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v3, v3

    sub-int/2addr v3, v0

    if-ge v1, v3, :cond_6

    .line 153
    iget-object v3, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int v4, v1, v0

    aget v3, v3, v4

    aput v3, v2, v1

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 155
    :cond_6
    iput-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    goto :goto_0
.end method

.method private adjustGPUFreqTable()V
    .locals 4

    .prologue
    .line 161
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-nez v2, :cond_1

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v2, "ha"

    const-string v3, "kf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 165
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    new-array v1, v2, [I

    .line 166
    .local v1, "newGPUFreqTable":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    if-ge v0, v2, :cond_2

    .line 167
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    add-int/lit8 v3, v0, 0x2

    aget v2, v2, v3

    aput v2, v1, v0

    .line 166
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 169
    :cond_2
    iput-object v1, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    goto :goto_0
.end method

.method private createModel()Landroid/os/DVFSHelper$Model;
    .locals 2

    .prologue
    .line 976
    const-string v0, "ha"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ssrm_kflte_xx"

    const-string/jumbo v1, "vienna"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    new-instance v0, Landroid/os/DVFSHelper$ModelV13GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV13GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    .line 1025
    :goto_0
    return-object v0

    .line 979
    :cond_0
    const-string v0, "ha"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "ssrm_kflte_xx"

    const-string/jumbo v1, "v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 980
    new-instance v0, Landroid/os/DVFSHelper$ModelV23GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelV23GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 982
    :cond_1
    const-string v0, "ha"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "ssrm_kflte_xx"

    const-string/jumbo v1, "picasso"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    new-instance v0, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelPicasso3GWIFI;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 985
    :cond_2
    const-string v0, "jf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 986
    new-instance v0, Landroid/os/DVFSHelper$ModelJF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJF;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 988
    :cond_3
    const-string v0, "ja"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 989
    new-instance v0, Landroid/os/DVFSHelper$ModelJA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJA;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 991
    :cond_4
    const-string v0, "hf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 992
    new-instance v0, Landroid/os/DVFSHelper$ModelHF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHF;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 994
    :cond_5
    const-string v0, "ha"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 995
    new-instance v0, Landroid/os/DVFSHelper$ModelHA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHA;-><init>(Landroid/os/DVFSHelper;)V

    goto :goto_0

    .line 997
    :cond_6
    const-string v0, "kf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 998
    new-instance v0, Landroid/os/DVFSHelper$ModelKF;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKF;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1000
    :cond_7
    const-string v0, "ka"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1001
    new-instance v0, Landroid/os/DVFSHelper$ModelKA;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKA;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1003
    :cond_8
    const-string v0, "kq"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1004
    new-instance v0, Landroid/os/DVFSHelper$ModelKQ;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKQ;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1006
    :cond_9
    const-string v0, "clovertrail"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1007
    new-instance v0, Landroid/os/DVFSHelper$ModelSantos10;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelSantos10;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1009
    :cond_a
    const-string v0, "exynos4"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1010
    new-instance v0, Landroid/os/DVFSHelper$ModelExynos4;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelExynos4;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1012
    :cond_b
    const-string v0, "kam"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1013
    new-instance v0, Landroid/os/DVFSHelper$ModelKAM;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelKAM;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1015
    :cond_c
    const-string/jumbo v0, "ssrm_kflte_xx"

    const-string v1, "d2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 1016
    new-instance v0, Landroid/os/DVFSHelper$ModelD2;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelD2;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1018
    :cond_d
    const-string v0, "hawaii"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1019
    new-instance v0, Landroid/os/DVFSHelper$ModelHawaii;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelHawaii;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1021
    :cond_e
    const-string/jumbo v0, "msm8226"

    sget-object v1, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1022
    new-instance v0, Landroid/os/DVFSHelper$ModelMSM8x26;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelMSM8x26;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0

    .line 1025
    :cond_f
    new-instance v0, Landroid/os/DVFSHelper$ModelJBP;

    invoke-direct {v0, p0}, Landroid/os/DVFSHelper$ModelJBP;-><init>(Landroid/os/DVFSHelper;)V

    goto/16 :goto_0
.end method

.method private getRandomNum()I
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Landroid/os/DVFSHelper;->mRandom:Ljava/util/Random;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 647
    sget-boolean v0, Landroid/os/DVFSHelper;->isEngBinary:Z

    if-eqz v0, :cond_0

    .line 648
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 1

    .prologue
    .line 287
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 288
    return-void
.end method

.method public acquire(I)V
    .locals 27
    .param p1, "timeout"    # I

    .prologue
    .line 295
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_0

    .line 509
    :goto_0
    return-void

    .line 299
    :cond_0
    const-string v2, "DVFSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquire:: timeout = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", mIsAcquired = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v2, :cond_1

    .line 302
    const-string v2, "DVFSHelper"

    const-string v3, "acquire:: DVFS lock is already acquired. Previous lock will be released first."

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-virtual/range {p0 .. p0}, Landroid/os/DVFSHelper;->release()V

    .line 307
    :cond_1
    const/16 v21, 0x0

    .line 308
    .local v21, "bundle":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-eqz v2, :cond_2

    .line 309
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    .line 312
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Landroid/os/DVFSHelper;->mType:I

    packed-switch v2, :pswitch_data_0

    .line 489
    const-string v2, "DVFSHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquire:: the request type doesn\'t implemented yet. mType = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v5, v0, Landroid/os/DVFSHelper;->mType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_4

    .line 494
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 496
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_5

    .line 497
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 499
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_6

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 502
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_7

    .line 503
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 505
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_8

    .line 506
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    .line 508
    :cond_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto/16 :goto_0

    .line 314
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v2, :cond_3

    .line 315
    const/4 v4, 0x0

    .line 316
    .local v4, "coreNum":I
    const/16 v26, 0x0

    .line 317
    .local v26, "stringCoreNum":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v5, 0x4

    cmp-long v2, v2, v5

    if-nez v2, :cond_a

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    const/4 v3, 0x0

    aget v4, v2, v3

    .line 331
    :cond_9
    :goto_2
    const/4 v2, 0x2

    if-lt v4, v2, :cond_3

    .line 332
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v3, 0x4

    move/from16 v0, p1

    int-to-long v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v2 .. v8}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto :goto_1

    .line 321
    :cond_a
    if-eqz v21, :cond_b

    .line 322
    :try_start_0
    const-string v2, "CORE_NUM"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v26

    .line 326
    :cond_b
    :goto_3
    if-eqz v26, :cond_9

    .line 327
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    .line 338
    .end local v4    # "coreNum":I
    .end local v26    # "stringCoreNum":Ljava/lang/String;
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    if-eqz v2, :cond_3

    .line 339
    const/4 v4, 0x0

    .line 340
    .restart local v4    # "coreNum":I
    const/16 v26, 0x0

    .line 342
    .restart local v26    # "stringCoreNum":Ljava/lang/String;
    if-eqz v21, :cond_c

    .line 343
    :try_start_1
    const-string v2, "CORE_NUM"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v26

    .line 347
    :cond_c
    :goto_4
    if-eqz v26, :cond_d

    .line 348
    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 351
    :cond_d
    if-lez v4, :cond_3

    .line 352
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v3, 0x5

    move/from16 v0, p1

    int-to-long v5, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v2 .. v8}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 358
    .end local v4    # "coreNum":I
    .end local v26    # "stringCoreNum":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v2, :cond_3

    .line 359
    const/4 v7, -0x1

    .line 360
    .local v7, "freq":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v5, 0x2

    cmp-long v2, v2, v5

    if-nez v2, :cond_10

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v3, 0x0

    aget v7, v2, v3

    .line 369
    :cond_e
    :goto_5
    const-string v2, "ja"

    const-string v3, "kf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const v2, 0x186a00

    if-le v7, v2, :cond_f

    .line 370
    const v2, 0x186a00

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v7

    .line 373
    :cond_f
    const/4 v2, -0x1

    if-eq v7, v2, :cond_3

    .line 374
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v6, 0x6

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 362
    :cond_10
    if-eqz v21, :cond_e

    .line 363
    const-string v2, "CPU"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 364
    .local v23, "cpuOption":Ljava/lang/String;
    if-eqz v23, :cond_e

    .line 365
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    goto :goto_5

    .line 380
    .end local v7    # "freq":I
    .end local v23    # "cpuOption":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-eqz v2, :cond_3

    .line 381
    const/4 v7, -0x1

    .line 382
    .restart local v7    # "freq":I
    if-eqz v21, :cond_11

    .line 383
    const-string v2, "CPU"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 384
    .restart local v23    # "cpuOption":Ljava/lang/String;
    if-eqz v23, :cond_11

    .line 385
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 389
    .end local v23    # "cpuOption":Ljava/lang/String;
    :cond_11
    const/4 v2, -0x1

    if-eq v7, v2, :cond_3

    .line 390
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v6, 0x7

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 396
    .end local v7    # "freq":I
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v2, :cond_3

    .line 397
    const/4 v7, -0x1

    .line 398
    .restart local v7    # "freq":I
    if-eqz v21, :cond_12

    .line 399
    const-string v2, "GPU"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 400
    .local v25, "gpuOption":Ljava/lang/String;
    if-eqz v25, :cond_12

    .line 401
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 405
    .end local v25    # "gpuOption":Ljava/lang/String;
    :cond_12
    const/4 v2, -0x1

    if-eq v7, v2, :cond_3

    .line 406
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v6, 0x1

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 412
    .end local v7    # "freq":I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    if-eqz v2, :cond_3

    .line 413
    const/4 v7, -0x1

    .line 414
    .restart local v7    # "freq":I
    if-eqz v21, :cond_13

    .line 415
    const-string v2, "GPU"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 416
    .restart local v25    # "gpuOption":Ljava/lang/String;
    if-eqz v25, :cond_13

    .line 417
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 421
    .end local v25    # "gpuOption":Ljava/lang/String;
    :cond_13
    const/4 v2, -0x1

    if-eq v7, v2, :cond_3

    .line 422
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v6, 0x9

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 428
    .end local v7    # "freq":I
    :pswitch_6
    const/4 v7, -0x1

    .line 430
    .restart local v7    # "freq":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_14

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 432
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 435
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v6, 0x8

    move/from16 v0, p1

    int-to-long v8, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v5 .. v11}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 439
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v2, :cond_3

    .line 440
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v2}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->doFrequencyRequest()V

    goto/16 :goto_1

    .line 444
    .end local v7    # "freq":I
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v2, :cond_3

    .line 445
    const/4 v10, -0x1

    .line 446
    .local v10, "busMinfreq":I
    move-object/from16 v0, p0

    iget-wide v2, v0, Landroid/os/DVFSHelper;->mOption:J

    const-wide/16 v5, 0x8

    cmp-long v2, v2, v5

    if-nez v2, :cond_16

    .line 447
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    const/4 v3, 0x0

    aget v10, v2, v3

    .line 454
    :cond_15
    :goto_6
    const/4 v2, -0x1

    if-eq v10, v2, :cond_3

    .line 455
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v9, 0xa

    move/from16 v0, p1

    int-to-long v11, v0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    invoke-virtual/range {v8 .. v14}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 448
    :cond_16
    if-eqz v21, :cond_15

    .line 449
    const-string v2, "BUS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 450
    .local v22, "busOption":Ljava/lang/String;
    if-eqz v22, :cond_15

    .line 451
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_6

    .line 461
    .end local v10    # "busMinfreq":I
    .end local v22    # "busOption":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    if-eqz v2, :cond_3

    .line 462
    const/4 v13, -0x1

    .line 463
    .local v13, "busMaxfreq":I
    if-eqz v21, :cond_17

    .line 464
    const-string v2, "BUS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 465
    .restart local v22    # "busOption":Ljava/lang/String;
    if-eqz v22, :cond_17

    .line 466
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 469
    .end local v22    # "busOption":Ljava/lang/String;
    :cond_17
    const/4 v2, -0x1

    if-eq v13, v2, :cond_3

    .line 470
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/16 v12, 0xb

    move/from16 v0, p1

    int-to-long v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v11 .. v17}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 476
    .end local v13    # "busMaxfreq":I
    :pswitch_9
    const/16 v16, 0x63

    .line 477
    .local v16, "fpsMax":I
    if-eqz v21, :cond_18

    .line 478
    const-string v2, "FPS"

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 479
    .local v24, "fpsOption":Ljava/lang/String;
    if-eqz v24, :cond_18

    .line 480
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 483
    .end local v24    # "fpsOption":Ljava/lang/String;
    :cond_18
    if-ltz v16, :cond_3

    const/16 v2, 0x63

    move/from16 v0, v16

    if-ge v0, v2, :cond_3

    .line 484
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    const/4 v15, 0x3

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mPkgName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/os/DVFSHelper;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v14 .. v20}, Landroid/os/CustomFrequencyManager;->newFrequencyRequest(IIJLjava/lang/String;Landroid/content/Context;)Landroid/os/CustomFrequencyManager$FrequencyRequest;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    goto/16 :goto_1

    .line 345
    .end local v16    # "fpsMax":I
    .restart local v4    # "coreNum":I
    .restart local v26    # "stringCoreNum":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_4

    .line 324
    :catch_1
    move-exception v2

    goto/16 :goto_3

    .line 312
    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public acquire(Ljava/lang/String;)V
    .locals 2
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    .line 276
    iget-object v1, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v1, p1}, Landroid/os/DVFSHelper$Model;->getTimeoutForAction(Ljava/lang/String;)I

    move-result v0

    .line 277
    .local v0, "timeout":I
    if-lez v0, :cond_0

    .line 278
    invoke-virtual {p0, v0}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 280
    :cond_0
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;J)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 571
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 574
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 575
    return-void
.end method

.method public addExtraOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 564
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 565
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 567
    :cond_0
    iget-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    return-void
.end method

.method public addExtraOptionsByDefaultPolicy(Ljava/lang/String;)V
    .locals 5
    .param p1, "actionName"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x10

    .line 582
    iget-object v2, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v2, :cond_1

    .line 642
    :cond_0
    :goto_0
    return-void

    .line 587
    :cond_1
    const-string v2, "ActivityManager_resume"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 588
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_2

    .line 589
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUFreq()I

    move-result v1

    .line 590
    .local v1, "freq":I
    if-lez v1, :cond_0

    .line 591
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 593
    .end local v1    # "freq":I
    :cond_2
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_3

    .line 594
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeGPUFreq()I

    move-result v1

    .line 595
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 596
    const-string v2, "GPU"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 598
    .end local v1    # "freq":I
    :cond_3
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    const/16 v3, 0xe

    if-ne v2, v3, :cond_0

    .line 599
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getAMSResumeCPUCore()I

    move-result v0

    .line 600
    .local v0, "coreNum":I
    if-lez v0, :cond_0

    .line 601
    const-string v2, "CORE_NUM"

    int-to-long v3, v0

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 604
    .end local v0    # "coreNum":I
    :cond_4
    const-string v2, "Gallery_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 605
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getGalleryTouchCPUFreq()I

    move-result v1

    .line 606
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 607
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 609
    .end local v1    # "freq":I
    :cond_5
    const-string v2, "Launcher_touch"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 610
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchCPUFreq()I

    move-result v1

    .line 611
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 612
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_0

    .line 614
    .end local v1    # "freq":I
    :cond_6
    const-string v2, "ListView_scroll"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 615
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getListScrollCPUFreq()I

    move-result v1

    .line 616
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 617
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 619
    .end local v1    # "freq":I
    :cond_7
    const-string v2, "PhoneWindowManager_rotation"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 620
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getRotationCPUFreq()I

    move-result v1

    .line 621
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 622
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 624
    .end local v1    # "freq":I
    :cond_8
    const-string v2, "Launcher_homemenu"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 625
    iget v2, p0, Landroid/os/DVFSHelper;->mType:I

    if-ne v2, v4, :cond_0

    .line 626
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getLauncherTouchGPUFreq()I

    move-result v1

    .line 627
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 628
    const-string v2, "GPU"

    int-to-long v3, v1

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 631
    .end local v1    # "freq":I
    :cond_9
    const-string v2, "ShareMusic_groupPlay"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 632
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getShareMusicCPUFreq()I

    move-result v1

    .line 633
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 634
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 636
    .end local v1    # "freq":I
    :cond_a
    const-string v2, "Browser_fling"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 637
    iget-object v2, p0, Landroid/os/DVFSHelper;->mModel:Landroid/os/DVFSHelper$Model;

    invoke-virtual {v2}, Landroid/os/DVFSHelper$Model;->getBrowserFlingCpuFreq()I

    move-result v1

    .line 638
    .restart local v1    # "freq":I
    if-lez v1, :cond_0

    .line 639
    const-string v2, "CPU"

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto/16 :goto_0
.end method

.method public cancelExtraOptions()V
    .locals 1

    .prologue
    .line 578
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mIntentExtra:Landroid/content/Intent;

    .line 579
    return-void
.end method

.method public getApproximateCPUFrequency(I)I
    .locals 4
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 185
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_1

    .line 202
    :cond_0
    :goto_0
    return v1

    .line 188
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 189
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 193
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 194
    .local v1, "realFreq":I
    :goto_1
    if-lez v0, :cond_0

    .line 195
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 196
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 197
    goto :goto_0

    .line 199
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximum(D)I
    .locals 3
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 209
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    if-nez v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 212
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    array-length v0, v2

    .line 213
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 217
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v1

    goto :goto_0
.end method

.method public getApproximateCPUFrequencyByPercentOfMaximumForSSRM(D)I
    .locals 3
    .param p1, "percent"    # D

    .prologue
    const/4 v1, -0x1

    .line 248
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 251
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v2

    .line 252
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 256
    iget-object v1, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-double v1, v1

    mul-double/2addr v1, p1

    double-to-int v1, v1

    invoke-virtual {p0, v1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequencyForSSRM(I)I

    move-result v1

    goto :goto_0
.end method

.method public getApproximateCPUFrequencyForSSRM(I)I
    .locals 4
    .param p1, "freq"    # I

    .prologue
    const/4 v1, -0x1

    .line 224
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    if-nez v2, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v1

    .line 227
    :cond_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    array-length v0, v2

    .line 228
    .local v0, "length":I
    if-lez v0, :cond_0

    .line 232
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    const/4 v3, 0x0

    aget v1, v2, v3

    .line 233
    .local v1, "realFreq":I
    :goto_1
    if-lez v0, :cond_0

    .line 234
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-lt v2, p1, :cond_2

    .line 235
    iget-object v2, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v2, v3

    .line 236
    goto :goto_0

    .line 238
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public getSupportedBUSFrequency()[I
    .locals 1

    .prologue
    .line 268
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedBUSFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUCoreNum()[I
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUCoreNum:[I

    return-object v0
.end method

.method public getSupportedCPUFrequency()[I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequency:[I

    return-object v0
.end method

.method public getSupportedCPUFrequencyForSSRM()[I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedCPUFrequencyForSSRM:[I

    return-object v0
.end method

.method public getSupportedGPUFrequency()[I
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Landroid/os/DVFSHelper;->mSupportedGPUFrequency:[I

    return-object v0
.end method

.method public isAquired()Z
    .locals 1

    .prologue
    .line 512
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    return v0
.end method

.method public onAppLaunchEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const-wide/16 v4, 0x0

    const/16 v9, 0x3e8

    const/16 v8, 0x1f4

    const/4 v7, 0x0

    const/16 v6, 0x7d0

    .line 669
    if-nez p2, :cond_1

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 675
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CPU"

    const/16 v3, 0xc

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    .line 676
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    .line 677
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_7

    .line 678
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v2

    aget v2, v2, v7

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 685
    :cond_2
    :goto_1
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v0, :cond_3

    .line 686
    new-instance v0, Landroid/os/DVFSHelper;

    const-string v2, "LAUNCHER_APP_BOOSTER_CORE"

    const/16 v3, 0xe

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 687
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    .line 688
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_8

    .line 689
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    iget-object v2, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    aget v2, v2, v7

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 695
    :cond_3
    :goto_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUFrequencyTable:[I

    if-eqz v0, :cond_5

    .line 696
    const-string v0, "hf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "ha"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "kam"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 697
    :cond_4
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v8}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 708
    :cond_5
    :goto_3
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCPUCoreTable:[I

    if-eqz v0, :cond_0

    .line 709
    const-string v0, "hf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "ha"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "kam"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 710
    :cond_6
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v8}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0

    .line 680
    :cond_7
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUFrequencyTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 691
    :cond_8
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "onAppLaunchEvent:: mCPUCoreTable is null"

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 698
    :cond_9
    const-string v0, "kf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "ka"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "kq"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 699
    :cond_a
    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 700
    :cond_b
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_3

    .line 702
    :cond_c
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_3

    .line 705
    :cond_d
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto :goto_3

    .line 711
    :cond_e
    const-string v0, "kf"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "ka"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "kq"

    const-string v1, "kf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 712
    :cond_f
    const-string v0, "com.sec.android.gallery3d"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "com.sec.android.app.camera"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 713
    :cond_10
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0

    .line 715
    :cond_11
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v9}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0

    .line 718
    :cond_12
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCameraCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v0, v6}, Landroid/os/DVFSHelper;->acquire(I)V

    goto/16 :goto_0
.end method

.method public onWindowRotationEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 729
    iget-object v2, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-nez v2, :cond_0

    .line 730
    new-instance v2, Landroid/os/DVFSHelper;

    const/16 v3, 0xe

    invoke-direct {v2, p1, v3}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    .line 731
    iget-object v2, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    .line 732
    .local v0, "coreTable":[I
    if-eqz v0, :cond_5

    .line 733
    iget-object v2, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const-string v3, "CORE_NUM"

    const/4 v4, 0x0

    aget v4, v0, v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 738
    .end local v0    # "coreTable":[I
    :cond_0
    :goto_0
    iget-object v2, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_1

    .line 739
    iget-object v2, p0, Landroid/os/DVFSHelper;->mRotationCPUCoreNumBooster:Landroid/os/DVFSHelper;

    const/16 v3, 0x1f4

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 742
    :cond_1
    const-string v2, "exynos4"

    sget-object v3, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "hf"

    const-string v3, "kf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "tablet"

    sget-object v3, Landroid/os/DVFSHelper;->DEVICE_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 743
    :cond_2
    iget-object v2, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-nez v2, :cond_3

    .line 744
    new-instance v2, Landroid/os/DVFSHelper;

    const/16 v3, 0x10

    invoke-direct {v2, p1, v3}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    .line 745
    iget-object v2, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v1

    .line 746
    .local v1, "gpuTable":[I
    if-eqz v1, :cond_7

    .line 747
    const-string v2, "exynos4"

    sget-object v3, Landroid/os/DVFSHelper;->BOARD_PLATFORM:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 748
    iget-object v2, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    aget v4, v1, v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 756
    .end local v1    # "gpuTable":[I
    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_4

    .line 757
    iget-object v2, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const/16 v3, 0x7d0

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->acquire(I)V

    .line 760
    :cond_4
    return-void

    .line 735
    .restart local v0    # "coreTable":[I
    :cond_5
    const-string v2, "DVFSHelper"

    const-string/jumbo v3, "onWindowRotationEvent:: coreTable is null"

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 750
    .end local v0    # "coreTable":[I
    .restart local v1    # "gpuTable":[I
    :cond_6
    iget-object v2, p0, Landroid/os/DVFSHelper;->mRotationGPUBooster:Landroid/os/DVFSHelper;

    const-string v3, "GPU"

    const/4 v4, 0x1

    aget v4, v1, v4

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    goto :goto_1

    .line 753
    :cond_7
    const-string v2, "DVFSHelper"

    const-string/jumbo v3, "onWindowRotationEvent:: gpuTable is null"

    invoke-static {v2, v3}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 520
    iget-object v0, p0, Landroid/os/DVFSHelper;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    const-string v0, "DVFSHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release:: mIsAcquired = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 532
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: cpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 535
    :cond_2
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_3

    .line 536
    iget-object v0, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 537
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: cpuNumRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    iput-object v3, p0, Landroid/os/DVFSHelper;->cpuNumRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 540
    :cond_3
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_4

    .line 541
    iget-object v0, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 542
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: gpuRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    iput-object v3, p0, Landroid/os/DVFSHelper;->gpuRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 545
    :cond_4
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_5

    .line 546
    iget-object v0, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 547
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: busRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iput-object v3, p0, Landroid/os/DVFSHelper;->busRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 550
    :cond_5
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_6

    .line 551
    iget-object v0, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 552
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: mmcRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    iput-object v3, p0, Landroid/os/DVFSHelper;->mmcRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 555
    :cond_6
    iget-object v0, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    if-eqz v0, :cond_7

    .line 556
    iget-object v0, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    invoke-virtual {v0}, Landroid/os/CustomFrequencyManager$FrequencyRequest;->cancelFrequencyRequest()V

    .line 557
    const-string v0, "DVFSHelper"

    const-string/jumbo v1, "release:: fpsRequest is released."

    invoke-static {v0, v1}, Landroid/os/DVFSHelper;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iput-object v3, p0, Landroid/os/DVFSHelper;->fpsRequest:Landroid/os/CustomFrequencyManager$FrequencyRequest;

    .line 560
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/DVFSHelper;->mIsAcquired:Z

    goto/16 :goto_0
.end method
