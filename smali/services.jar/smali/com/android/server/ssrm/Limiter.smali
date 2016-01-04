.class public Lcom/android/server/ssrm/Limiter;
.super Ljava/lang/Object;
.source "Limiter.java"


# static fields
.field private static final SYSFS_CHARGING_CURRENT:Ljava/lang/String; = "/sys/class/power_supply/battery/siop_level"

.field private static TAG:Ljava/lang/String;

.field public static mArmFreqTable:[I

.field public static mCurLimitCPUFreq:I

.field public static mCurLimitGPUFreq:I

.field private static mCurrentChargingPercent:I

.field private static mCurrentDynamicFpsLevel:I

.field public static mGpuFreqTable:[I


# instance fields
.field private final ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String;

.field private final SYSFS_IPA_CONTROL_TEMP:Ljava/lang/String;

.field private final SYSFS_IPA_HOTPULUG_OUT_TH:Ljava/lang/String;

.field private final mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

.field private final mArmCoreNumTable:[I

.field private final mArmFreqMaxHelper:Landroid/os/DVFSHelper;

.field mContext:Landroid/content/Context;

.field private mCurrentIpaHotPlugOutThreshold:I

.field private mCurrentIpaTemperature:I

.field mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

.field mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

.field final mIntentSendSIOPLevel:Landroid/content/Intent;

.field private mLastCameraFlash:Z

.field private mLastCameraRecording:Z

.field private mLastCameraRecordingFps:Z

.field private mLastCameraStart:Z

.field private mLastSmartBonding:Z

.field private mLimitCameraFlash:Z

.field private mLimitCameraRecording:Z

.field private mLimitCameraRecordingFps:Z

.field private mLimitCameraStart:Z

.field private mLimitSmartBonding:Z

.field mPreviousSiopLevel:I

.field private final mSiopLevelChangedIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 35
    const-string v0, "SSRMv2:SIOP:Limiter"

    sput-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    .line 55
    const/16 v0, 0x64

    sput v0, Lcom/android/server/ssrm/Limiter;->mCurrentChargingPercent:I

    .line 57
    const/16 v0, 0x63

    sput v0, Lcom/android/server/ssrm/Limiter;->mCurrentDynamicFpsLevel:I

    .line 116
    sput v1, Lcom/android/server/ssrm/Limiter;->mCurLimitCPUFreq:I

    .line 275
    sput v1, Lcom/android/server/ssrm/Limiter;->mCurLimitGPUFreq:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/16 v6, 0x11

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    .line 49
    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    .line 59
    const-string v0, "/sys/power/ipa/control_temp"

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->SYSFS_IPA_CONTROL_TEMP:Ljava/lang/String;

    .line 61
    const/16 v0, 0x34

    iput v0, p0, Lcom/android/server/ssrm/Limiter;->mCurrentIpaTemperature:I

    .line 63
    const-string v0, "/sys/power/ipa/hotplug_out_threshold"

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->SYSFS_IPA_HOTPULUG_OUT_TH:Ljava/lang/String;

    .line 65
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/ssrm/Limiter;->mCurrentIpaHotPlugOutThreshold:I

    .line 67
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraStart:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    .line 73
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecordingFps:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    .line 218
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraFlash:Z

    .line 220
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraStart:Z

    .line 222
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecording:Z

    .line 224
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecordingFps:Z

    .line 226
    iput-boolean v1, p0, Lcom/android/server/ssrm/Limiter;->mLastSmartBonding:Z

    .line 228
    const-string v0, "android.intent.action.SIOP_LEVEL_CHANGED"

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->ACTION_SIOP_LEVEL_CHANGED:Ljava/lang/String;

    .line 230
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIOP_LEVEL_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    .line 264
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/ssrm/Limiter;->mPreviousSiopLevel:I

    .line 266
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHECK_SIOP_LEVEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mIntentSendSIOPLevel:Landroid/content/Intent;

    .line 78
    iput-object p1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    .line 80
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_ARM_MAX"

    const/16 v3, 0xd

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    .line 81
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    .line 83
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_CORE_NUM_MAX"

    const/16 v3, 0xf

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    .line 85
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumTable:[I

    .line 87
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_GPU_FREQ_MAX"

    move v3, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    .line 89
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    const-string v2, "SIOP_GPU_FREQ_MAX"

    move v3, v6

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    .line 91
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedGPUFrequency()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    .line 92
    return-void
.end method

.method public static limitChargingCurrent(I)V
    .locals 4
    .param p0, "percent"    # I

    .prologue
    .line 150
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitChargingCurrent:: percent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    if-ltz p0, :cond_0

    const/16 v0, 0x64

    if-le p0, v0, :cond_1

    .line 153
    :cond_0
    const/16 p0, 0x64

    .line 155
    :cond_1
    sget v0, Lcom/android/server/ssrm/Limiter;->mCurrentChargingPercent:I

    if-ne p0, v0, :cond_2

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_2
    sput p0, Lcom/android/server/ssrm/Limiter;->mCurrentChargingPercent:I

    .line 160
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/siop_level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setDynamicFpsLevel(I)V
    .locals 6
    .param p0, "level"    # I

    .prologue
    .line 164
    sget v3, Lcom/android/server/ssrm/Limiter;->mCurrentDynamicFpsLevel:I

    if-ne v3, p0, :cond_1

    .line 187
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    :try_start_0
    const-string v3, "SurfaceFlinger"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 170
    .local v2, "surfaceFlinger":Landroid/os/IBinder;
    if-eqz v2, :cond_0

    .line 171
    sget-object v3, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDynamicFpsLevel:: level = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v3, -0x1

    if-eq p0, v3, :cond_2

    const/16 v3, 0x63

    if-le p0, v3, :cond_4

    .line 173
    :cond_2
    const/16 p0, 0x63

    .line 177
    :cond_3
    :goto_1
    sput p0, Lcom/android/server/ssrm/Limiter;->mCurrentDynamicFpsLevel:I

    .line 178
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 179
    .local v0, "data":Landroid/os/Parcel;
    const-string v3, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/16 v3, 0x3fe

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v0, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 184
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "surfaceFlinger":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "ex":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v4, "setDynamicFpsLevel:: failed: SurfaceFlinger is dead!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v2    # "surfaceFlinger":Landroid/os/IBinder;
    :cond_4
    if-gez p0, :cond_3

    .line 175
    const/4 p0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public ControlIPATemperature(I)V
    .locals 4
    .param p1, "controlTemp"    # I

    .prologue
    .line 95
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ControlIPATemperature:: controlTemp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget v0, p0, Lcom/android/server/ssrm/Limiter;->mCurrentIpaTemperature:I

    if-ne p1, v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    iput p1, p0, Lcom/android/server/ssrm/Limiter;->mCurrentIpaTemperature:I

    .line 102
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v1, "/sys/power/ipa/control_temp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public broadcastSiopChangedIntent()V
    .locals 8

    .prologue
    .line 233
    const-string v3, "flash_led_disable"

    .line 234
    .local v3, "EXTRA_FLASH_LED_DISABLE":Ljava/lang/String;
    const-string v2, "camera_start_disable"

    .line 235
    .local v2, "EXTRA_CAMERA_START_DISABLE":Ljava/lang/String;
    const-string v0, "camera_recording_disable"

    .line 236
    .local v0, "EXTRA_CAMERA_RECORDING_DISABLE":Ljava/lang/String;
    const-string v1, "camera_recording_low_fps_enable"

    .line 237
    .local v1, "EXTRA_CAMERA_RECORDING_LOW_FPS":Ljava/lang/String;
    const-string/jumbo v4, "smart_bonding_disable"

    .line 239
    .local v4, "EXTRA_SMARTBONDING_DISABLE":Ljava/lang/String;
    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraFlash:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecording:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastSmartBonding:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraStart:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraStart:Z

    if-ne v5, v6, :cond_0

    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecordingFps:Z

    iget-boolean v6, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecordingFps:Z

    if-ne v5, v6, :cond_0

    .line 262
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    iput-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraFlash:Z

    .line 245
    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraStart:Z

    iput-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraStart:Z

    .line 246
    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    iput-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecording:Z

    .line 247
    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    iput-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastSmartBonding:Z

    .line 248
    iget-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecordingFps:Z

    iput-boolean v5, p0, Lcom/android/server/ssrm/Limiter;->mLastCameraRecordingFps:Z

    .line 250
    sget-object v5, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "broadcastSiopChangedIntent:: FLASH = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", CAMERA = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraStart:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", RECORDING = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", RECORDING_FPS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecordingFps:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", SMARTBONDING = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v5, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string v6, "flash_led_disable"

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 256
    iget-object v5, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string v6, "camera_start_disable"

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraStart:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 257
    iget-object v5, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string v6, "camera_recording_disable"

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    iget-object v5, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string v6, "camera_recording_low_fps_enable"

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecordingFps:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    iget-object v5, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    const-string/jumbo v6, "smart_bonding_disable"

    iget-boolean v7, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    iget-object v5, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/ssrm/Limiter;->mSiopLevelChangedIntent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public broadcastSiopLevelIntent(I)V
    .locals 3
    .param p1, "currentSiopLevel"    # I

    .prologue
    .line 269
    iget v0, p0, Lcom/android/server/ssrm/Limiter;->mPreviousSiopLevel:I

    if-eq v0, p1, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mIntentSendSIOPLevel:Landroid/content/Intent;

    const-string/jumbo v1, "siop_level_broadcast"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 271
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ssrm/Limiter;->mIntentSendSIOPLevel:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 273
    :cond_0
    return-void
.end method

.method public isAvailableGpuFreq(I)Z
    .locals 6
    .param p1, "freq"    # I

    .prologue
    const/4 v4, 0x1

    .line 294
    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    .line 303
    :cond_0
    :goto_0
    return v4

    .line 298
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_1
    if-ge v2, v3, :cond_2

    aget v1, v0, v2

    .line 299
    .local v1, "f":I
    if-eq v1, p1, :cond_0

    .line 298
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 303
    .end local v1    # "f":I
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public final limitArmCoreNum(I)V
    .locals 4
    .param p1, "coreNum"    # I

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumTable:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumTable:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumTable:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    .line 144
    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CORE_NUM"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 145
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmCoreNumMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0
.end method

.method public limitArmMaxFreq(I)V
    .locals 4
    .param p1, "freq"    # I

    .prologue
    .line 119
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mArmFreqTable:[I

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 123
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCPUFreq:: freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 133
    :goto_1
    sput p1, Lcom/android/server/ssrm/Limiter;->mCurLimitCPUFreq:I

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->cancelExtraOptions()V

    .line 129
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2, p1}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 131
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mArmFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_1
.end method

.method public limitCameraRecordingFps(Z)V
    .locals 3
    .param p1, "limit"    # Z

    .prologue
    .line 214
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCameraFps:: limit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecordingFps:Z

    .line 216
    return-void
.end method

.method public limitCameraStart(Z)V
    .locals 3
    .param p1, "limit"    # Z

    .prologue
    .line 209
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitCameraStart:: limit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraStart:Z

    .line 211
    return-void
.end method

.method public limitFlashLed(Z)V
    .locals 3
    .param p1, "bLimit"    # Z

    .prologue
    .line 194
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitFlashLed:: bLimit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraFlash:Z

    .line 196
    return-void
.end method

.method public limitGPUFreq(I)V
    .locals 4
    .param p1, "freq"    # I

    .prologue
    .line 278
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Limiter;->isAvailableGpuFreq(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 282
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitGPUFreq:: freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    .line 285
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 290
    :goto_1
    sput p1, Lcom/android/server/ssrm/Limiter;->mCurLimitGPUFreq:I

    goto :goto_0

    .line 287
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 288
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_1
.end method

.method public limitGPUFreqForGame(I)V
    .locals 4
    .param p1, "freq"    # I

    .prologue
    .line 307
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Limiter;->isAvailableGpuFreq(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitGPUFreq:: freq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    sget-object v0, Lcom/android/server/ssrm/Limiter;->mGpuFreqTable:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-eq v0, p1, :cond_2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 314
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_0

    .line 316
    :cond_3
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    const-string v1, "GPU"

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 317
    iget-object v0, p0, Lcom/android/server/ssrm/Limiter;->mGpuFreqMaxHelperForGame:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    goto :goto_0
.end method

.method public limitRecording(Z)V
    .locals 3
    .param p1, "recordingStop"    # Z

    .prologue
    .line 199
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitRecording:: recordingStop = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitCameraRecording:Z

    .line 201
    return-void
.end method

.method public limitSmartBonding(Z)V
    .locals 3
    .param p1, "limit"    # Z

    .prologue
    .line 204
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limitSmartBonding:: limit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iput-boolean p1, p0, Lcom/android/server/ssrm/Limiter;->mLimitSmartBonding:Z

    .line 206
    return-void
.end method

.method public rewriteChargingCurrent()V
    .locals 4

    .prologue
    .line 190
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/siop_level"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget v3, Lcom/android/server/ssrm/Limiter;->mCurrentChargingPercent:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    return-void
.end method

.method public setIPAHotPlugOutThreshold(I)V
    .locals 4
    .param p1, "threshold"    # I

    .prologue
    .line 106
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIPAHotPlugOutThreshold:: threshold = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget v0, p0, Lcom/android/server/ssrm/Limiter;->mCurrentIpaHotPlugOutThreshold:I

    if-ne p1, v0, :cond_0

    .line 114
    :goto_0
    return-void

    .line 112
    :cond_0
    iput p1, p0, Lcom/android/server/ssrm/Limiter;->mCurrentIpaHotPlugOutThreshold:I

    .line 113
    sget-object v0, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v1, "/sys/power/ipa/hotplug_out_threshold"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setResetBatteryCharging(Z)V
    .locals 6
    .param p1, "setDisableCharging"    # Z

    .prologue
    .line 322
    const-string v0, "/sys/class/power_supply/battery/batt_slate_mode"

    .line 324
    .local v0, "FILE_CHANGE_CHARGING_STATUS":Ljava/lang/String;
    const/4 v2, 0x0

    .line 326
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    const-string v4, "/sys/class/power_supply/battery/batt_slate_mode"

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    if-eqz p1, :cond_2

    .line 328
    :try_start_1
    sget-object v4, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v5, "Going to disable battery charging"

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const/16 v4, 0x31

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 340
    :goto_0
    if-eqz v3, :cond_0

    .line 341
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    :cond_0
    :goto_1
    move-object v2, v3

    .line 347
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_2
    return-void

    .line 331
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_3
    sget-object v4, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v5, "Going to enable battery charging"

    invoke-static {v4, v5}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const/16 v4, 0x30

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 334
    :catch_0
    move-exception v1

    move-object v2, v3

    .line 335
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_4
    sget-object v4, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v5, "Exception in opening the file /sys/class/power_supply/battery/batt_slate_mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 340
    if-eqz v2, :cond_1

    .line 341
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 343
    :catch_1
    move-exception v1

    .line 344
    .local v1, "e":Ljava/io/IOException;
    :goto_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 336
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 337
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    sget-object v4, Lcom/android/server/ssrm/Limiter;->TAG:Ljava/lang/String;

    const-string v5, "Exception in creating the FileOutputStream"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 340
    if-eqz v2, :cond_1

    .line 341
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_2

    .line 343
    :catch_3
    move-exception v1

    goto :goto_4

    .line 339
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 340
    :goto_6
    if-eqz v2, :cond_3

    .line 341
    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 339
    :cond_3
    :goto_7
    throw v4

    .line 343
    :catch_4
    move-exception v1

    .line 344
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_7

    .line 343
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v1

    .line 344
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 339
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 336
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 334
    :catch_7
    move-exception v1

    goto :goto_3
.end method
