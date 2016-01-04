.class public Lcom/android/server/LightsService;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LightsService$SvcLEDHandler;,
        Lcom/android/server/LightsService$SvcLEDReceiver;,
        Lcom/android/server/LightsService$Light;
    }
.end annotation


# static fields
.field private static final ACTION_UPDATE_SVC_LED:Ljava/lang/String; = "com.android.server.LightsService.action.UPDATE_SVC_LED"

.field public static final BRIGHTNESS_MODE_SENSOR:I = 0x1

.field public static final BRIGHTNESS_MODE_USER:I = 0x0

.field private static final DEBUG:Z = false

.field public static final LIGHT_FLASH_HARDWARE:I = 0x2

.field public static final LIGHT_FLASH_NONE:I = 0x0

.field public static final LIGHT_FLASH_TIMED:I = 0x1

.field public static final LIGHT_ID_ATTENTION:I = 0x5

.field public static final LIGHT_ID_BACKLIGHT:I = 0x0

.field public static final LIGHT_ID_BATTERY:I = 0x3

.field public static final LIGHT_ID_BLUETOOTH:I = 0x6

.field public static final LIGHT_ID_BUTTONS:I = 0x2

.field public static final LIGHT_ID_CONNECTIVITY:I = 0x8

.field public static final LIGHT_ID_COUNT:I = 0xb

.field public static final LIGHT_ID_KEYBOARD:I = 0x1

.field public static final LIGHT_ID_LED_SERVICE:I = 0xa

.field public static final LIGHT_ID_NOTIFICATIONS:I = 0x4

.field public static final LIGHT_ID_VOLUME:I = 0x9

.field public static final LIGHT_ID_WIFI:I = 0x7

.field static final LIGHT_SEC_FLASH:I = 0xa

.field static final LIGHT_SEC_FLASH_CHARGING:I = 0xa

.field static final LIGHT_SEC_FLASH_CHARGING_ERROR:I = 0xb

.field static final LIGHT_SEC_FLASH_FULLY_CHARGED:I = 0xe

.field static final LIGHT_SEC_FLASH_LOW_BATTERY:I = 0xd

.field static final LIGHT_SEC_FLASH_MISSED_NOTIFICATION:I = 0xc

.field private static final MSG_BBL_TIMEOUT:I = 0x1

.field private static final MSG_FORCEDSVCLEDTASK:I = 0x1

.field private static final SVCLED_BATTERY_MASK:I = 0x71

.field private static final SVCLED_CHARGING:I = 0x10

.field private static final SVCLED_CHARGING_ERROR:I = 0x1

.field private static final SVCLED_FULLY_CHARGED:I = 0x40

.field private static final SVCLED_LED_SERVICE:I = 0x8

.field private static final SVCLED_LED_SERVICE_MASK:I = 0x8

.field private static final SVCLED_LOW_BATTERY:I = 0x20

.field private static final SVCLED_MISSED_NOTIFICATION:I = 0x2

.field private static final SVCLED_MODE_CHARGING:I = 0x4

.field private static final SVCLED_MODE_CHARGING_ERROR:I = 0x0

.field private static final SVCLED_MODE_COUNT:I = 0x7

.field private static final SVCLED_MODE_FULLY_CHARGED:I = 0x6

.field private static final SVCLED_MODE_LED_SERVICE:I = 0x3

.field private static final SVCLED_MODE_LOW_BATTERY:I = 0x5

.field private static final SVCLED_MODE_MISSED_NOTIFICATION:I = 0x1

.field private static final SVCLED_MODE_OTHERS:I = 0x2

.field private static final SVCLED_NOTIFICATIONS_MASK:I = 0x6

.field private static final SVCLED_OFF:I = 0x0

.field private static final SVCLED_OTHERS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LightsService"

.field public static final TAG_API:Ljava/lang/String; = "[api] "

.field public static final TAG_LED:Ljava/lang/String; = "[SvcLED] "

.field private static mPrevSvcLedState:I

.field private static mSvcLedColor:I

.field private static mSvcLedMode:I

.field private static mSvcLedOffMS:I

.field private static mSvcLedOnMS:I

