.class public final Lcom/android/server/ssrm/Monitor;
.super Ljava/lang/Thread;
.source "Monitor.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/Monitor$Command;,
        Lcom/android/server/ssrm/Monitor$HangoutMode;,
        Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;,
        Lcom/android/server/ssrm/Monitor$SIPStatusInfo;,
        Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;,
        Lcom/android/server/ssrm/Monitor$CustomSettingWriter;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final MSG_BROADCAST_INTENT:I = 0xa

.field public static final MSG_CFMS_COMMAND:I = 0xb

.field public static final MSG_FOREGROUND_APP:I = 0x9

.field public static final MSG_RELEASE_SIOP_DEFERING:I = 0xd

.field public static final MSG_REVIEW_APK:I = 0xc

.field static TAG:Ljava/lang/String;

.field static TAG_SIOP:Ljava/lang/String;

.field static mForegroundPackageName:Ljava/lang/String;

.field private static mLteTpBooster:Lcom/android/server/ssrm/LteTpBooster;

.field public static mMainsController:Lcom/android/server/ssrm/settings/MainController;

.field private static mMonitor:Lcom/android/server/ssrm/Monitor;

.field static mNotifiedMaxBrightness:I

.field static mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

.field public static mSsrmv2Enabled:Z

.field public static mSurfaceTemperature:I

.field static mTts:Landroid/speech/tts/TextToSpeech;

.field static sCmdTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/ssrm/Monitor$Command;",
            ">;"
        }
    .end annotation
.end field

.field public static sHandlerThread:Landroid/os/HandlerThread;

.field public static sIsGHeavyAppFg:Z

.field public static sIsHeavyAppFg:Z


# instance fields
.field final ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

.field final IS_VISIBLE_WINDOW:Ljava/lang/String;

.field final RESPONSE_AXT9INFO:Ljava/lang/String;

.field final SIOP_TIMER_PERIOD_LCD_OFF:I

.field final SIOP_TIMER_PERIOD_LCD_ON:I

.field final SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String;

.field final SSRM_STATUS_NAME:Ljava/lang/String;

.field final SSRM_STATUS_NOTIFY:Ljava/lang/String;

.field final SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String;

.field final SSRM_STATUS_VALUE:Ljava/lang/String;

.field mACLWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mAMSQuerySyncObject:Ljava/lang/Object;

.field mActivityManager:Landroid/app/ActivityManager;

.field mAirViewOnOff:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

.field mAmoledAdjustTimerRunnable:Ljava/lang/Runnable;

.field mAppStartCondition:Lcom/android/server/ssrm/settings/Condition;

.field mBatteryCoolDownMode:Lcom/android/server/ssrm/BatteryCoolDownMode;

.field mBootComplete:Z

.field mCPUCoreMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mCPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field public mCallStateOffHook:Z

.field mCameraDisableWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mCameraQuickAccess:Lcom/android/server/ssrm/CameraQuickAccess;

.field mCameraRecordingLowFpsWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mChargingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mContext:Landroid/content/Context;

.field mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

.field mCpuMaxSIP:Landroid/os/DVFSHelper;

.field mCurrentApTemperature:I

.field mCurrentBatteryLevel:I

.field mCurrentBatteryTemperature:I

.field mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

.field mDynamicFpsLevelWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mEmergencyMode:Lcom/android/server/ssrm/EmergencyMode;

.field mFactoryBinary:Z

.field mFlashWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mGPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mGovernorAdonisMini:Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

.field mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

.field mHandler:Landroid/os/Handler;

.field mHangoutMode:Lcom/android/server/ssrm/Monitor$HangoutMode;

.field mHotControl:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mHumanMotionTracker:Lcom/android/server/ssrm/HumanMotionTracker;

.field mIPAControlTempWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mIPAHotPlugOutWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field final mIntentMaxBrightnessChanged:Landroid/content/Intent;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field public mIsGHeavyUserScenarioExist:Z

.field mLCDBrightnessWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mLimiter:Lcom/android/server/ssrm/Limiter;

.field mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

.field mMaxFpsHelper:Landroid/os/DVFSHelper;

.field mNavigationOn:Z

.field mPhoneStateListener:Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

.field mPolarisArmLock:Landroid/os/DVFSHelper;

.field mPolarisPDFViewOn:Z

.field mPowerManager:Landroid/os/PowerManager;

.field mPowerSavingMode:Lcom/android/server/ssrm/PowerSavingMode;

.field mPowerStretchWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mPredictedSurfaceTemperature:Lcom/android/server/ssrm/PredictedSurfaceTemperature;

.field mPrevLucid:I

.field mProcessObserver:Landroid/app/IProcessObserver;

.field mPstWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mRecordingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mSIOPLevel:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mScreenOffCondition:Lcom/android/server/ssrm/settings/Condition;

.field mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

.field mScreenOn:Z

.field mScreenOnAppStartedCondition:Lcom/android/server/ssrm/settings/Condition;

.field mSideTouch:Lcom/android/server/ssrm/fgapps/tsp/SideTouch;

.field mSiopLevel:I

.field mSmartBonding:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mTelephonyManager:Landroid/telephony/TelephonyManager;

.field mTempShift:I

.field mTempShiftWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

.field mThermistorObeserverRunnable:Ljava/lang/Runnable;

.field mWifiApOn:Z