.field private static mSvcLedState:I

.field private static final model:Ljava/lang/String;


# instance fields
.field private isLightSensorEnabled:Z

.field private mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

.field private mButtonBrightness:I

.field private mButtonLightEnable:Z

.field private mButtonLightTimeout:I

.field private final mContext:Landroid/content/Context;

.field private mDelayForcedSvcLEDTask:I

.field private mH:Landroid/os/Handler;

.field private mInitCompleteForSvcLED:Z

.field private mInitializedWakeLockPath:Z

.field private mIsLEDChanged:Z

.field private mLastSvcLedId:I

.field private mLedLowPower:I

.field private mLedLowPowerPath:Ljava/lang/String;

.field private final mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

.field private mLightHandler:Landroid/os/Handler;

.field mLightListener:Landroid/hardware/SensorEventListener;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private final mLights:[Lcom/android/server/LightsService$Light;

.field private mNativePointer:I

.field private final mNewWakeLockPaths:[Ljava/lang/String;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;

.field private final mSvcLEDThread:Landroid/os/HandlerThread;

.field private mUpdateSvcLEDDelay:I

.field private mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

.field private mUseLEDAutoBrightness:Z

.field private mUsePatternLED:Z

.field private mUseSoftwareAutoBrightness:Z

.field mWakeLockAcquired:Z

.field private mWakeLockPath:Ljava/lang/String;

.field private mWakeUnlockPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 136
    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 137
    sput v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    .line 138
    sput v0, Lcom/android/server/LightsService;->mSvcLedColor:I

    .line 139
    sput v0, Lcom/android/server/LightsService;->mSvcLedMode:I

    .line 140
    sput v0, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    .line 141
    sput v0, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    .line 162
    const-string v0, "ro.product.model"

    const-string v1, "NONE"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/LightsService;->model:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v7, 0xb

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    .line 85
    const/16 v2, 0x2bc

    iput v2, p0, Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I

    .line 99
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    .line 100
    iput-boolean v5, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    .line 101
    const v2, 0x927c0

    iput v2, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I

    .line 142
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    .line 146
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "/sys/power/wake_lock"

    aput-object v3, v2, v4

    const-string v3, "/sys/power/wake_unlock"

    aput-object v3, v2, v5

    iput-object v2, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    .line 147
    iget-object v2, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v2, v2, v4

    iput-object v2, p0, Lcom/android/server/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 148
    iget-object v2, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v2, v2, v5

    iput-object v2, p0, Lcom/android/server/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 149
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitializedWakeLockPath:Z

    .line 164
    new-array v2, v7, [Lcom/android/server/LightsService$Light;

    iput-object v2, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    .line 174
    iput-object v6, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    .line 339
    new-instance v2, Lcom/android/server/LightsService$1;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$1;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    .line 492
    new-instance v2, Lcom/android/server/LightsService$4;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$4;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    .line 518
    iput-boolean v4, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    .line 537
    new-instance v2, Lcom/android/server/LightsService$5;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$5;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    .line 585
    const-string v2, "/sys/class/sec/led/led_lowpower"

    iput-object v2, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    .line 586
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    .line 587
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    .line 741
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    .line 399
    invoke-static {}, Lcom/android/server/LightsService;->init_native()I

    move-result v2

    iput v2, p0, Lcom/android/server/LightsService;->mNativePointer:I

    .line 400
    iput-object p1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    .line 402
    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0050

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    .line 405
    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x111006a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    .line 408
    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e004f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    .line 411
    new-instance v2, Lcom/android/server/LightsService$2;

    invoke-direct {v2, p0}, Lcom/android/server/LightsService$2;-><init>(Lcom/android/server/LightsService;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    .line 424
    const-string v2, "hardware"

    iget-object v3, p0, Lcom/android/server/LightsService;->mLegacyFlashlightHack:Landroid/os/IHardwareService$Stub;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 427
    iput-boolean v4, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    .line 428
    new-instance v2, Lcom/android/server/LightsService$3;

    const-string v3, "mSvcLEDThread"

    invoke-direct {v2, p0, v3}, Lcom/android/server/LightsService$3;-><init>(Lcom/android/server/LightsService;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    .line 461
    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 462
    iget-object v3, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    monitor-enter v3

    .line 463
    :goto_0
    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 465
    :try_start_1
    iget-object v2, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v2

    goto :goto_0

    .line 470
    :cond_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 473
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v7, :cond_1

    .line 474
    iget-object v2, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    new-instance v3, Lcom/android/server/LightsService$Light;

    invoke-direct {v3, p0, v1, v6}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V

    aput-object v3, v2, v1

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 470
    .end local v1    # "i":I
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 478
    .restart local v1    # "i":I
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 479
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 480
    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/LightsService$SvcLEDReceiver;

    invoke-direct {v3, p0, v6}, Lcom/android/server/LightsService$SvcLEDReceiver;-><init>(Lcom/android/server/LightsService;Lcom/android/server/LightsService$1;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 481
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUsePatternLED:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    invoke-static {}, Lcom/android/server/LightsService;->callerInfoToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000()I
    .locals 1

    .prologue
    .line 56
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    return v0
.end method

.method static synthetic access$1300(IIIIIII)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # I

    .prologue
    .line 56
    invoke-static/range {p0 .. p6}, Lcom/android/server/LightsService;->setLight_native(IIIIIII)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/LightsService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mLightHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/LightsService;->mButtonBrightness:I

    return v0
.end method

.method static synthetic access$1800(Lcom/android/server/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/LightsService;->mButtonLightTimeout:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mInitCompleteForSvcLED:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/LightsService;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUseSoftwareAutoBrightness:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/LightsService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/server/LightsService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    return p1
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/server/LightsService;->model:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/LightsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->setSvcLedLightLocked(I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/LightsService;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/LightsService;)Landroid/app/AlarmManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDDelay:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/LightsService;IIIIIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z

    .prologue
    .line 56
    invoke-direct/range {p0 .. p6}, Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/LightsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/LightsService;->handleForcedSvcLEDTask()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/LightsService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/server/LightsService;->acquireWakeLockForLED()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/LightsService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$SvcLEDHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/server/LightsService;Lcom/android/server/LightsService$SvcLEDHandler;)Lcom/android/server/LightsService$SvcLEDHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # Lcom/android/server/LightsService$SvcLEDHandler;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/server/LightsService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget v0, p0, Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/LightsService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/LightsService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/LightsService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/server/LightsService;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/LightsService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/LightsService;
    .param p1, "x1"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/LightsService;->clearSvcLedStateLocked(I)V

    return-void
.end method

.method private acquireWakeLockForLED()V
    .locals 2

    .prologue
    .line 744
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    if-nez v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/server/LightsService;->mWakeLockPath:Ljava/lang/String;

    const-string v1, "LightsService"

    invoke-direct {p0, v0, v1}, Lcom/android/server/LightsService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    .line 753
    :cond_0
    return-void
.end method

.method private static callerInfoToString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 874
    const-string v1, ""

    .line 875
    .local v1, "retStr":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 876
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 878
    .local v0, "pid":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 880
    return-object v1
.end method

.method private clearSvcLedStateLocked(I)V
    .locals 7
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 811
    const/4 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/LightsService;->setSvcLedStateLocked(IIIIIZ)V

    .line 812
    return-void
.end method

.method private enableSvcLEDLightSensorLocked(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v0, :cond_1

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 523
    :cond_1
    if-eqz p1, :cond_2

    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    if-eqz v0, :cond_2

    .line 524
    iget-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 526
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    goto :goto_0

    .line 529
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/LightsService;->mLightListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService;->isLightSensorEnabled:Z

    goto :goto_0
.end method

.method private fileWriteInt(Ljava/lang/String;I)V
    .locals 5
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 663
    const/4 v2, 0x0

    .line 669
    .local v2, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 678
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 679
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    move-object v2, v3

    .line 688
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 670
    :catch_0
    move-exception v0

    .line 671
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    iget-object v4, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 672
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    .line 674
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 680
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 681
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 683
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 684
    :catch_2
    move-exception v1

    .line 685
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 680
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 772
    const/4 v2, 0x0

    .line 774
    .local v2, "out":Ljava/io/FileOutputStream;
    iget-boolean v5, p0, Lcom/android/server/LightsService;->mInitializedWakeLockPath:Z

    if-nez v5, :cond_0

    .line 775
    const-string v5, "LightsService"

    const-string v6, "WakeLock path is not initialized"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    :goto_0
    return v4

    .line 779
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_1

    .line 780
    const-string v5, "LightsService"

    const-string v6, "fileWriteString : file not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 788
    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 794
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .local v3, "out":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    .line 795
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 796
    const/4 v4, 0x1

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 789
    :catch_0
    move-exception v0

    .line 790
    .local v0, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string v5, "LightsService"

    const-string v6, "fileWriteString : file not found"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 797
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 798
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 800
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 801
    :catch_2
    move-exception v1

    .line 802
    .local v1, "err":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 797
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "err":Ljava/lang/Exception;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v2    # "out":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method private static native finalize_native(I)V
.end method

.method private handleForcedSvcLEDTask()V
    .locals 3

    .prologue
    .line 692
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] Lux failed to be updated in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LightsService;->mDelayForcedSvcLEDTask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms. -> handleForcedSvcLEDTasK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/LightsService;->enableSvcLEDLightSensorLocked(Z)V

    .line 694
    const/16 v0, 0x13

    invoke-direct {p0, v0}, Lcom/android/server/LightsService;->setSvcLedLightLocked(I)V

    .line 695
    return-void
.end method

.method private static native init_native()I
.end method

.method private initializeWakeLockPath()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 718
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mInitializedWakeLockPath:Z

    if-nez v0, :cond_0

    .line 720
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    iget-object v0, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/android/server/LightsService;->mWakeLockPath:Ljava/lang/String;

    .line 729
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 730
    iget-object v0, p0, Lcom/android/server/LightsService;->mNewWakeLockPaths:[Ljava/lang/String;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    .line 737
    iput-boolean v2, p0, Lcom/android/server/LightsService;->mInitializedWakeLockPath:Z

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 724
    :cond_1
    const-string v0, "LightsService"

    const-string/jumbo v1, "wake_lock path does not exists"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 733
    :cond_2
    const-string v0, "LightsService"

    const-string/jumbo v1, "wake_unlock path does not exists "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private releaseWakeLockForLED()V
    .locals 2

    .prologue
    .line 756
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LightsService;->mSvcLEDHandler:Lcom/android/server/LightsService$SvcLEDHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/server/LightsService;->mWakeUnlockPath:Ljava/lang/String;

    const-string v1, "LightsService"

    invoke-direct {p0, v0, v1}, Lcom/android/server/LightsService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mWakeLockAcquired:Z

    .line 769
    :cond_0
    return-void
.end method

.method private static native setLight_native(IIIIIII)V
.end method

.method private setSvcLedLightLocked(I)V
    .locals 11
    .param p1, "sensorValue"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 590
    const/16 v1, 0x14

    if-ge p1, v1, :cond_2

    move v6, v0

    .line 591
    .local v6, "ledLowPower":I
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    if-eq v6, v1, :cond_0

    .line 592
    iput v6, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    .line 593
    iget-object v1, p0, Lcom/android/server/LightsService;->mLedLowPowerPath:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/LightsService;->mLedLowPower:I

    invoke-direct {p0, v1, v3}, Lcom/android/server/LightsService;->fileWriteInt(Ljava/lang/String;I)V

    .line 594
    iput-boolean v0, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    .line 597
    :cond_0
    const/4 v9, 0x0

    .line 598
    .local v9, "priority":I
    const/4 v8, 0x1

    .line 599
    .local v8, "operator":I
    const/4 v7, -0x1

    .line 600
    .local v7, "mode":I
    const/4 v9, 0x0

    :goto_1
    const/4 v0, 0x7

    if-ge v9, v0, :cond_1

    .line 601
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    shr-int/2addr v0, v9

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 606
    :cond_1
    const/4 v2, 0x0

    .line 608
    .local v2, "ledMode":I
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    if-nez v0, :cond_4

    .line 609
    iget v10, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    .line 610
    .local v10, "svcLedId":I
    const/4 v2, 0x0

    .line 648
    :goto_2
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, v10

    sget v1, Lcom/android/server/LightsService;->mSvcLedColor:I

    sget v3, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    sget v4, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    # invokes: Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->access$3000(Lcom/android/server/LightsService$Light;IIIII)V

    .line 650
    iget v0, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    if-eq v0, v10, :cond_5

    .line 651
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED]  setSvcLedLightLocked :: priority changed! SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") OUT; SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") IN"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :goto_3
    iput v10, p0, Lcom/android/server/LightsService;->mLastSvcLedId:I

    .line 658
    invoke-direct {p0}, Lcom/android/server/LightsService;->releaseWakeLockForLED()V

    .line 660
    return-void

    .end local v2    # "ledMode":I
    .end local v6    # "ledLowPower":I
    .end local v7    # "mode":I
    .end local v8    # "operator":I
    .end local v9    # "priority":I
    .end local v10    # "svcLedId":I
    :cond_2
    move v6, v5

    .line 590
    goto :goto_0

    .line 600
    .restart local v6    # "ledLowPower":I
    .restart local v7    # "mode":I
    .restart local v8    # "operator":I
    .restart local v9    # "priority":I
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 612
    .restart local v2    # "ledMode":I
    :cond_4
    packed-switch v9, :pswitch_data_0

    .line 642
    const/4 v10, 0x5

    .line 643
    .restart local v10    # "svcLedId":I
    const/4 v2, 0x0

    goto :goto_2

    .line 614
    .end local v10    # "svcLedId":I
    :pswitch_0
    const/4 v10, 0x3

    .line 615
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xb

    .line 616
    goto :goto_2

    .line 618
    .end local v10    # "svcLedId":I
    :pswitch_1
    const/4 v10, 0x4

    .line 619
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xc

    .line 620
    goto :goto_2

    .line 622
    .end local v10    # "svcLedId":I
    :pswitch_2
    const/4 v10, 0x4

    .line 623
    .restart local v10    # "svcLedId":I
    sget v2, Lcom/android/server/LightsService;->mSvcLedMode:I

    .line 624
    goto :goto_2

    .line 626
    .end local v10    # "svcLedId":I
    :pswitch_3
    const/16 v10, 0xa

    .line 627
    .restart local v10    # "svcLedId":I
    sget v2, Lcom/android/server/LightsService;->mSvcLedMode:I

    .line 628
    goto :goto_2

    .line 630
    .end local v10    # "svcLedId":I
    :pswitch_4
    const/4 v10, 0x3

    .line 631
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xa

    .line 632
    goto :goto_2

    .line 634
    .end local v10    # "svcLedId":I
    :pswitch_5
    const/4 v10, 0x3

    .line 635
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xd

    .line 636
    goto :goto_2

    .line 638
    .end local v10    # "svcLedId":I
    :pswitch_6
    const/4 v10, 0x3

    .line 639
    .restart local v10    # "svcLedId":I
    const/16 v2, 0xe

    .line 640
    goto :goto_2

    .line 654
    :cond_5
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SvcLED]  setSvcLedLightLocked :: Current SvcLED(id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") maintains its priority right"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 612
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setSvcLedStateLocked(IIIIIZ)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "color"    # I
    .param p3, "mode"    # I
    .param p4, "onMS"    # I
    .param p5, "offMS"    # I
    .param p6, "set"    # Z

    .prologue
    const/16 v1, 0xa

    .line 816
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    sput v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    .line 818
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    .line 820
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x72

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 821
    if-eqz p6, :cond_0

    .line 822
    if-ne p3, v1, :cond_2

    .line 823
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x10

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 863
    :cond_0
    :goto_0
    sget v0, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    sget v1, Lcom/android/server/LightsService;->mSvcLedState:I

    if-eq v0, v1, :cond_1

    .line 864
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService;->mIsLEDChanged:Z

    .line 866
    :cond_1
    const-string v1, "LightsService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED] setSvcLedStateLocked:: SvcLEDState : 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/server/LightsService;->mPrevSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/server/LightsService;->mSvcLedState:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " | SvcLED(id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") set "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p6, :cond_c

    const-string v0, "On"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    return-void

    .line 824
    :cond_2
    const/16 v0, 0xe

    if-ne p3, v0, :cond_3

    .line 825
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x40

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_0

    .line 826
    :cond_3
    const/16 v0, 0xd

    if-ne p3, v0, :cond_4

    .line 827
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x20

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_0

    .line 828
    :cond_4
    const/16 v0, 0xb

    if-ne p3, v0, :cond_5

    .line 829
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto :goto_0

    .line 831
    :cond_5
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED]  setSvcLedStateLocked::Not Support mode in LIGHT_ID_BATTERY. mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 834
    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_9

    .line 835
    if-eqz p6, :cond_8

    .line 836
    const/16 v0, 0xc

    if-ne p3, v0, :cond_7

    .line 837
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto/16 :goto_0

    .line 840
    :cond_7
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x4

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 841
    sput p2, Lcom/android/server/LightsService;->mSvcLedColor:I

    .line 842
    sput p3, Lcom/android/server/LightsService;->mSvcLedMode:I

    .line 843
    sput p4, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    .line 844
    sput p5, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    goto/16 :goto_0

    .line 847
    :cond_8
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x7

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto/16 :goto_0

    .line 849
    :cond_9
    if-ne p1, v1, :cond_b

    .line 850
    if-eqz p6, :cond_a

    .line 851
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    or-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    .line 852
    sput p2, Lcom/android/server/LightsService;->mSvcLedColor:I

    .line 853
    sput p3, Lcom/android/server/LightsService;->mSvcLedMode:I

    .line 854
    sput p4, Lcom/android/server/LightsService;->mSvcLedOnMS:I

    .line 855
    sput p5, Lcom/android/server/LightsService;->mSvcLedOffMS:I

    goto/16 :goto_0

    .line 857
    :cond_a
    sget v0, Lcom/android/server/LightsService;->mSvcLedState:I

    and-int/lit8 v0, v0, -0x9

    sput v0, Lcom/android/server/LightsService;->mSvcLedState:I

    goto/16 :goto_0

    .line 860
    :cond_b
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[SvcLED]  setSvcLedStateLocked::Not Support. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 866
    :cond_c
    const-string v0, "Off"

    goto/16 :goto_1
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 484
    iget v0, p0, Lcom/android/server/LightsService;->mNativePointer:I

    invoke-static {v0}, Lcom/android/server/LightsService;->finalize_native(I)V

    .line 485
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 486
    return-void
.end method

.method public getLight(I)Lcom/android/server/LightsService$Light;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public setBrightnessButtonLight(I)V
    .locals 2
    .param p1, "brightness"    # I

    .prologue
    const/4 v1, 0x2

    .line 182
    iget-boolean v0, p0, Lcom/android/server/LightsService;->mButtonLightEnable:Z

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/server/LightsService;->getLight(I)Lcom/android/server/LightsService$Light;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/LightsService$Light;->setBrightness(I)V

    goto :goto_0
.end method

.method systemReady()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 502
    const-string v1, "LightsService"

    const-string v2, "[SvcLED] systemReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/LightsService;->mAlarmManagerForSvcLED:Landroid/app/AlarmManager;

    .line 504
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.server.LightsService.action.UPDATE_SVC_LED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 505
    .local v0, "updateSvcLEDIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LightsService;->mUpdateSvcLEDPendingIntent:Landroid/app/PendingIntent;

    .line 508
    new-instance v1, Landroid/hardware/SystemSensorManager;

    iget-object v2, p0, Lcom/android/server/LightsService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    .line 509
    iget-boolean v1, p0, Lcom/android/server/LightsService;->mUseLEDAutoBrightness:Z

    if-eqz v1, :cond_0

    .line 510
    iget-object v1, p0, Lcom/android/server/LightsService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/LightsService;->mLightSensor:Landroid/hardware/Sensor;

    .line 513
    :cond_0
    invoke-direct {p0}, Lcom/android/server/LightsService;->initializeWakeLockPath()V

    .line 515
    return-void
.end method

.method public turnOffButtonLight()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public turnOnButtonLight()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method