.field mlevelCurrLucid:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    const-string v0, "SSRMv2:Monitor"

    sput-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    .line 104
    const-string v0, "SSRMv2:SIOP"

    sput-object v0, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    .line 106
    const-string v0, "eng"

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    .line 186
    const/16 v0, 0x12c

    sput v0, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    .line 188
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    .line 681
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 988
    const/4 v0, -0x1

    sput v0, Lcom/android/server/ssrm/Monitor;->mNotifiedMaxBrightness:I

    .line 1172
    const-string v0, ""

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    .line 1228
    sput-object v3, Lcom/android/server/ssrm/Monitor;->mSIPStatusInfo:Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    .line 1465
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    .line 1467
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->sIsGHeavyAppFg:Z

    .line 1843
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    .line 393
    const-string v8, "Monitor"

    invoke-direct {p0, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 118
    new-instance v8, Lcom/android/server/ssrm/DevSysProperty;

    invoke-direct {v8}, Lcom/android/server/ssrm/DevSysProperty;-><init>()V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    .line 138
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    .line 140
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    .line 142
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    .line 144
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    .line 146
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryLevel:I

    .line 148
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mTempShift:I

    .line 150
    const-string v8, "com.sec.android.intent.action.SSRM_REQUEST"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->SSRM_STATUS_NOTIFY:Ljava/lang/String;

    .line 152
    const-string v8, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->SSRM_STATUS_NOTIFY_KNOX:Ljava/lang/String;

    .line 154
    const-string v8, "SSRM_STATUS_NAME"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->SSRM_STATUS_NAME:Ljava/lang/String;

    .line 156
    const-string v8, "SSRM_STATUS_VALUE"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->SSRM_STATUS_VALUE:Ljava/lang/String;

    .line 158
    const-string v8, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->SSRM_NOTIFICATION_PERMISSION:Ljava/lang/String;

    .line 172
    const-string v8, "ResponseAxT9Info"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->RESPONSE_AXT9INFO:Ljava/lang/String;

    .line 174
    const-string v8, "AxT9IME.isVisibleWindow"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->IS_VISIBLE_WINDOW:Ljava/lang/String;

    .line 190
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mIsGHeavyUserScenarioExist:Z

    .line 695
    const/16 v8, 0x2710

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->SIOP_TIMER_PERIOD_LCD_ON:I

    .line 697
    const v8, 0xea60

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->SIOP_TIMER_PERIOD_LCD_OFF:I

    .line 702
    new-instance v8, Lcom/android/server/ssrm/Monitor$2;

    invoke-direct {v8, p0}, Lcom/android/server/ssrm/Monitor$2;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    .line 728
    new-instance v8, Lcom/android/server/ssrm/Monitor$3;

    invoke-direct {v8, p0}, Lcom/android/server/ssrm/Monitor$3;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mAmoledAdjustTimerRunnable:Ljava/lang/Runnable;

    .line 753
    new-instance v8, Lcom/android/server/ssrm/Monitor$4;

    const-string v9, "IPAControlTemp"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$4;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mIPAControlTempWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 761
    new-instance v8, Lcom/android/server/ssrm/Monitor$5;

    const-string v9, "IPAHotPlugOut"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$5;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mIPAHotPlugOutWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 769
    new-instance v8, Lcom/android/server/ssrm/Monitor$6;

    const-string v9, "CPUFreqMax"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$6;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 777
    new-instance v8, Lcom/android/server/ssrm/Monitor$7;

    const-string v9, "CPUCoreMax"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$7;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 785
    new-instance v8, Lcom/android/server/ssrm/Monitor$8;

    const-string v9, "GPUFreqMax"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$8;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mGPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 793
    new-instance v8, Lcom/android/server/ssrm/Monitor$9;

    const-string v9, "HotControl"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$9;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mHotControl:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 800
    new-instance v8, Lcom/android/server/ssrm/Monitor$10;

    const-string v9, "PST"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$10;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPstWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 813
    new-instance v8, Lcom/android/server/ssrm/Monitor$11;

    const-string v9, "TempShift"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$11;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mTempShiftWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 821
    new-instance v8, Lcom/android/server/ssrm/Monitor$12;

    const-string v9, "CameraDisable"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$12;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCameraDisableWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 830
    new-instance v8, Lcom/android/server/ssrm/Monitor$13;

    const-string v9, "CameraRecordingLowFps"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$13;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCameraRecordingLowFpsWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 840
    new-instance v8, Lcom/android/server/ssrm/Monitor$14;

    const-string v9, "Flash"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$14;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mFlashWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 849
    new-instance v8, Lcom/android/server/ssrm/Monitor$15;

    const-string v9, "Recording"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$15;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mRecordingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 858
    new-instance v8, Lcom/android/server/ssrm/Monitor$16;

    const-string v9, "LCDBrightness"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$16;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mLCDBrightnessWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 866
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    .line 898
    new-instance v8, Lcom/android/server/ssrm/Monitor$17;

    const-string v9, "Charging"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$17;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mChargingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 907
    new-instance v8, Lcom/android/server/ssrm/Monitor$18;

    const-string v9, "ACL"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$18;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mACLWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 916
    new-instance v8, Lcom/android/server/ssrm/Monitor$19;

    const-string v9, "PowerStretch"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$19;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPowerStretchWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 927
    new-instance v8, Lcom/android/server/ssrm/Monitor$20;

    const-string v9, "DynamicFpsLevel"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$20;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mDynamicFpsLevelWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 945
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mSiopLevel:I

    .line 948
    new-instance v8, Lcom/android/server/ssrm/Monitor$21;

    const-string v9, "SIOPLevel"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$21;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mSIOPLevel:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 979
    new-instance v8, Lcom/android/server/ssrm/Monitor$22;

    const-string v9, "SmartBonding"

    invoke-direct {v8, p0, v9}, Lcom/android/server/ssrm/Monitor$22;-><init>(Lcom/android/server/ssrm/Monitor;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mSmartBonding:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    .line 994
    const-string v8, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->ACTION_MAX_BRIGHTNESS_CHANGED:Ljava/lang/String;

    .line 996
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAX_BRIGHTNESS_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    .line 1022
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mPrevLucid:I

    .line 1024
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/server/ssrm/Monitor;->mlevelCurrLucid:I

    .line 1146
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mNavigationOn:Z

    .line 1148
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    .line 1150
    new-instance v8, Lcom/android/server/ssrm/Monitor$23;

    invoke-direct {v8, p0}, Lcom/android/server/ssrm/Monitor$23;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 1174
    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mAMSQuerySyncObject:Ljava/lang/Object;

    .line 1176
    new-instance v8, Lcom/android/server/ssrm/Monitor$24;

    invoke-direct {v8, p0}, Lcom/android/server/ssrm/Monitor$24;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 1299
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    .line 1331
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mPolarisPDFViewOn:Z

    .line 1333
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    .line 1387
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPhoneStateListener:Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

    .line 1635
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    .line 395
    iput-object p1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    .line 396
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v9, "power"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    .line 397
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 399
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mActivityManager:Landroid/app/ActivityManager;

    .line 401
    new-instance v8, Lcom/android/server/ssrm/Limiter;

    invoke-direct {v8, p1}, Lcom/android/server/ssrm/Limiter;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    .line 402
    new-instance v8, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

    invoke-direct {v8, p0}, Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPhoneStateListener:Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

    .line 403
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v9, p0, Lcom/android/server/ssrm/Monitor;->mPhoneStateListener:Lcom/android/server/ssrm/Monitor$SsrmPhoneStateListener;

    const/16 v10, 0x20

    invoke-virtual {v8, v9, v10}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 405
    new-instance v8, Lcom/android/server/ssrm/LteTpBooster;

    invoke-direct {v8, p1}, Lcom/android/server/ssrm/LteTpBooster;-><init>(Landroid/content/Context;)V

    sput-object v8, Lcom/android/server/ssrm/Monitor;->mLteTpBooster:Lcom/android/server/ssrm/LteTpBooster;

    .line 407
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->registerIntentFilters()V

    .line 408
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 410
    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mFactoryBinary:Z

    .line 413
    :try_start_0
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {p2, v8}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :goto_0
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/ssrm_v2.disable"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mFactoryBinary:Z

    if-eqz v8, :cond_1

    .line 419
    :cond_0
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    .line 510
    :goto_1
    return-void

    .line 414
    :catch_0
    move-exception v3

    .line 415
    .local v3, "e":Landroid/os/RemoteException;
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to registerProcessObserver, e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 423
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_1
    new-instance v8, Ljava/io/File;

    const-string v9, "/data/system/ssrm_v2.sts"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 424
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    .line 427
    :cond_2
    new-instance v8, Lcom/android/server/ssrm/PredictedSurfaceTemperature;

    invoke-direct {v8}, Lcom/android/server/ssrm/PredictedSurfaceTemperature;-><init>()V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPredictedSurfaceTemperature:Lcom/android/server/ssrm/PredictedSurfaceTemperature;

    .line 429
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 430
    .local v6, "wm":Landroid/view/WindowManager;
    if-eqz v6, :cond_4

    .line 431
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 432
    .local v2, "d":Landroid/view/Display;
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 433
    .local v5, "p":Landroid/graphics/Point;
    invoke-virtual {v2, v5}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 434
    iget v8, v5, Landroid/graphics/Point;->x:I

    const/16 v9, 0xa00

    if-ge v8, v9, :cond_3

    iget v8, v5, Landroid/graphics/Point;->y:I

    const/16 v9, 0xa00

    if-lt v8, v9, :cond_4

    .line 435
    :cond_3
    const/4 v8, 0x1

    sput-boolean v8, Lcom/android/server/ssrm/Feature;->DISPLAY_WQXGA:Z

    .line 440
    .end local v2    # "d":Landroid/view/Display;
    .end local v5    # "p":Landroid/graphics/Point;
    :cond_4
    :try_start_1
    invoke-static {}, Lcom/android/server/ssrm/settings/MainController;->getInstance()Lcom/android/server/ssrm/settings/MainController;

    move-result-object v8

    sput-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    .line 441
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXMLFromLocalOrResource()Ljava/io/InputStream;

    move-result-object v4

    .line 442
    .local v4, "modelIs":Ljava/io/InputStream;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 443
    .local v7, "writers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mIPAControlTempWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mIPAHotPlugOutWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v9, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;

    invoke-direct {v9}, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;-><init>()V

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/SettingWriter;->setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V

    .line 446
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCPUCoreMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mGPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v9, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;

    invoke-direct {v9}, Lcom/android/server/ssrm/settingschooser/PriorityFirstSettingsChooser;-><init>()V

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/SettingWriter;->setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V

    .line 449
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mGPUFreqMaxWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mFlashWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mRecordingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mLCDBrightnessWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v9, Lcom/android/server/ssrm/settingschooser/LCDBrightnessSettingsChooser;

    iget-object v10, p0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-direct {v9, v10}, Lcom/android/server/ssrm/settingschooser/LCDBrightnessSettingsChooser;-><init>(Landroid/os/PowerManager;)V

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/SettingWriter;->setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V

    .line 454
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mLCDBrightnessWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    new-instance v8, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    invoke-direct {v8, p0}, Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;-><init>(Lcom/android/server/ssrm/Monitor;)V

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    .line 456
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mChargingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    new-instance v9, Lcom/android/server/ssrm/settingschooser/MinSettingsChooser;

    invoke-direct {v9}, Lcom/android/server/ssrm/settingschooser/MinSettingsChooser;-><init>()V

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/SettingWriter;->setSettingsChooser(Lcom/android/server/ssrm/settings/SettingsChooser;)V

    .line 457
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mChargingWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 458
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mACLWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPowerStretchWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mDynamicFpsLevelWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mSIOPLevel:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mSmartBonding:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mHotControl:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mPstWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mTempShiftWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCameraDisableWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mCameraRecordingLowFpsWriter:Lcom/android/server/ssrm/Monitor$CustomSettingWriter;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 469
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v4, v7}, Lcom/android/server/ssrm/settings/MainController;->initialize(Lcom/android/server/ssrm/settings/LevelsFactory;Ljava/io/InputStream;Ljava/util/List;)V

    .line 470
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v9, "SSRMv2 Settings Engine initialized!"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-boolean v8, Lcom/android/server/ssrm/Feature;->SIOP_FOR_CHARGING_LIMITATION:Z

    if-eqz v8, :cond_6

    .line 473
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "ScreenOff"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffCondition:Lcom/android/server/ssrm/settings/Condition;

    .line 474
    sget-boolean v8, Lcom/android/server/ssrm/Feature;->SSRM_FOR_CALL_CHARGING_LIMITATION:Z

    if-eqz v8, :cond_5

    .line 475
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "ScreenOffInCall"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

    .line 477
    :cond_5
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "ScreenOnAppStarted"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mScreenOnAppStartedCondition:Lcom/android/server/ssrm/settings/Condition;

    .line 480
    :cond_6
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "HangoutsVTCall"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    if-nez v8, :cond_7

    .line 481
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/server/ssrm/Feature;->SSRM_HANGOUTS:Z

    .line 484
    :cond_7
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "GHeavyUserUp"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    if-eqz v8, :cond_8

    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "GHeavyUserDown"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    if-eqz v8, :cond_8

    .line 486
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mIsGHeavyUserScenarioExist:Z

    .line 489
    :cond_8
    sget-object v8, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v9, "AppStart"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/ssrm/Monitor;->mAppStartCondition:Lcom/android/server/ssrm/settings/Condition;

    .line 491
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->updateSimpleConditionsWithName()V

    .line 493
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/DevSysProperty;->setSsrmInitResult(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 502
    .end local v4    # "modelIs":Ljava/io/InputStream;
    .end local v7    # "writers":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ssrm/settings/SettingWriter<*>;>;"
    :goto_2
    :try_start_2
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v9, "/sys/class/power_supply/battery/capacity"

    invoke-static {v8, v9}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 503
    .local v1, "capacity":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 504
    .local v0, "batteryTemp":I
    invoke-static {v0}, Lcom/android/server/ssrm/DeviceStatus;->setBatteryRemaining(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 509
    .end local v0    # "batteryTemp":I
    .end local v1    # "capacity":Ljava/lang/String;
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/ssrm/Monitor;->registerCommands()V

    goto/16 :goto_1

    .line 494
    :catch_1
    move-exception v3

    .line 495
    .local v3, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v9, "failed to init ssrm v2"

    invoke-virtual {p0, v8, v9}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 498
    iget-object v8, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/DevSysProperty;->setSsrmInitResult(Z)V

    goto :goto_2

    .line 505
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v3

    .line 506
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/android/server/ssrm/Monitor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/Monitor;

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->readThermistorFile()Z

    move-result v0

    return v0
.end method

.method public static getMainLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 675
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 676
    const/4 v0, 0x0

    .line 678
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMonitorInstance()Lcom/android/server/ssrm/Monitor;
    .locals 1

    .prologue
    .line 692
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    return-object v0
.end method

.method public static declared-synchronized getMonitorInstance(Landroid/content/Context;Landroid/app/IActivityManager;)Lcom/android/server/ssrm/Monitor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "activityManager"    # Landroid/app/IActivityManager;

    .prologue
    .line 685
    const-class v1, Lcom/android/server/ssrm/Monitor;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-nez v0, :cond_0

    .line 686
    new-instance v0, Lcom/android/server/ssrm/Monitor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/ssrm/Monitor;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    .line 688
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 685
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getPolicyXMLFromLocalOrResource()Ljava/io/InputStream;
    .locals 11

    .prologue
    .line 210
    new-instance v3, Ljava/io/File;

    const-string v10, "/data/system/ssrm_v2.debug"

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    .local v3, "fileSsrmDebug":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    const-string v10, "/data/system/ssrm_v2.original"

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 212
    .local v5, "fileSsrmOriginal":Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v10, "/data/system/ssrm_v2.new"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v4, "fileSsrmNew":Ljava/io/File;
    sget-boolean v10, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-nez v10, :cond_0

    .line 215
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v9

    .line 263
    :goto_0
    return-object v9

    .line 218
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 219
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 220
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 223
    :cond_1
    const/4 v6, 0x0

    .line 224
    .local v6, "fin":Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 226
    .local v7, "fos":Ljava/io/OutputStream;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v6

    .line 227
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    .end local v7    # "fos":Ljava/io/OutputStream;
    .local v8, "fos":Ljava/io/OutputStream;
    if-eqz v6, :cond_2

    if-eqz v8, :cond_2

    .line 229
    const/16 v10, 0x400

    :try_start_1
    new-array v0, v10, [B

    .line 231
    .local v0, "buffer":[B
    :goto_1
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    .line 232
    .local v1, "count":I
    const/4 v10, -0x1

    if-ne v1, v10, :cond_5

    .line 242
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :cond_2
    if-eqz v6, :cond_3

    .line 243
    :try_start_2
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 245
    :cond_3
    if-eqz v8, :cond_4

    .line 246
    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    .line 254
    .end local v6    # "fin":Ljava/io/InputStream;
    .end local v8    # "fos":Ljava/io/OutputStream;
    :cond_4
    :goto_2
    const/4 v9, 0x0

    .line 255
    .local v9, "is":Ljava/io/InputStream;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 257
    :try_start_4
    new-instance v9, Ljava/io/BufferedInputStream;

    .end local v9    # "is":Ljava/io/InputStream;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .restart local v9    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 235
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "count":I
    .restart local v6    # "fin":Ljava/io/InputStream;
    .restart local v8    # "fos":Ljava/io/OutputStream;
    :cond_5
    const/4 v10, 0x0

    :try_start_5
    invoke-virtual {v8, v0, v10, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    .line 238
    .end local v0    # "buffer":[B
    .end local v1    # "count":I
    :catch_0
    move-exception v2

    move-object v7, v8

    .line 239
    .end local v8    # "fos":Ljava/io/OutputStream;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v7    # "fos":Ljava/io/OutputStream;
    :goto_3
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 242
    if-eqz v6, :cond_6

    .line 243
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 245
    :cond_6
    if-eqz v7, :cond_4

    .line 246
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_2

    .line 248
    :catch_1
    move-exception v2

    .line 249
    .end local v7    # "fos":Ljava/io/OutputStream;
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 241
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v7    # "fos":Ljava/io/OutputStream;
    :catchall_0
    move-exception v10

    .line 242
    :goto_5
    if-eqz v6, :cond_7

    .line 243
    :try_start_8
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 245
    :cond_7
    if-eqz v7, :cond_8

    .line 246
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 241
    :cond_8
    :goto_6
    throw v10

    .line 258
    .end local v6    # "fin":Ljava/io/InputStream;
    .end local v7    # "fos":Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .line 259
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v9

    goto :goto_0

    .line 263
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v9    # "is":Ljava/io/InputStream;
    :cond_9
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->getPolicyXmlFromResource()Ljava/io/InputStream;

    move-result-object v9

    goto :goto_0

    .line 248
    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v6    # "fin":Ljava/io/InputStream;
    .restart local v7    # "fos":Ljava/io/OutputStream;
    :catch_3
    move-exception v2

    .line 249
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 248
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v7    # "fos":Ljava/io/OutputStream;
    .restart local v8    # "fos":Ljava/io/OutputStream;
    :catch_4
    move-exception v2

    goto :goto_4

    :catch_5
    move-exception v2

    goto :goto_4

    .line 241
    :catchall_1
    move-exception v10

    move-object v7, v8

    .end local v8    # "fos":Ljava/io/OutputStream;
    .restart local v7    # "fos":Ljava/io/OutputStream;
    goto :goto_5

    .line 238
    :catch_6
    move-exception v2

    goto :goto_3
.end method

.method private getPolicyXmlFromResource()Ljava/io/InputStream;
    .locals 6

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 197
    .local v0, "modelIs":Ljava/io/InputStream;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 198
    .local v2, "resources":Landroid/content/res/Resources;
    sget-object v3, Lcom/android/server/ssrm/Feature;->SSRM_FILENAME:Ljava/lang/String;

    const-string v4, "raw"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 199
    .local v1, "resID":I
    if-eqz v1, :cond_0

    .line 200
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 202
    :cond_0
    return-object v0
.end method

.method static handleSsrmCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 2021
    sget-object v1, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    invoke-virtual {v1, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/Monitor$Command;

    .line 2022
    .local v0, "cmd":Lcom/android/server/ssrm/Monitor$Command;
    if-eqz v0, :cond_0

    .line 2023
    invoke-interface {v0, p0, p1}, Lcom/android/server/ssrm/Monitor$Command;->execute(Ljava/lang/String;Ljava/lang/String;)V

    .line 2026
    :cond_0
    return-void
.end method

.method public static isConditionExist(Ljava/lang/String;)Z
    .locals 1
    .param p0, "conditionName"    # Ljava/lang/String;

    .prologue
    .line 2041
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    invoke-virtual {v0, p0}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onBatteryChanged(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1703
    const-string v4, "level"

    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Lcom/android/server/ssrm/DeviceStatus;->setBatteryRemaining(I)V

    .line 1705
    const-string v4, "plugged"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1706
    .local v0, "battPlugged":I
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    .line 1707
    invoke-static {v2}, Lcom/android/server/ssrm/DeviceStatus;->setUsbConnected(Z)V

    .line 1708
    invoke-static {v2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onUsbConnectionStatusChangedForAll(Z)V

    .line 1714
    :goto_0
    if-ne v0, v2, :cond_2

    :goto_1
    invoke-static {v2}, Lcom/android/server/ssrm/DeviceStatus;->setAcConnected(Z)V

    .line 1716
    const-string/jumbo v2, "temperature"

    invoke-virtual {p1, v2, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    .line 1717
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v2}, Lcom/android/server/ssrm/DevSysProperty;->getBatteryTemperature()I

    move-result v1

    .line 1718
    .local v1, "devTemp":I
    const/16 v2, -0x3e7

    if-eq v1, v2, :cond_0

    .line 1719
    iput v1, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    .line 1721
    :cond_0
    iget v2, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    invoke-static {v2}, Lcom/android/server/ssrm/DeviceStatus;->setBatteryTemperature(I)V

    .line 1722
    return-void

    .line 1710
    .end local v1    # "devTemp":I
    :cond_1
    invoke-static {v3}, Lcom/android/server/ssrm/DeviceStatus;->setUsbConnected(Z)V

    .line 1711
    invoke-static {v3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onUsbConnectionStatusChangedForAll(Z)V

    goto :goto_0

    :cond_2
    move v2, v3

    .line 1714
    goto :goto_1
.end method

.method private onBootCompleted()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1725
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "onReceive:: ACTION_BOOT_COMPLETED is received."

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1726
    iput-boolean v4, p0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    .line 1728
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    .line 1729
    .local v0, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {v0}, Lcom/android/server/ssrm/SortingMachine;->bootComplete()V

    .line 1731
    new-instance v1, Lcom/android/server/ssrm/PowerSavingMode;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/PowerSavingMode;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mPowerSavingMode:Lcom/android/server/ssrm/PowerSavingMode;

    .line 1733
    new-instance v1, Lcom/android/server/ssrm/HumanMotionTracker;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/HumanMotionTracker;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHumanMotionTracker:Lcom/android/server/ssrm/HumanMotionTracker;

    .line 1735
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v1, :cond_0

    .line 1736
    new-instance v1, Lcom/android/server/ssrm/CameraQuickAccess;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/CameraQuickAccess;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCameraQuickAccess:Lcom/android/server/ssrm/CameraQuickAccess;

    .line 1739
    :cond_0
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v1}, Lcom/android/server/ssrm/DevSysProperty;->isTtsFeatureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1740
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    sput-object v1, Lcom/android/server/ssrm/Monitor;->mTts:Landroid/speech/tts/TextToSpeech;

    .line 1741
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mTts:Landroid/speech/tts/TextToSpeech;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    .line 1744
    :cond_1
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v1, :cond_2

    .line 1745
    new-instance v1, Lcom/android/server/ssrm/EmergencyMode;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/ssrm/EmergencyMode;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mEmergencyMode:Lcom/android/server/ssrm/EmergencyMode;

    .line 1747
    :cond_2
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_VZW_COOLDOWN_ENABLE:Z

    if-eqz v1, :cond_3

    .line 1748
    new-instance v1, Lcom/android/server/ssrm/CoolDownMode;

    invoke-direct {v1}, Lcom/android/server/ssrm/CoolDownMode;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    .line 1750
    :cond_3
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_BATTERY_COOLDOWN_ENABLE:Z

    if-eqz v1, :cond_4

    .line 1751
    new-instance v1, Lcom/android/server/ssrm/BatteryCoolDownMode;

    invoke-direct {v1}, Lcom/android/server/ssrm/BatteryCoolDownMode;-><init>()V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mBatteryCoolDownMode:Lcom/android/server/ssrm/BatteryCoolDownMode;

    .line 1753
    :cond_4
    new-instance v1, Lcom/android/server/ssrm/Monitor$HangoutMode;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/ssrm/Monitor$HangoutMode;-><init>(Lcom/android/server/ssrm/Monitor;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHangoutMode:Lcom/android/server/ssrm/Monitor$HangoutMode;

    .line 1755
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    invoke-virtual {v1}, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardFinished()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1756
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mCoolDownMode:Lcom/android/server/ssrm/CoolDownMode;

    iput-boolean v4, v1, Lcom/android/server/ssrm/CoolDownMode;->isSetupWizardCompleted:Z

    .line 1759
    :cond_5
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->isSiopEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 1760
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/server/ssrm/Monitor;->notifyLimitBrightness(IZ)V

    .line 1763
    :cond_6
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SsrmUEventObserver;->systemReady(Landroid/content/Context;)V

    .line 1765
    const-string v1, "dev.knoxapp.running"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1767
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/ssrm/Monitor$26;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$26;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1782
    return-void
.end method

.method private onClearCoverOn(Landroid/content/Intent;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1654
    const-string v0, "com.samsung.ssrm.COVER_OPEN"

    .line 1655
    .local v0, "ACTION_SSRM_COVER_OPEN":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.ssrm.COVER_OPEN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1656
    .local v1, "intent_":Landroid/content/Intent;
    const-string v2, "coverOpen"

    const-string v3, "coverOpen"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1657
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1658
    return-void
.end method

.method private onNetworkBoosterEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1576
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNetworkBoosterEnabled:: enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    const-string v0, "NetworkBooster"

    invoke-static {v0, p1}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 1578
    return-void
.end method

.method private onPowerConnected()V
    .locals 3

    .prologue
    .line 1685
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/server/ssrm/DeviceStatus;->setPowerConnected(Z)V

    .line 1687
    const-string v1, "ro.product.name"

    const-string v2, "default"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1688
    .local v0, "PRODUCT_NAME":Ljava/lang/String;
    const-string v1, "ms013gzm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ms013gzn"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1689
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    invoke-virtual {v1}, Lcom/android/server/ssrm/Limiter;->rewriteChargingCurrent()V

    .line 1691
    :cond_0
    return-void
.end method

.method private onPowerDisconnected()V
    .locals 1

    .prologue
    .line 1681
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/ssrm/DeviceStatus;->setPowerConnected(Z)V

    .line 1682
    return-void
.end method

.method private onScreenOff()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1638
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    .line 1639
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1640
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1642
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v0, :cond_0

    .line 1643
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SIOP_FOR_CHARGING_LIMITATION:Z

    if-eqz v0, :cond_0

    .line 1644
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_FOR_CALL_CHARGING_LIMITATION:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor;->mCallStateOffHook:Z

    if-eqz v0, :cond_1

    .line 1645
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    .line 1651
    :cond_0
    :goto_0
    return-void

    .line 1647
    :cond_1
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    goto :goto_0
.end method

.method private onScreenOn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1661
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ssrm/Monitor;->mScreenOn:Z

    .line 1662
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1663
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1665
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v1, :cond_0

    .line 1666
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SIOP_FOR_CHARGING_LIMITATION:Z

    if-eqz v1, :cond_0

    .line 1667
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_FOR_CALL_CHARGING_LIMITATION:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v1}, Lcom/android/server/ssrm/Monitor;->isSignaled(Lcom/android/server/ssrm/settings/Condition;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1669
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffInCallCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    .line 1676
    :cond_0
    :goto_0
    const-string v0, "com.samsung.ssrm.SCREEN_ON"

    .line 1677
    .local v0, "ACTION_SSRM_SCREEN_ON":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.ssrm.SCREEN_ON"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1678
    return-void

    .line 1671
    .end local v0    # "ACTION_SSRM_SCREEN_ON":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mScreenOffCondition:Lcom/android/server/ssrm/settings/Condition;

    invoke-virtual {p0, v1, v3}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    goto :goto_0
.end method

.method private onSecurePlaybackStarted()V
    .locals 3

    .prologue
    .line 1603
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1604
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1605
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "SecurePlayback_play"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1606
    const-string v1, "SSRM_STATUS_VALUE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1607
    const-string v1, "PackageName"

    const-string v2, "android.av.media.libstagefright"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1608
    const-string v1, "PID"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1609
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1610
    return-void
.end method

.method private onSecurePlaybackStopped()V
    .locals 3

    .prologue
    .line 1593
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1594
    .local v0, "boostIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1595
    const-string v1, "SSRM_STATUS_NAME"

    const-string v2, "SecurePlayback_play"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1596
    const-string v1, "SSRM_STATUS_VALUE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1597
    const-string v1, "PackageName"

    const-string v2, "android.av.media.libstagefright"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1598
    const-string v1, "PID"

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1599
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1600
    return-void
.end method

.method private onSsrmIntentReceived(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 1613
    const-string v4, "SSRM_STATUS_NAME"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1614
    .local v1, "statusName":Ljava/lang/String;
    const-string v4, "SSRM_STATUS_VALUE"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1615
    .local v2, "statusValue":Z
    const-string v4, "PackageName"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1617
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1618
    sget-object v4, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BroadcastReceiver::onReceive SSRM_STATUS_NOTIFY with statusName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  statusValue ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1621
    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v4, :cond_0

    .line 1622
    invoke-static {v1, v2}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 1625
    :cond_0
    const-string v4, "Navigation_show"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1626
    iput-boolean v2, p0, Lcom/android/server/ssrm/Monitor;->mNavigationOn:Z

    .line 1629
    :cond_1
    sget-boolean v4, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v4, :cond_4

    sget-boolean v4, Lcom/android/server/ssrm/Feature;->SIOP_FOR_CHARGING_LIMITATION:Z

    if-eqz v4, :cond_4

    .line 1630
    iget-object v4, p0, Lcom/android/server/ssrm/Monitor;->mScreenOnAppStartedCondition:Lcom/android/server/ssrm/settings/Condition;

    iget-boolean v5, p0, Lcom/android/server/ssrm/Monitor;->mNavigationOn:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    if-eqz v5, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    invoke-virtual {p0, v4, v3}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    .line 1633
    :cond_4
    return-void
.end method

.method private onTetheringChanged(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1581
    const-string/jumbo v3, "wifi"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 1582
    .local v0, "mWifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1583
    iput-boolean v2, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    .line 1587
    :goto_0
    sget-boolean v3, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SIOP_FOR_CHARGING_LIMITATION:Z

    if-eqz v3, :cond_2

    .line 1588
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mScreenOnAppStartedCondition:Lcom/android/server/ssrm/settings/Condition;

    iget-boolean v4, p0, Lcom/android/server/ssrm/Monitor;->mNavigationOn:Z

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    if-eqz v4, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    invoke-virtual {p0, v3, v1}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    .line 1590
    :cond_2
    return-void

    .line 1585
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/ssrm/Monitor;->mWifiApOn:Z

    goto :goto_0
.end method

.method private onUsbCharged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1694
    const-string/jumbo v1, "state"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1695
    .local v0, "chargingState":Ljava/lang/String;
    const-string v1, "enable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1696
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/Limiter;->setResetBatteryCharging(Z)V

    .line 1700
    :cond_0
    :goto_0
    return-void

    .line 1697
    :cond_1
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1698
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mLimiter:Lcom/android/server/ssrm/Limiter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/Limiter;->setResetBatteryCharging(Z)V

    goto :goto_0
.end method

.method private declared-synchronized readThermistorFile()Z
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 1038
    monitor-enter p0

    :try_start_0
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->sApTempPathExist:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v5, :cond_1

    .line 1087
    :cond_0
    :goto_0
    monitor-exit p0

    return v4

    .line 1043
    :cond_1
    :try_start_1
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    sget-object v6, Lcom/android/server/ssrm/Feature;->AP_TEMP_PATH:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/server/ssrm/SSRMUtil;->readSysfs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1044
    .local v1, "apTempStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1048
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1050
    .local v0, "apTemp":I
    rem-int/lit8 v5, v0, 0xa

    sub-int/2addr v0, v5

    .line 1052
    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mTempShift:I

    add-int/2addr v0, v5

    .line 1055
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v5}, Lcom/android/server/ssrm/DevSysProperty;->getApTemperature()I

    move-result v2

    .line 1056
    .local v2, "debugTemp":I
    const/16 v5, -0x3e7

    if-eq v2, v5, :cond_2

    .line 1057
    move v0, v2

    .line 1060
    :cond_2
    iget v3, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    .line 1061
    .local v3, "lastApTemp":I
    iput v0, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    .line 1063
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    if-nez v5, :cond_3

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    if-eqz v5, :cond_4

    .line 1064
    :cond_3
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor;->mPredictedSurfaceTemperature:Lcom/android/server/ssrm/PredictedSurfaceTemperature;

    iget v6, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/PredictedSurfaceTemperature;->WeightedMean(I)I

    move-result v5

    sput v5, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    .line 1065
    iget-object v5, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    sget v6, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    invoke-virtual {v5, v6}, Lcom/android/server/ssrm/DevSysProperty;->setPredictedSurfaceTemperatue(I)V

    .line 1067
    :cond_4
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    if-eqz v5, :cond_5

    .line 1068
    sget v5, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    iput v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    .line 1073
    :cond_5
    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    if-gez v5, :cond_7

    .line 1074
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V1:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_V2:Z

    if-nez v5, :cond_6

    sget-boolean v5, Lcom/android/server/ssrm/Feature;->MODEL_MONDRIAN:Z

    if-eqz v5, :cond_7

    .line 1076
    :cond_6
    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    iput v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    .line 1080
    :cond_7
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->SSRM_PST_ENABLE:Z

    if-eqz v5, :cond_8

    .line 1081
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIOP:: AP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", PST = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/ssrm/Monitor;->mSurfaceTemperature:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Delta = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    sub-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 1087
    :goto_1
    iget v5, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    if-eq v3, v5, :cond_0

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 1084
    :cond_8
    sget-object v5, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SIOP:: AP = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Delta = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/server/ssrm/Monitor;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1038
    .end local v0    # "apTemp":I
    .end local v1    # "apTempStr":Ljava/lang/String;
    .end local v2    # "debugTemp":I
    .end local v3    # "lastApTemp":I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private static registerFgAppListener(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 522
    return-void
.end method

.method private static registerFgAppListener(Ljava/lang/Class;Z)V
    .locals 4
    .param p1, "flag"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/android/server/ssrm/fgapps/FgAppListener;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 525
    .local p0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/android/server/ssrm/fgapps/FgAppListener;>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 541
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    :try_start_0
    const-class v1, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 531
    invoke-static {}, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;->getInstance()Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->register(Ljava/lang/Class;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    .line 535
    :goto_1
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 536
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/ssrm/DevSysProperty;->addFgAppListeners(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register FgAppListener class c = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 533
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ssrm/fgapps/FgAppListener;

    invoke-static {p0, v1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->register(Ljava/lang/Class;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private registerFgAppListeners()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 545
    const-class v0, Lcom/android/server/ssrm/fgapps/mDNLeOnOff;

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;)V

    .line 546
    const-class v0, Lcom/android/server/ssrm/fgapps/CameraPowerSaving;

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;)V

    .line 547
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonis;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 548
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KAM:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 549
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HA:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 550
    const-class v3, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime2Helsinki;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v0, :cond_8

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 552
    const-class v3, Lcom/android/server/ssrm/fgapps/GovernorSD8x26;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MS01_3G:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MATISSE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_MILLET:Z

    if-eqz v0, :cond_9

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 554
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorSD8064;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JF:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 555
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Interactive;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 556
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorSD8974Pro;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_KF:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 557
    const-class v3, Lcom/android/server/ssrm/fgapps/NavigationScenario;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_a

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 558
    const-class v0, Lcom/android/server/ssrm/fgapps/DvfsUpThreshold;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 559
    const-class v0, Lcom/android/server/ssrm/fgapps/TurboModeOnOff;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_TURBO_MODE_BOOSTER:Z

    invoke-static {v0, v3}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 560
    const-class v3, Lcom/android/server/ssrm/fgapps/ScreenMirroringBooster;

    const-string v0, "Combination"

    sget-object v4, Lcom/android/server/ssrm/Feature;->COMMON_HW_VENDOR_CONFIG:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_KQ:Z

    if-eqz v0, :cond_b

    :cond_3
    move v0, v2

    :goto_3
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 563
    const-class v3, Lcom/android/server/ssrm/fgapps/TouchBooster;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v0, :cond_c

    :cond_4
    move v0, v2

    :goto_4
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 564
    const-class v3, Lcom/android/server/ssrm/fgapps/GameBooster;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HF:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->IS_KOR_MODEL:Z

    if-nez v0, :cond_6

    :cond_5
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_HEAT:Z

    if-eqz v0, :cond_d

    :cond_6
    move v0, v2

    :goto_5
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 566
    const-class v3, Lcom/android/server/ssrm/fgapps/TouchBusBooster;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_BUS_QOS_BOOSTER:Z

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-eqz v0, :cond_e

    move v0, v2

    :goto_6
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 568
    const-class v0, Lcom/android/server/ssrm/fgapps/MtpObexBooster;

    invoke-static {v0, v2}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 569
    const-class v3, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_LT03:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_H:Z

    if-nez v0, :cond_7

    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_J:Z

    if-eqz v0, :cond_f

    :cond_7
    move v0, v2

    :goto_7
    invoke-static {v3, v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 571
    const-class v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;

    sget-boolean v3, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    if-nez v3, :cond_10

    :goto_8
    invoke-static {v0, v2}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 572
    const-class v0, Lcom/android/server/ssrm/fgapps/SWThermalStabilizer;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_STS_ENABLE:Z

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 573
    const-class v0, Lcom/android/server/ssrm/fgapps/TouchReportRate;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 574
    const-class v0, Lcom/android/server/ssrm/fgapps/AdonisBusPowerSaving;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_JA:Z

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 575
    const-class v0, Lcom/android/server/ssrm/fgapps/DynamicLoadDetector;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 576
    const-class v0, Lcom/android/server/ssrm/fgapps/LowBatteryMode;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->SSRM_LOW_BATTERY_LIMITATION:Z

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 579
    const-class v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;)V

    .line 580
    const-class v0, Lcom/android/server/ssrm/fgapps/tsp/GlobeMode;

    invoke-static {v0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;)V

    .line 581
    const-class v0, Lcom/android/server/ssrm/fgapps/tsp/PassivePen;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 582
    const-class v0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;

    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    invoke-static {v0, v1}, Lcom/android/server/ssrm/Monitor;->registerFgAppListener(Ljava/lang/Class;Z)V

    .line 584
    const-class v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mAirViewOnOff:Lcom/android/server/ssrm/fgapps/tsp/AbsAirViewOnOff;

    .line 585
    const-class v0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/tsp/SideTouch;

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mSideTouch:Lcom/android/server/ssrm/fgapps/tsp/SideTouch;

    .line 586
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisPrime:Lcom/android/server/ssrm/fgapps/GovernorAdonisPrime;

    .line 588
    const-class v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getInstanceOnly(Ljava/lang/Class;)Lcom/android/server/ssrm/fgapps/FgAppListener;

    move-result-object v0

    check-cast v0, Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mGovernorAdonisMini:Lcom/android/server/ssrm/fgapps/GovernorAdonisMini;

    .line 590
    return-void

    :cond_8
    move v0, v1

    .line 550
    goto/16 :goto_0

    :cond_9
    move v0, v1

    .line 552
    goto/16 :goto_1

    :cond_a
    move v0, v1

    .line 557
    goto/16 :goto_2

    :cond_b
    move v0, v1

    .line 560
    goto/16 :goto_3

    :cond_c
    move v0, v1

    .line 563
    goto/16 :goto_4

    :cond_d
    move v0, v1

    .line 564
    goto/16 :goto_5

    :cond_e
    move v0, v1

    .line 566
    goto/16 :goto_6

    :cond_f
    move v0, v1

    .line 569
    goto/16 :goto_7

    :cond_10
    move v2, v1

    .line 571
    goto :goto_8
.end method

.method public static sendMessage(Landroid/os/Message;)V
    .locals 1
    .param p0, "msg"    # Landroid/os/Message;

    .prologue
    .line 1832
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-boolean v0, v0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    if-nez v0, :cond_1

    .line 1837
    :cond_0
    :goto_0
    return-void

    .line 1836
    :cond_1
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMonitor:Lcom/android/server/ssrm/Monitor;

    iget-object v0, v0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private setForegroundPackageName(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1493
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    .line 1494
    return-void
.end method

.method static setNotifiedMaxBrightness(I)V
    .locals 0
    .param p0, "brightness"    # I

    .prologue
    .line 991
    sput p0, Lcom/android/server/ssrm/Monitor;->mNotifiedMaxBrightness:I

    .line 992
    return-void
.end method

.method public static speak(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 2034
    const-string v0, "SSRMv2:Speak"

    invoke-static {v0, p0}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 2035
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mTts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_0

    .line 2036
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mTts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 2038
    :cond_0
    return-void
.end method

.method private trimKnoxPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1497
    const-string v1, "sec_container_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1498
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 1499
    .local v0, "index":I
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 1501
    .end local v0    # "index":I
    :cond_0
    return-object p1
.end method

.method private trimPostfix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1505
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1506
    .local v0, "array":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private updateKnoxSystemProperty(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1510
    const-string v0, "sec_container_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.app.knoxlauncher"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.sec.knox.containeragent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1513
    :cond_0
    const-string v0, "dev.knoxapp.running"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1517
    :goto_0
    return-void

    .line 1515
    :cond_1
    const-string v0, "dev.knoxapp.running"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateSimpleConditionsWithName()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    .line 268
    const-string v9, "HeavyUser"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "HeavyUserScenario"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 270
    const-string v9, "GHeavyUserDown"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "GHeavyUserScenario"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 272
    const-string v9, "GHeavyUserUp"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "GHeavyUserScenario"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 274
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "ChatOnV"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 275
    const-string v9, "ChatOnV"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "ChatOnV_vtCall"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 278
    :cond_0
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "GroupPlay"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 279
    const-string v9, "GroupPlay"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v3

    .line 280
    .local v3, "mGroupPlay":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v9, "GroupPlay_gpuLock"

    invoke-virtual {v3, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 281
    const-string v9, "Navigation_show"

    invoke-virtual {v3, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 284
    .end local v3    # "mGroupPlay":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_1
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "CameraRecording"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 285
    const-string v9, "CameraRecording"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v1

    .line 287
    .local v1, "mCameraRecord":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v9, "Camera_recording"

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 288
    const-string v9, "Camera_recordingDual"

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 289
    const-string v9, "ChatOnV_vtCall"

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 290
    const-string v9, "Phone_vtCall"

    invoke-virtual {v1, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 293
    .end local v1    # "mCameraRecord":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_2
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "CameraShooting"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 294
    const-string v9, "CameraShooting"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v2

    .line 296
    .local v2, "mCameraShot":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v9, "Camera_panoramaShot"

    invoke-virtual {v2, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 297
    const-string v9, "Camera_dramaShot"

    invoke-virtual {v2, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 300
    .end local v2    # "mCameraShot":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_3
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "MirroringBoost"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 301
    const-string v9, "MirroringBoost"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "ScreenMirroringBooster"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 305
    :cond_4
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "BrowserMode"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 306
    const-string v9, "BrowserMode"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v0

    .line 307
    .local v0, "mBrowser":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v9, "com.sec.android.app.sbrowser"

    invoke-virtual {v0, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 308
    const-string v9, "com.android.chrome"

    invoke-virtual {v0, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 309
    sget-boolean v9, Lcom/android/server/ssrm/Feature;->IS_ITALY_MODEL:Z

    if-eqz v9, :cond_5

    .line 310
    const-string v9, "com.android.email"

    invoke-virtual {v0, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 314
    .end local v0    # "mBrowser":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_5
    const-string v9, "Hangouts"

    sget-boolean v10, Lcom/android/server/ssrm/Feature;->SSRM_HANGOUTS:Z

    invoke-static {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "com.google.android.talk"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 317
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "WatchNow"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 318
    const-string v9, "WatchNow"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "com.sec.android.app.videoplayer"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 322
    :cond_6
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "Camera"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_7

    .line 323
    const-string v9, "Camera"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "com.sec.android.app.camera"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 327
    :cond_7
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "VideoPlayer"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_8

    .line 328
    const-string v9, "VideoPlayer"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "com.samsung.everglades.video"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 332
    :cond_8
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "VoiceRecorder"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 333
    const-string v9, "VoiceRecorder"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "com.sec.android.app.voicenote"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 337
    :cond_9
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "HotGameControl0"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 338
    const-string v9, "HotGameControl0"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    sget-object v10, Lcom/android/server/ssrm/HotGameList;->HotGameGroup0:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    .line 341
    :cond_a
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "HotGameControl1"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 342
    const-string v9, "HotGameControl1"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    sget-object v10, Lcom/android/server/ssrm/HotGameList;->HotGameGroup1:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    .line 345
    :cond_b
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "HotGameControl2"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 346
    const-string v9, "HotGameControl2"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    sget-object v10, Lcom/android/server/ssrm/HotGameList;->HotGameGroup2:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    .line 349
    :cond_c
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "HotGameControl3"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 350
    const-string v9, "HotGameControl3"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    sget-object v10, Lcom/android/server/ssrm/HotGameList;->HotGameGroup3:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    .line 353
    :cond_d
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "HotGameControl4"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 354
    const-string v9, "HotGameControl4"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    sget-object v10, Lcom/android/server/ssrm/HotGameList;->HotGameGroup4:[Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageNameList([Ljava/lang/String;)V

    .line 357
    :cond_e
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "NetworkBooster"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 358
    const-string v9, "NetworkBooster"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v9

    const-string v10, "NetworkBooster"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 361
    :cond_f
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "OneSegTmm"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_10

    .line 362
    const-string v9, "OneSegTmm"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v6

    .line 363
    .local v6, "mOneSegTmm":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v9, "jp.co.mmbi.app"

    invoke-virtual {v6, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 364
    const-string v9, "com.samsung.sec.mtv"

    invoke-virtual {v6, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 366
    .end local v6    # "mOneSegTmm":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_10
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "KidsCamera"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_11

    .line 367
    const-string v9, "KidsCamera"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v4

    .line 369
    .local v4, "mKidsCamera":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v9, "com.sec.kidsplat.camera"

    invoke-virtual {v4, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 371
    .end local v4    # "mKidsCamera":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_11
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "Navigation"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_12

    .line 372
    const-string v9, "Navigation"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v5

    .line 374
    .local v5, "mNavigation":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v9, "com.google.android.apps.maps"

    invoke-virtual {v5, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 375
    const-string v9, "com.skt.skaf.l001mtm091"

    invoke-virtual {v5, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 376
    const-string v9, "kt.navi"

    invoke-virtual {v5, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 377
    const-string v9, "com.mnsoft.lgunavi"

    invoke-virtual {v5, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 379
    .end local v5    # "mNavigation":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_12
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "VtCall"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_13

    .line 380
    const-string v9, "VtCall"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v8

    .line 381
    .local v8, "mVtCall":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v9, "ChatOnV_vtCall"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 382
    const-string v9, "Phone_vtCall"

    invoke-virtual {v8, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addStatusName(Ljava/lang/String;)V

    .line 384
    .end local v8    # "mVtCall":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_13
    sget-object v9, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    const-string v10, "TPBoost"

    invoke-virtual {v9, v10}, Lcom/android/server/ssrm/settings/MainController;->getCondition(Ljava/lang/String;)Lcom/android/server/ssrm/settings/Condition;

    move-result-object v9

    if-eqz v9, :cond_14

    .line 385
    const-string v9, "TPBoost"

    invoke-static {v9, v11}, Lcom/android/server/ssrm/ConditionUpdateHelper;->getInstance(Ljava/lang/String;Z)Lcom/android/server/ssrm/ConditionUpdateHelper;

    move-result-object v7

    .line 386
    .local v7, "mTPBoost":Lcom/android/server/ssrm/ConditionUpdateHelper;
    const-string v9, "com.FTATS"

    invoke-virtual {v7, v9}, Lcom/android/server/ssrm/ConditionUpdateHelper;->addPackageName(Ljava/lang/String;)V

    .line 388
    .end local v7    # "mTPBoost":Lcom/android/server/ssrm/ConditionUpdateHelper;
    :cond_14
    return-void
.end method


# virtual methods
.method PowerStretchSet(I)V
    .locals 3
    .param p1, "mLucid"    # I

    .prologue
    .line 1028
    iget v1, p0, Lcom/android/server/ssrm/Monitor;->mPrevLucid:I

    if-eq p1, v1, :cond_0

    .line 1029
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".POWER_STRETCH"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1031
    .local v0, "mIntentPowerStretchChanged":Landroid/content/Intent;
    const-string/jumbo v1, "value"

    iget v2, p0, Lcom/android/server/ssrm/Monitor;->mlevelCurrLucid:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1032
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1034
    .end local v0    # "mIntentPowerStretchChanged":Landroid/content/Intent;
    :cond_0
    iput p1, p0, Lcom/android/server/ssrm/Monitor;->mPrevLucid:I

    .line 1035
    return-void
.end method

.method checkIsHeavyApp(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1470
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v0

    .line 1472
    .local v0, "sm":Lcom/android/server/ssrm/SortingMachine;
    iget-boolean v1, p0, Lcom/android/server/ssrm/Monitor;->mIsGHeavyUserScenarioExist:Z

    if-eqz v1, :cond_2

    .line 1473
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/android/server/ssrm/SortingMachine;->isAppInCategory(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1474
    sput-boolean v3, Lcom/android/server/ssrm/Monitor;->sIsGHeavyAppFg:Z

    .line 1475
    const-string v1, "GHeavyUserScenario"

    invoke-static {v1, v3}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 1490
    :cond_0
    :goto_0
    return-void

    .line 1477
    :cond_1
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->sIsGHeavyAppFg:Z

    if-eqz v1, :cond_2

    .line 1478
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->sIsGHeavyAppFg:Z

    .line 1479
    const-string v1, "GHeavyUserScenario"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    .line 1483
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/ssrm/SortingMachine;->isHeavyApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1484
    sput-boolean v3, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    .line 1485
    const-string v1, "HeavyUserScenario"

    invoke-static {v1, v3}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1486
    :cond_3
    sget-boolean v1, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    if-eqz v1, :cond_0

    .line 1487
    sput-boolean v2, Lcom/android/server/ssrm/Monitor;->sIsHeavyAppFg:Z

    .line 1488
    const-string v1, "HeavyUserScenario"

    invoke-static {v1, v2}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onSsrmStatusChanged(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1326
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    if-eqz v0, :cond_0

    .line 1327
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    invoke-virtual {v0, p2}, Lcom/android/server/ssrm/settings/MainController;->dump(Ljava/io/PrintWriter;)V

    .line 1329
    :cond_0
    return-void
.end method

.method enableAcl(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    .line 1018
    const-string v0, "/sys/class/lcd/panel/siop_enable"

    .line 1019
    .local v0, "ACL_SYSFS_PATH":Ljava/lang/String;
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v3, "/sys/class/lcd/panel/siop_enable"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    return-void

    .line 1019
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method fileWriteInt(Ljava/lang/String;I)V
    .locals 3
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 1091
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/server/ssrm/SSRMUtil;->writeSysfs(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    return-void
.end method

.method public initHandlerThread()V
    .locals 4

    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 672
    :cond_0
    :goto_0
    return-void

    .line 599
    :cond_1
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SSRM Handler Thread"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    .line 600
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 601
    new-instance v0, Lcom/android/server/ssrm/Monitor$1;

    sget-object v1, Lcom/android/server/ssrm/Monitor;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/ssrm/Monitor$1;-><init>(Lcom/android/server/ssrm/Monitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    .line 651
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor;->mFactoryBinary:Z

    if-nez v0, :cond_2

    .line 652
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->registerFgAppListeners()V

    .line 655
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v0}, Lcom/android/server/ssrm/DevSysProperty;->writeModeToSystemProperty()V

    .line 656
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v0, :cond_3

    .line 657
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mDevSysProperty:Lcom/android/server/ssrm/DevSysProperty;

    invoke-virtual {v0}, Lcom/android/server/ssrm/DevSysProperty;->writeFgAppListenersToSystemProperty()V

    .line 660
    :cond_3
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->mSsrmv2Enabled:Z

    if-eqz v0, :cond_0

    .line 661
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->isSiopEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 662
    invoke-static {}, Lcom/android/server/ssrm/PreMonitor;->getLastBatteryTemperature()I

    move-result v0

    iput v0, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    .line 663
    sget-object v0, Lcom/android/server/ssrm/Monitor;->mMainsController:Lcom/android/server/ssrm/settings/MainController;

    iget v1, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v0, v1}, Lcom/android/server/ssrm/settings/MainController;->setTemperature(I)V

    .line 664
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PreMonitor.getLastBatteryTemperature:: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :cond_4
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mThermistorObeserverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 668
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mMaxBrightnessSetRunnable:Lcom/android/server/ssrm/Monitor$MaxBrightnessSetRunnable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 670
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mAmoledAdjustTimerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method isSignaled(Lcom/android/server/ssrm/settings/Condition;)Z
    .locals 1
    .param p1, "condition"    # Lcom/android/server/ssrm/settings/Condition;

    .prologue
    .line 1414
    if-nez p1, :cond_0

    .line 1415
    const/4 v0, 0x0

    .line 1417
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/ssrm/settings/Condition;->signaled()Z

    move-result v0

    goto :goto_0
.end method

.method logOnAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1163
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    return-void
.end method

.method logOnEng(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 1167
    sget-boolean v0, Lcom/android/server/ssrm/Monitor;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1168
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    :cond_0
    return-void
.end method

.method final notifyLimitBrightness(IZ)V
    .locals 5
    .param p1, "brightness"    # I
    .param p2, "bForce"    # Z

    .prologue
    .line 999
    const-string v1, "max_brightness"

    .line 1000
    .local v1, "EXTRA_MAX_BRIGHTNESS":Ljava/lang/String;
    const-string v0, "change_type"

    .line 1002
    .local v0, "EXTRA_CHANGE_TYPE":Ljava/lang/String;
    sget v2, Lcom/android/server/ssrm/Monitor;->mNotifiedMaxBrightness:I

    if-ne v2, p1, :cond_0

    if-eqz p2, :cond_1

    .line 1003
    :cond_0
    sput p1, Lcom/android/server/ssrm/Monitor;->mNotifiedMaxBrightness:I

    .line 1005
    sget-object v2, Lcom/android/server/ssrm/Monitor;->TAG_SIOP:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyLimitBrightness() : brightness : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "isBootCompleted = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/ssrm/Monitor;->mBootComplete:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v3, "max_brightness"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1008
    iget v2, p0, Lcom/android/server/ssrm/Monitor;->mCurrentApTemperature:I

    if-gez v2, :cond_2

    .line 1009
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v3, "change_type"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1013
    :goto_0
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1015
    :cond_1
    return-void

    .line 1011
    :cond_2
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mIntentMaxBrightnessChanged:Landroid/content/Intent;

    const-string v3, "change_type"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method onDockConnected(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1371
    const/16 v0, 0xb

    .line 1373
    .local v0, "EXTRA_DOCK_STATE_HMT":I
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mHumanMotionTracker:Lcom/android/server/ssrm/HumanMotionTracker;

    if-nez v2, :cond_1

    .line 1385
    :cond_0
    :goto_0
    return-void

    .line 1377
    :cond_1
    const-string v2, "android.intent.extra.DOCK_STATE"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1380
    .local v1, "dockState":I
    const/16 v2, 0xb

    if-ne v1, v2, :cond_2

    .line 1381
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mHumanMotionTracker:Lcom/android/server/ssrm/HumanMotionTracker;

    invoke-virtual {v2}, Lcom/android/server/ssrm/HumanMotionTracker;->onConnected()V

    goto :goto_0

    .line 1382
    :cond_2
    if-nez v1, :cond_0

    .line 1383
    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mHumanMotionTracker:Lcom/android/server/ssrm/HumanMotionTracker;

    invoke-virtual {v2}, Lcom/android/server/ssrm/HumanMotionTracker;->onDisconnected()V

    goto :goto_0
.end method

.method onForegroundAppChanged(Ljava/lang/String;I)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pid"    # I

    .prologue
    .line 1421
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1463
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundAppChanged:: packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->updateKnoxSystemProperty(Ljava/lang/String;)V

    .line 1429
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->trimKnoxPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1430
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->trimPostfix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1432
    sget-object v1, Lcom/android/server/ssrm/Monitor;->mForegroundPackageName:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1433
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onForegroundAppChanged::ignored packageName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1437
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->setForegroundPackageName(Ljava/lang/String;)V

    .line 1439
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/server/ssrm/fgapps/FgAppListener;->notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1440
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/server/ssrm/TouchSeparation;->notifyFgAppChanged(Landroid/content/Context;Ljava/lang/String;I)V

    .line 1442
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHangoutMode:Lcom/android/server/ssrm/Monitor$HangoutMode;

    invoke-virtual {v1, p1}, Lcom/android/server/ssrm/Monitor$HangoutMode;->onFgAppChanged(Ljava/lang/String;)V

    .line 1444
    invoke-static {p1}, Lcom/android/server/ssrm/ConditionUpdateHelper;->onForegroundActivitiesChanged(Ljava/lang/String;)V

    .line 1446
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->checkIsHeavyApp(Ljava/lang/String;)V

    .line 1449
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mAppStartCondition:Lcom/android/server/ssrm/settings/Condition;

    if-eqz v1, :cond_0

    .line 1452
    sget-boolean v1, Lcom/android/server/ssrm/Feature;->MODEL_KA:Z

    if-eqz v1, :cond_3

    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1455
    :cond_3
    iget v1, p0, Lcom/android/server/ssrm/Monitor;->mCurrentBatteryTemperature:I

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_4

    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->getBatteryRemaining()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_4

    .line 1456
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mAppStartCondition:Lcom/android/server/ssrm/settings/Condition;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->signal(Lcom/android/server/ssrm/settings/Condition;Z)V

    .line 1458
    :cond_4
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1459
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd

    iput v1, v0, Landroid/os/Message;->what:I

    .line 1460
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1461
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public onInit(I)V
    .locals 0
    .param p1, "arg0"    # I

    .prologue
    .line 2031
    return-void
.end method

.method onPolarisChanged(Landroid/content/Intent;)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const v10, 0x124f80

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1336
    const-string v0, "ENABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1337
    .local v7, "enable":Ljava/lang/String;
    const-string v0, "1"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1338
    iput-boolean v9, p0, Lcom/android/server/ssrm/Monitor;->mPolarisPDFViewOn:Z

    .line 1343
    :goto_0
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    if-nez v0, :cond_0

    .line 1344
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "POLARIS_ARM_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    .line 1346
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->getSupportedCPUFrequencyForSSRM()[I

    move-result-object v6

    .line 1347
    .local v6, "cpuFreqTable":[I
    if-eqz v6, :cond_0

    aget v0, v6, v8

    if-le v0, v10, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    invoke-virtual {v2, v10}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1353
    .end local v6    # "cpuFreqTable":[I
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisPDFViewOn:Z

    if-eqz v0, :cond_3

    .line 1354
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "onPolarisIntentReceived:: dvfs lock for Polaris is acquired."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1355
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1356
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1357
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "onPolarisIntentReceived:: -20 cd is applied."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v9}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    .line 1368
    :cond_1
    :goto_1
    return-void

    .line 1340
    :cond_2
    iput-boolean v8, p0, Lcom/android/server/ssrm/Monitor;->mPolarisPDFViewOn:Z

    goto :goto_0

    .line 1361
    :cond_3
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "onPolarisIntentReceived:: dvfs lock for Polaris is released."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1362
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPolarisArmLock:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1363
    invoke-static {}, Lcom/android/server/ssrm/DeviceStatus;->isPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1364
    sget-object v0, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v1, "onPolarisIntentReceived:: -20 cd is released."

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v8}, Landroid/os/PowerManager;->setSystemPowerSaveMode(Z)V

    goto :goto_1
.end method

.method onReceiveBroadcastIntent(Landroid/content/Intent;)V
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1520
    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    .line 1521
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1523
    .local v0, "action":Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceiveForAll(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1525
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->SSRM_TOUCH_SEPARATION:Z

    if-eqz v3, :cond_0

    .line 1526
    invoke-static {}, Lcom/android/server/ssrm/TouchSeparation;->getInstance()Lcom/android/server/ssrm/TouchSeparation;

    move-result-object v3

    invoke-virtual {v3, v1, p1}, Lcom/android/server/ssrm/TouchSeparation;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1529
    :cond_0
    iget-object v3, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/server/ssrm/SortingMachine;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1531
    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1532
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onBootCompleted()V

    .line 1573
    :cond_1
    :goto_0
    return-void

    .line 1533
    :cond_2
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1534
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->onBatteryChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 1535
    :cond_3
    const-string v3, "android.intent.action.USB_CHARGING"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1536
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->onUsbCharged(Landroid/content/Intent;)V

    goto :goto_0

    .line 1537
    :cond_4
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1538
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onPowerConnected()V

    goto :goto_0

    .line 1539
    :cond_5
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1540
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onPowerDisconnected()V

    goto :goto_0

    .line 1541
    :cond_6
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1542
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onScreenOn()V

    goto :goto_0

    .line 1543
    :cond_7
    const-string v3, "com.samsung.cover.OPEN"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1544
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->onClearCoverOn(Landroid/content/Intent;)V

    goto :goto_0

    .line 1545
    :cond_8
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1546
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onScreenOff()V

    goto :goto_0

    .line 1547
    :cond_9
    const-string v3, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    const-string v3, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1548
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/Monitor;->onSsrmIntentReceived(Landroid/content/Intent;)V

    goto :goto_0

    .line 1549
    :cond_b
    const-string v3, "ResponseAxT9Info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1550
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->onSipChanged(Landroid/content/Intent;)V

    goto :goto_0

    .line 1551
    :cond_c
    const-string v3, "android.intent.action.SECURE_PLAYBACK_START"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1552
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onSecurePlaybackStarted()V

    goto :goto_0

    .line 1553
    :cond_d
    const-string v3, "android.intent.action.SECURE_PLAYBACK_STOP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1554
    invoke-direct {p0}, Lcom/android/server/ssrm/Monitor;->onSecurePlaybackStopped()V

    goto/16 :goto_0

    .line 1555
    :cond_e
    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1556
    invoke-direct {p0, v1}, Lcom/android/server/ssrm/Monitor;->onTetheringChanged(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1557
    :cond_f
    const-string v3, "com.sec.android.intent.action.DVFS_POLARIS_PDF_VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "sec_container_1.com.sec.android.intent.action.DVFS_POLARIS_PDF_VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1560
    :cond_10
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->onPolarisChanged(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1561
    :cond_11
    const-string v3, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1562
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->onDockConnected(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1563
    :cond_12
    const-string v3, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    const-string v3, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1565
    :cond_13
    const-string v3, "START"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/server/ssrm/Monitor;->onNetworkBoosterEnabled(Z)V

    goto/16 :goto_0

    .line 1566
    :cond_14
    const-string v3, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1567
    sget-boolean v3, Lcom/android/server/ssrm/Feature;->MODEL_K:Z

    if-eqz v3, :cond_1

    .line 1568
    const-string v3, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1569
    .local v2, "userId":I
    sget-object v3, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.EXTRA_USER_HANDLE:: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/ssrm/SSRMUtil;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    const/16 v3, 0x64

    if-eq v2, v3, :cond_15

    const/16 v3, 0x65

    if-ne v2, v3, :cond_16

    :cond_15
    const/4 v3, 0x1

    :goto_1
    sput-boolean v3, Lcom/android/server/ssrm/DeviceStatus;->sKnoxMode:Z

    goto/16 :goto_0

    :cond_16
    const/4 v3, 0x0

    goto :goto_1
.end method

.method onSipChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1251
    invoke-static {}, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->getInstance()Lcom/android/server/ssrm/Monitor$SIPStatusInfo;

    move-result-object v0

    .line 1252
    .local v0, "sipStatusInfo":Lcom/android/server/ssrm/Monitor$SIPStatusInfo;
    if-nez v0, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1256
    :cond_0
    monitor-enter v0

    .line 1257
    :try_start_0
    const-string v1, "AxT9IME.isVisibleWindow"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->latestSIPVisibleReport:Z

    .line 1259
    iget-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    if-eqz v1, :cond_1

    .line 1260
    sget-object v1, Lcom/android/server/ssrm/Monitor;->TAG:Ljava/lang/String;

    const-string v2, "onSIPIntentReceived:: SIP visility was updated more than two times in 100ms."

    invoke-virtual {p0, v1, v2}, Lcom/android/server/ssrm/Monitor;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 1293
    :goto_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1263
    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, v0, Lcom/android/server/ssrm/Monitor$SIPStatusInfo;->isSIPEventFilterThreadRunning:Z

    .line 1264
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/server/ssrm/Monitor$25;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$25;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method registerCommands()V
    .locals 3

    .prologue
    .line 1847
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "TYPE_WINDOW_ORIENTATION"

    new-instance v2, Lcom/android/server/ssrm/Monitor$27;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$27;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1866
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "MULTIVERSE_FINGER_HOVER"

    new-instance v2, Lcom/android/server/ssrm/Monitor$28;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$28;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1884
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "MULTIVERSE_SIDE_KEY"

    new-instance v2, Lcom/android/server/ssrm/Monitor$29;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$29;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1902
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "CAMERA_SIDE_KEY"

    new-instance v2, Lcom/android/server/ssrm/Monitor$30;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$30;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "SBROWSER_PAGE_LOADING"

    new-instance v2, Lcom/android/server/ssrm/Monitor$31;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$31;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1945
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "SBROWSER_DASH_MODE"

    new-instance v2, Lcom/android/server/ssrm/Monitor$32;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$32;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1995
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "REQ_DROP_CACHE"

    new-instance v2, Lcom/android/server/ssrm/Monitor$33;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$33;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2005
    sget-object v0, Lcom/android/server/ssrm/Monitor;->sCmdTable:Ljava/util/Hashtable;

    const-string v1, "BUS_DCVS_GOVERNOR"

    new-instance v2, Lcom/android/server/ssrm/Monitor$34;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/Monitor$34;-><init>(Lcom/android/server/ssrm/Monitor;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2017
    return-void
.end method

.method public registerIntentFilters()V
    .locals 19

    .prologue
    .line 1095
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1096
    .local v4, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1097
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1098
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1099
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1100
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1101
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1102
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1103
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1104
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1105
    const-string v1, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1106
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1107
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1108
    const-string v1, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1109
    const-string v1, "android.intent.action.USB_CHARGING"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1110
    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1111
    const-string v1, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1112
    const-string v1, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1113
    const-string v1, "com.samsung.cover.OPEN"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1114
    const-string v1, "android.intent.action.SECURE_PLAYBACK_START"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1115
    const-string v1, "android.intent.action.SECURE_PLAYBACK_STOP"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1116
    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1117
    const-string v1, "com.samsung.pen.INSERT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1118
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1119
    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1120
    const-string v1, "android.intent.action.START_NETWORK_BOOSTER"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1121
    const-string v1, "android.intent.action.STOP_NETWORK_BOOSTER"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1122
    const-string v1, "com.sec.android.intent.action.EMERGENCY_MODE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1123
    const-string v1, "com.sec.android.intent.action.POWER_SAVING_MODE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1124
    const-string v1, "com.sec.android.intent.action.ULTRA_POWER_SAVING_MODE_CHANGED"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1125
    const-string v1, "android.intent.action.USER_FOREGROUND"

    invoke-virtual {v4, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1128
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 1129
    .local v8, "filter2":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1130
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1131
    const-string v1, "package"

    invoke-virtual {v8, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1132
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1134
    new-instance v12, Landroid/content/IntentFilter;

    invoke-direct {v12}, Landroid/content/IntentFilter;-><init>()V

    .line 1135
    .local v12, "filter3":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1136
    const-string v1, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v12, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1137
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v13, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1140
    new-instance v16, Landroid/content/IntentFilter;

    invoke-direct/range {v16 .. v16}, Landroid/content/IntentFilter;-><init>()V

    .line 1141
    .local v16, "filter4":Landroid/content/IntentFilter;
    const-string v1, "com.sec.android.intent.action.DVFS_POLARIS_PDF_VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1142
    const-string v1, "sec_container_1.com.sec.android.intent.action.DVFS_POLARIS_PDF_VIEW"

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1143
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/ssrm/Monitor;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v13 .. v18}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 1144
    return-void
.end method

.method signal(Lcom/android/server/ssrm/settings/Condition;Z)V
    .locals 1
    .param p1, "condition"    # Lcom/android/server/ssrm/settings/Condition;
    .param p2, "on"    # Z

    .prologue
    .line 1406
    if-eqz p1, :cond_0

    .line 1407
    invoke-virtual {p0, p1}, Lcom/android/server/ssrm/Monitor;->isSignaled(Lcom/android/server/ssrm/settings/Condition;)Z

    move-result v0

    if-eq v0, p2, :cond_0

    .line 1408
    invoke-virtual {p1, p2}, Lcom/android/server/ssrm/settings/Condition;->signal(Z)V

    .line 1411
    :cond_0
    return-void
.end method

.method updateFallbackTime(Z)V
    .locals 6
    .param p1, "isSIPVisble"    # Z

    .prologue
    .line 1302
    const-string v0, "hf"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jf"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "jm"

    sget-object v1, Lcom/android/server/ssrm/Feature;->BASE_MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1304
    :cond_0
    if-eqz p1, :cond_5

    .line 1305
    const-string v0, "debug.mdpcomp.idletime"

    const-string v1, "5"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1310
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    if-eqz v0, :cond_4

    .line 1311
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    if-nez v0, :cond_2

    .line 1312
    new-instance v0, Landroid/os/DVFSHelper;

    iget-object v1, p0, Lcom/android/server/ssrm/Monitor;->mContext:Landroid/content/Context;

    const-string v2, "SIP_ARM_MAX"

    const/16 v3, 0xd

    const-wide/16 v4, 0x0

    invoke-direct/range {v0 .. v5}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    .line 1314
    :cond_2
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_3

    .line 1315
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    const-string v1, "CPU"

    iget-object v2, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    const v3, 0xfa7d0

    invoke-virtual {v2, v3}, Landroid/os/DVFSHelper;->getApproximateCPUFrequency(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1317
    :cond_3
    if-eqz p1, :cond_6

    .line 1318
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1323
    :cond_4
    :goto_1
    return-void

    .line 1307
    :cond_5
    const-string v0, "debug.mdpcomp.idletime"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1320
    :cond_6
    iget-object v0, p0, Lcom/android/server/ssrm/Monitor;->mCpuMaxSIP:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    goto :goto_1
.end method
