.class public Landroid/media/AudioService;
.super Landroid/media/IAudioService$Stub;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioService$AudioServiceBroadcastReceiver;,
        Landroid/media/AudioService$SettingsObserver;,
        Landroid/media/AudioService$AudioHandler;,
        Landroid/media/AudioService$AudioSystemThread;,
        Landroid/media/AudioService$VolumeStreamState;,
        Landroid/media/AudioService$ScoClient;,
        Landroid/media/AudioService$SoundPoolCallback;,
        Landroid/media/AudioService$SoundPoolListenerThread;,
        Landroid/media/AudioService$LoadSoundEffectReply;,
        Landroid/media/AudioService$SetModeDeathHandler;,
        Landroid/media/AudioService$ForceControlStreamClient;,
        Landroid/media/AudioService$StreamVolumeCommand;,
        Landroid/media/AudioService$ScoDevice;
    }
.end annotation


# static fields
.field private static final ACTION_WIFI_DISPLAY:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final BIT_HDMI_2:I = 0x2

.field private static final BIT_HDMI_6:I = 0x20

.field private static final BTA2DP_DOCK_TIMEOUT_MILLIS:I = 0x1f40

.field private static final BT_HEADSET_CNCT_TIMEOUT_MS:I = 0xbb8

.field private static final DEBUG_CERTS:Z = false

.field protected static final DEBUG_RC:Z = false

.field protected static final DEBUG_VOL:Z = false

.field private static final DEFAULT_STREAM_TYPE_OVERRIDE_DELAY_MS:I = 0x0

.field private static final EARJACK_COUNT_PATH:Ljava/lang/String; = "/efs/FactoryApp/earjack_count"

.field private static final EXTRA_DOCK_STATE_HMT:I = 0xb

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final MAX_BATCH_VOLUME_ADJUST_STEPS:I = 0x4

.field private static final MAX_MASTER_VOLUME:I = 0x64

.field private static final MAX_STREAM_VOLUME:[I

.field private static final MSG_BROADCAST_AUDIO_BECOMING_NOISY:I = 0xf

.field private static final MSG_BROADCAST_BT_CONNECTION_STATE:I = 0x13

.field private static final MSG_BTA2DP_DOCK_TIMEOUT:I = 0x6

.field private static final MSG_BT_HEADSET_CNCT_FAILED:I = 0x9

.field private static final MSG_CHECK_EARCARE_STATE:I = 0x1c

.field private static final MSG_CHECK_MUSIC_ACTIVE:I = 0xe

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME:I = 0x10

.field private static final MSG_CONFIGURE_SAFE_MEDIA_VOLUME_FORCED:I = 0x11

.field private static final MSG_END_SOUND_MANNER_MODE:I = 0x17

.field private static final MSG_LOAD_SOUND_EFFECTS:I = 0x7

.field private static final MSG_MEDIA_KEY_EVENT_RELEASE:I = 0x19

.field private static final MSG_MEDIA_SERVER_DIED:I = 0x4

.field private static final MSG_PERFORM_SOFT_RESET:I = 0x1a

.field private static final MSG_PERSIST_MASTER_VOLUME:I = 0x2

.field private static final MSG_PERSIST_MASTER_VOLUME_MUTE:I = 0xb

.field private static final MSG_PERSIST_RINGER_MODE:I = 0x3

.field private static final MSG_PERSIST_SAFE_VOLUME_STATE:I = 0x12

.field private static final MSG_PERSIST_VOLUME:I = 0x1

.field private static final MSG_PLAY_SOUND_EFFECT:I = 0x5

.field private static final MSG_PLAY_SOUND_MANNER_MODE:I = 0x15

.field private static final MSG_REPORT_NEW_ROUTES:I = 0xc

.field private static final MSG_SET_A2DP_CONNECTION_STATE:I = 0x65

.field private static final MSG_SET_ALL_VOLUMES:I = 0xa

.field private static final MSG_SET_DEVICE_VOLUME:I = 0x0

.field private static final MSG_SET_FORCE_BT_A2DP_USE:I = 0xd

.field private static final MSG_SET_FORCE_USE:I = 0x8

.field private static final MSG_SET_WIRED_DEVICE_CONNECTION_STATE:I = 0x64

.field private static final MSG_STOP_SCREEN_RECORDING:I = 0x18

.field private static final MSG_UNLOAD_SOUND_EFFECTS:I = 0x14

.field private static final MSG_USB_CHECK_RELEASE:I = 0x1b

.field private static final MSG_VIBRATE_MANNER_MODE:I = 0x16

.field private static final MUSIC_ACTIVE_POLL_PERIOD_MS:I = 0xea60

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final PERSIST_DELAY:I = 0x1f4

.field private static final RINGER_MODE_NAMES:[Ljava/lang/String;

.field private static final SAFE_VOLUME_CONFIGURE_TIMEOUT_MS:I = 0x7530

.field private static final SCO_MODE_RAW:I = 0x1

.field private static final SCO_MODE_VIRTUAL_CALL:I = 0x0

.field private static final SCO_STATE_ACTIVATE_REQ:I = 0x1

.field private static final SCO_STATE_ACTIVE_EXTERNAL:I = 0x2

.field private static final SCO_STATE_ACTIVE_INTERNAL:I = 0x3

.field private static final SCO_STATE_DEACTIVATE_EXT_REQ:I = 0x4

.field private static final SCO_STATE_DEACTIVATE_REQ:I = 0x5

.field private static final SCO_STATE_INACTIVE:I = 0x0

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final SOUND_EFECTS_LOAD_TIMEOUT_MS:I = 0x1388

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final SOUND_EFFECT_FILES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final STEAM_VOLUME_OPS:[I

.field public static final STREAM_REMOTE_MUSIC:I = -0xc8

.field private static final TAG:Ljava/lang/String; = "AudioService"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final TMS_ACTION_TYPE_START:I = 0x1

.field private static final TMS_ACTION_TYPE_STOP:I = 0x2

.field private static final UNSAFE_VOLUME_MUSIC_ACTIVE_MS_MAX:I = 0x44aa200

.field private static sSoundEffectVolumeDb:I


# instance fields
.field private final MAX_STREAM_VOLUME2:[I

.field private final MAX_STREAM_VOLUME_DOUBLE:[I

.field private final SAFE_MEDIA_VOLUME_ACTIVE:I

.field private final SAFE_MEDIA_VOLUME_DISABLED:I

.field private final SAFE_MEDIA_VOLUME_INACTIVE:I

.field private final SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I

.field private final SOUND_EFFECT_FILES_MAP:[[I

.field private final STREAM_NAMES:[Ljava/lang/String;

.field private final STREAM_VOLUME_ALIAS:[I

.field private final STREAM_VOLUME_ALIAS_NON_VOICE:[I

.field private mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mA2dpAvrcpLock:Ljava/lang/Object;

.field private mAllSoundMute:I

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mAudioHandler:Landroid/media/AudioService$AudioHandler;

.field private final mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

.field private mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

.field private mAvrcpAbsVolSupported:Z

.field mBecomingNoisyIntentDevices:I

.field private mBluetoothA2dpEnabled:Z

.field private final mBluetoothA2dpEnabledLock:Ljava/lang/Object;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mBluetoothScoOndump:[I

.field private mBootCompleted:Z

.field private mBootCompleted_sys:Z

.field private mCameraSoundForced:Ljava/lang/Boolean;

.field private final mConnectedDevices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mCpuCoreNumHelper:Landroid/os/DVFSHelper;

.field private mCpuHelper:Landroid/os/DVFSHelper;

.field final mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

.field private mDeviceOrientation:I

.field private mDeviceRotation:I

.field private mDockAddress:Ljava/lang/String;

.field private mDockAudioMediaEnabled:Z

.field private mDockState:I

.field private mDualMicMode:I

.field private mExternalUsbInfo:Ljava/lang/String;

.field private mFakeState:Z

.field final mFixedVolumeDevices:I

.field private mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

.field private final mForceControlStreamLock:Ljava/lang/Object;

.field private mForcedUseForComm:I

.field private mForcedUseForFMRadio:I

.field private mForcedUseForMedia:I

.field private mHDMIChannel:Ljava/lang/String;

.field private mHDMIFormat:Ljava/lang/String;

.field private mHDMIHWChannel:I

.field private mHDMIName:Ljava/lang/String;

.field private mHDMISampleRate:Ljava/lang/String;

.field private final mHasVibrator:Z

.field private mHdmiAudioOutput:I

.field private mIsCoverSafetyVolume:Z

.field private mIsEarCareEnabled:Z

.field private mIsEarCareSettingOn:Z

.field private mIsPlaySilentModeOff:Z

.field private mIsSmartVolumeEnable:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mMasterVolumeRamp:[I

.field private mMcc:I

.field private final mMediaFocusControl:Landroid/media/MediaFocusControl;

.field private mMediaLastAudibleIndex:I

.field private mMediaSilentMode:Z

.field private mMode:I

.field private final mMonitorOrientation:Z

.field private final mMonitorRotation:Z

.field private mMonoMode:I

.field private mMusicActiveMs:I

.field private mMuteAffectedStreams:I

.field private mNaturalSound:I

.field private mOldIsSmartdock:Z

.field private mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

.field private mPrevVolDirection:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerMode:I

.field private mRingerModeAffectedStreams:I

.field private mRingerModeMutedStreams:I

.field private volatile mRingtonePlayer:Landroid/media/IRingtonePlayer;

.field final mRoutesObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/media/IAudioRoutesObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSafeMediaVolumeDevices:I

.field private mSafeMediaVolumeIndex:I

.field private mSafeMediaVolumeState:Ljava/lang/Integer;

.field private mScoAudioMode:I

.field private mScoAudioState:I

.field private final mScoClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoClient;",
            ">;"
        }
    .end annotation
.end field

.field private mScoConnectionState:I

.field private mScoDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$ScoDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/AudioService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsLock:Ljava/lang/Object;

.field private mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

.field private mSilentModeOff:Z

.field private final mSoundEffectsLock:Ljava/lang/Object;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

.field private mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

.field private mSoundPoolLooper:Landroid/os/Looper;

.field private mStatusbarExpanded:Z

.field private mStatusbarHasVolumeSlider:Z

.field private mStreamMutedump:[I

.field private mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

.field private mStreamVolumeAlias:[I

.field private final mUEventUsbConnectObserver:Landroid/os/UEventObserver;

.field private mUSBDetected:Z

.field private mUsbSupportedFormat:I

.field private final mUseFixedVolume:Z

.field private final mUseMasterVolume:Z

.field private mVibrateSetting:I

.field private final mVoiceCapable:Z

.field private mVolumeControlStream:I

.field private mVolumePanel:Landroid/view/VolumePanel;

.field private mWindowManager:Landroid/view/IWindowManager;

.field private pIdOfsetVolume:[I

.field private pIdOfsetVolumeIndex:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    .line 300
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    .line 406
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    .line 6641
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SILENT"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "VIBRATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "NORMAL"

    aput-object v2, v0, v1

    sput-object v0, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    return-void

    .line 300
    :array_0
    .array-data 4
        0x5
        0x7
        0x7
        0xf
        0x7
        0x7
        0xf
        0x7
        0xf
        0xf
        0xf
        0x5
        0x5
        0xf
    .end array-data

    .line 406
    :array_1
    .array-data 4
        0x22
        0x24
        0x23
        0x24
        0x25
        0x26
        0x27
        0x24
        0x24
        0x24
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x1

    const/16 v3, 0xe

    const/4 v2, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 685
    invoke-direct {p0}, Landroid/media/IAudioService$Stub;-><init>()V

    .line 257
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsEarCareSettingOn:Z

    .line 258
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsEarCareEnabled:Z

    .line 260
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsCoverSafetyVolume:Z

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mHdmiAudioOutput:I

    .line 271
    iput v6, p0, Landroid/media/AudioService;->mMode:I

    .line 273
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    .line 280
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    .line 297
    filled-new-array {v3, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    .line 319
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME2:[I

    .line 338
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME_DOUBLE:[I

    .line 364
    new-array v0, v3, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    .line 382
    new-array v0, v3, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    .line 422
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "STREAM_VOICE_CALL"

    aput-object v1, v0, v6

    const-string v1, "STREAM_SYSTEM"

    aput-object v1, v0, v13

    const-string v1, "STREAM_RING"

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v3, "STREAM_MUSIC"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    const-string v3, "STREAM_ALARM"

    aput-object v3, v0, v1

    const/4 v1, 0x5

    const-string v3, "STREAM_NOTIFICATION"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "STREAM_BLUETOOTH_SCO"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "STREAM_SYSTEM_ENFORCED"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string v3, "STREAM_DTMF"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "STREAM_TTS"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "STREAM_FM_RADIO"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "STREAM_VIDEO_CALL"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "STREAM_SEC_COMMUNICATION"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "STREAM_VOICENOTE"

    aput-object v3, v0, v1

    iput-object v0, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    .line 439
    new-instance v0, Landroid/media/AudioService$1;

    invoke-direct {v0, p0}, Landroid/media/AudioService$1;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    .line 467
    iput v6, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 486
    new-instance v0, Landroid/media/AudioService$AudioServiceBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Landroid/media/AudioService$AudioServiceBroadcastReceiver;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    iput-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 510
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    .line 555
    iput-object v5, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    .line 564
    iput v6, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 569
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 570
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    .line 574
    iput-object v5, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 578
    iput v6, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 579
    iput v6, p0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 591
    iput-boolean v6, p0, Landroid/media/AudioService;->mMediaSilentMode:Z

    .line 592
    iput v6, p0, Landroid/media/AudioService;->mMediaLastAudibleIndex:I

    .line 593
    iput-boolean v6, p0, Landroid/media/AudioService;->mBootCompleted_sys:Z

    .line 597
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    .line 600
    new-instance v0, Landroid/media/AudioRoutesInfo;

    invoke-direct {v0}, Landroid/media/AudioRoutesInfo;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    .line 601
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    .line 617
    iput v6, p0, Landroid/media/AudioService;->mFixedVolumeDevices:I

    .line 623
    iput-boolean v13, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 625
    iput v6, p0, Landroid/media/AudioService;->mDockState:I

    .line 638
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    .line 640
    iput-boolean v6, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 650
    iput-boolean v6, p0, Landroid/media/AudioService;->mOldIsSmartdock:Z

    .line 657
    iput-object v5, p0, Landroid/media/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    .line 658
    iput-object v5, p0, Landroid/media/AudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    .line 661
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsSmartVolumeEnable:Z

    .line 664
    iput-object v5, p0, Landroid/media/AudioService;->mWindowManager:Landroid/view/IWindowManager;

    .line 666
    iput v6, p0, Landroid/media/AudioService;->mUsbSupportedFormat:I

    .line 675
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    .line 3372
    new-instance v0, Landroid/media/AudioService$2;

    invoke-direct {v0, p0}, Landroid/media/AudioService$2;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 5449
    const v0, 0x1ff8c

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 6502
    iput v6, p0, Landroid/media/AudioService;->SAFE_MEDIA_VOLUME_NOT_CONFIGURED:I

    .line 6503
    iput v13, p0, Landroid/media/AudioService;->SAFE_MEDIA_VOLUME_DISABLED:I

    .line 6504
    iput v2, p0, Landroid/media/AudioService;->SAFE_MEDIA_VOLUME_INACTIVE:I

    .line 6505
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioService;->SAFE_MEDIA_VOLUME_ACTIVE:I

    .line 6508
    iput v6, p0, Landroid/media/AudioService;->mMcc:I

    .line 6512
    const/16 v0, 0xc

    iput v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeDevices:I

    .line 6746
    new-instance v0, Landroid/media/AudioService$3;

    invoke-direct {v0, p0}, Landroid/media/AudioService$3;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    .line 686
    iput-object p1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    .line 687
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 688
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    .line 689
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111003c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    .line 692
    invoke-direct {p0}, Landroid/media/AudioService;->ChangeDefaultVolume()V

    .line 694
    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/PowerManager;

    .line 695
    .local v11, "pm":Landroid/os/PowerManager;
    const-string v0, "handleAudioEvent"

    invoke-virtual {v11, v13, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 697
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Vibrator;

    .line 698
    .local v12, "vibrator":Landroid/os/Vibrator;
    if-nez v12, :cond_4

    move v0, v6

    :goto_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    .line 708
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME2:[I

    const-string v1, "ro.config.vc_call_vol_steps"

    iget-object v3, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME2:[I

    aget v3, v3, v6

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v6

    .line 711
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME2:[I

    const/16 v1, 0xb

    iget-object v3, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME2:[I

    aget v3, v3, v6

    aput v3, v0, v1

    .line 712
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME2:[I

    const/16 v1, 0xc

    iget-object v3, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME2:[I

    aget v3, v3, v6

    aput v3, v0, v1

    .line 728
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Landroid/media/AudioService;->sSoundEffectVolumeDb:I

    .line 731
    new-instance v0, Landroid/view/VolumePanel;

    invoke-direct {v0, p1, p0}, Landroid/view/VolumePanel;-><init>(Landroid/content/Context;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    .line 732
    iput v6, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 734
    iput-boolean v6, p0, Landroid/media/AudioService;->mUSBDetected:Z

    .line 735
    iput-boolean v6, p0, Landroid/media/AudioService;->mFakeState:Z

    .line 737
    invoke-direct {p0}, Landroid/media/AudioService;->createAudioSystemThread()V

    .line 739
    new-instance v0, Landroid/media/MediaFocusControl;

    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v1}, Landroid/media/AudioService$AudioHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-direct {v0, v1, v3, v4, p0}, Landroid/media/MediaFocusControl;-><init>(Landroid/os/Looper;Landroid/content/Context;Landroid/media/VolumeController;Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    .line 742
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemCallback:Landroid/media/AudioSystem$ErrorCallback;

    invoke-static {v0}, Landroid/media/AudioSystem;->setErrorCallback(Landroid/media/AudioSystem$ErrorCallback;)V

    .line 744
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    .line 751
    .local v7, "cameraSoundForced":Z
    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, v7}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 752
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x8

    const/4 v3, 0x4

    if-eqz v7, :cond_5

    const/16 v4, 0xb

    :goto_1
    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 761
    new-instance v0, Ljava/lang/Integer;

    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "audio_safe_volume_state"

    invoke-static {v1, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 771
    invoke-virtual {p0}, Landroid/media/AudioService;->isEarProtectLimitOn()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xa

    :goto_2
    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 772
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110057

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    .line 777
    invoke-direct {p0, v6}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .line 778
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 779
    new-instance v0, Landroid/media/AudioService$SettingsObserver;

    invoke-direct {v0, p0}, Landroid/media/AudioService$SettingsObserver;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mSettingsObserver:Landroid/media/AudioService$SettingsObserver;

    .line 780
    invoke-direct {p0}, Landroid/media/AudioService;->createStreamStates()V

    .line 782
    invoke-static {}, Landroid/media/AudioService;->readAndSetLowRamDevice()V

    .line 786
    iput v6, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 787
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    invoke-direct {p0, v0, v6}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 789
    iput-boolean v6, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    .line 790
    iput-boolean v6, p0, Landroid/media/AudioService;->mIsPlaySilentModeOff:Z

    .line 791
    iget v0, p0, Landroid/media/AudioService;->mMonoMode:I

    invoke-direct {p0, v0}, Landroid/media/AudioService;->setMonoMode(I)V

    .line 793
    iget v0, p0, Landroid/media/AudioService;->mDualMicMode:I

    invoke-direct {p0, v0}, Landroid/media/AudioService;->setDualMicMode(I)V

    .line 794
    iget v0, p0, Landroid/media/AudioService;->mAllSoundMute:I

    if-ne v0, v13, :cond_0

    .line 795
    invoke-direct {p0}, Landroid/media/AudioService;->setAllSoundMute()V

    .line 798
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mHDMIChannel:Ljava/lang/String;

    .line 799
    const-string v0, "hdmi"

    iput-object v0, p0, Landroid/media/AudioService;->mHDMIName:Ljava/lang/String;

    .line 800
    iput v2, p0, Landroid/media/AudioService;->mHDMIHWChannel:I

    .line 801
    const-string v0, "16"

    iput-object v0, p0, Landroid/media/AudioService;->mHDMIFormat:Ljava/lang/String;

    .line 802
    const-string v0, "48000"

    iput-object v0, p0, Landroid/media/AudioService;->mHDMISampleRate:Ljava/lang/String;

    .line 806
    iput-object v5, p0, Landroid/media/AudioService;->mExternalUsbInfo:Ljava/lang/String;

    .line 811
    new-instance v8, Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 813
    .local v8, "intentFilter":Landroid/content/IntentFilter;
    const-string v0, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 814
    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 815
    const-string v0, "android.intent.action.USB_AUDIO_ACCESSORY_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 816
    const-string v0, "android.intent.action.USB_AUDIO_DEVICE_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 817
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 818
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 819
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 820
    const-string v0, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 821
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 823
    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 826
    const-string v0, "com.sec.tms.audio.server"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 830
    const-string v0, "android.intent.action.EXTERNAL_USB_HEADSET_PLUG"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 831
    const-string v0, "com.samsung.wfd.WFD_SESSION_ESTABLISHED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 832
    const-string v0, "com.samsung.wfd.WFD_SESSION_TERMINATED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 833
    const-string v0, "android.intent.action.EXTERNAL_CAR_CONNECTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 834
    const-string v0, "android.intent.action.EXTERNAL_CAR_DISCONNECTED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 838
    const-string v0, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 839
    const-string v0, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 842
    const-string v0, "android.settings.MONO_AUDIO_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 844
    const-string v0, "com.sec.android.intent.action.INTERNAL_SPEAKER"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 845
    const-string v0, "android.settings.ALL_SOUND_MUTE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 846
    const-string v0, "android.intent.action.WIFIDISPLAY_NOTI_CONNECTION_MODE"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 848
    const-string v0, "com.android.phone.NOISE_REDUCTION"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 850
    const-string v0, "com.android.phone.NATURAL_SOUND"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 853
    const-string v0, "com.samsung.android.app.audio.epinforequest"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 856
    const-string v0, "android.intent.action.SETTINGS_SOFT_RESET"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 857
    const-string v0, "com.android.systemui.statusbar.ANIMATING"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 858
    const-string v0, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 860
    const-string v0, "android.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 863
    const-string v0, "ro.audio.monitorOrientation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    .line 864
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v0, :cond_1

    .line 865
    const-string v0, "AudioService"

    const-string v1, "monitoring device orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 869
    :cond_1
    const-string v0, "ro.audio.monitorRotation"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    .line 870
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    if-eqz v0, :cond_2

    .line 871
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 873
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "monitoring device rotation, initial="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/media/AudioService;->mDeviceRotation:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    invoke-direct {p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    .line 878
    :cond_2
    iget-object v0, p0, Landroid/media/AudioService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 881
    iget-object v0, p0, Landroid/media/AudioService;->mUEventUsbConnectObserver:Landroid/os/UEventObserver;

    const-string v1, "USB_CONNECTION"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 884
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    .line 886
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    .line 888
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x107000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    .line 899
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v10

    .line 900
    .local v10, "numStreamTypes":I
    new-array v0, v10, [I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamMutedump:[I

    .line 901
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/media/AudioService;->mBluetoothScoOndump:[I

    .line 902
    new-array v0, v10, [I

    iput-object v0, p0, Landroid/media/AudioService;->pIdOfsetVolumeIndex:[I

    .line 903
    new-array v0, v10, [I

    iput-object v0, p0, Landroid/media/AudioService;->pIdOfsetVolume:[I

    .line 906
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mWindowManager:Landroid/view/IWindowManager;

    .line 908
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "def_tactileassist_enable"

    invoke-static {v0, v1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 909
    .local v9, "nAutoHaptic":I
    if-eqz v9, :cond_3

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;auto_haptic_enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 912
    :cond_3
    return-void

    .line 698
    .end local v7    # "cameraSoundForced":Z
    .end local v8    # "intentFilter":Landroid/content/IntentFilter;
    .end local v9    # "nAutoHaptic":I
    .end local v10    # "numStreamTypes":I
    :cond_4
    invoke-virtual {v12}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    goto/16 :goto_0

    .restart local v7    # "cameraSoundForced":Z
    :cond_5
    move v4, v6

    .line 752
    goto/16 :goto_1

    .line 771
    :cond_6
    sget v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_DISABLE:I

    goto/16 :goto_2

    .line 319
    :array_0
    .array-data 4
        0x5
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0xf
        0x5
        0x5
        0xf
    .end array-data

    .line 338
    :array_1
    .array-data 4
        0x5
        0xf
        0xf
        0x1e
        0xf
        0xf
        0xf
        0xf
        0xf
        0x1e
        0x1e
        0x5
        0x5
        0x1e
    .end array-data

    .line 364
    :array_2
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x0
        0x3
        0x3
        0x0
        0x0
        0x3
    .end array-data

    .line 382
    :array_3
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x2
        0x6
        0x7
        0x3
        0x3
        0x3
        0x0
        0x0
        0x3
    .end array-data
.end method

.method private ChangeDefaultVolume()V
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x7

    const/4 v3, 0x4

    const/16 v2, 0xb

    .line 1250
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v1, 0x0

    aput v3, v0, v1

    .line 1251
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v1, 0x1

    aput v5, v0, v1

    .line 1252
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v1, 0x2

    aput v2, v0, v1

    .line 1253
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v1, 0x3

    aput v4, v0, v1

    .line 1254
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aput v2, v0, v3

    .line 1255
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 1256
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/4 v1, 0x6

    aput v4, v0, v1

    .line 1257
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/16 v1, 0xe

    aput v1, v0, v4

    .line 1258
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 1259
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aput v2, v0, v5

    .line 1260
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/16 v1, 0xa

    aput v4, v0, v1

    .line 1261
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aput v3, v0, v2

    .line 1262
    sget-object v0, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 1279
    return-void
.end method

.method static synthetic access$000(Landroid/media/AudioService;)Landroid/media/AudioService$AudioHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object v0
.end method

.method static synthetic access$002(Landroid/media/AudioService;Landroid/media/AudioService$AudioHandler;)Landroid/media/AudioService$AudioHandler;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$AudioHandler;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    return-object p1
.end method

.method static synthetic access$100(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/os/Handler;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 152
    invoke-static/range {p0 .. p6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/media/AudioService;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/media/AudioService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mExternalUsbInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$10002(Landroid/media/AudioService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/media/AudioService;->mExternalUsbInfo:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1002(Landroid/media/AudioService;Landroid/media/AudioService$ForceControlStreamClient;)Landroid/media/AudioService$ForceControlStreamClient;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$ForceControlStreamClient;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    return-object p1
.end method

.method static synthetic access$10100(Landroid/media/AudioService;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mBootCompleted:Z

    return v0
.end method

.method static synthetic access$10202(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/media/AudioService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$10302(Landroid/media/AudioService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/app/KeyguardManager;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic access$10402(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    return p1
.end method

.method static synthetic access$10500(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method static synthetic access$10600(Landroid/media/AudioService;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->handleConfigurationChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/media/AudioService;)Landroid/media/MediaFocusControl;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    return-object v0
.end method

.method static synthetic access$10800(Landroid/media/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readAudioSettings(Z)V

    return-void
.end method

.method static synthetic access$10902(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/media/AudioService;->mNaturalSound:I

    return p1
.end method

.method static synthetic access$11000(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setNaturalSoundMode(I)V

    return-void
.end method

.method static synthetic access$1102(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    return p1
.end method

.method static synthetic access$11100(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget v0, p0, Landroid/media/AudioService;->mAllSoundMute:I

    return v0
.end method

.method static synthetic access$11102(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/media/AudioService;->mAllSoundMute:I

    return p1
.end method

.method static synthetic access$11202(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsEarCareSettingOn:Z

    return p1
.end method

.method static synthetic access$11302(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/media/AudioService;->mStatusbarExpanded:Z

    return p1
.end method

.method static synthetic access$11400(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->isUSBCheckStreamActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$11500(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mUSBDetected:Z

    return v0
.end method

.method static synthetic access$11502(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/media/AudioService;->mUSBDetected:Z

    return p1
.end method

.method static synthetic access$1200(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/AudioService;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/media/AudioService;Landroid/os/Looper;)Landroid/os/Looper;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/os/Looper;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolLooper:Landroid/os/Looper;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mSoundEffectsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/media/AudioService;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/media/AudioService;Landroid/media/SoundPool;)Landroid/media/SoundPool;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/SoundPool;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPool:Landroid/media/SoundPool;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object v0
.end method

.method static synthetic access$1702(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolCallback;)Landroid/media/AudioService$SoundPoolCallback;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$SoundPoolCallback;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolCallBack:Landroid/media/AudioService$SoundPoolCallback;

    return-object p1
.end method

.method static synthetic access$2100(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    return-void
.end method

.method static synthetic access$2300(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    return v0
.end method

.method static synthetic access$2402(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/media/AudioService;->mScoAudioState:I

    return p1
.end method

.method static synthetic access$2500(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget v0, p0, Landroid/media/AudioService;->mScoAudioMode:I

    return v0
.end method

.method static synthetic access$2502(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/media/AudioService;->mScoAudioMode:I

    return p1
.end method

.method static synthetic access$2600(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$2602(Landroid/media/AudioService;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadset;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p1
.end method

.method static synthetic access$2700(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$2702(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$2800(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Landroid/media/AudioService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3000(Landroid/media/AudioService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$3100(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Landroid/media/AudioService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object v0
.end method

.method static synthetic access$3202(Landroid/media/AudioService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$3300(Landroid/media/AudioService;II)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Landroid/media/AudioService;Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/os/Handler;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Ljava/lang/Object;
    .param p6, "x6"    # I

    .prologue
    .line 152
    invoke-direct/range {p0 .. p6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$3500(Landroid/media/AudioService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3600(Landroid/media/AudioService;)[I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->MAX_STREAM_VOLUME2:[I

    return-object v0
.end method

.method static synthetic access$3700(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    return v0
.end method

.method static synthetic access$3800(Landroid/media/AudioService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3900(Landroid/media/AudioService;)[I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    return-object v0
.end method

.method static synthetic access$4000(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    return v0
.end method

.method static synthetic access$4100(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    return v0
.end method

.method static synthetic access$4202(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaSilentMode:Z

    return p1
.end method

.method static synthetic access$4302(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/media/AudioService;->mMediaLastAudibleIndex:I

    return p1
.end method

.method static synthetic access$4400(Landroid/media/AudioService;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$4500(Landroid/media/AudioService;I)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$4600(Landroid/media/AudioService;III)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Landroid/media/AudioService;)[Landroid/media/AudioService$VolumeStreamState;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    return-object v0
.end method

.method static synthetic access$5000(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mBootCompleted_sys:Z

    return v0
.end method

.method static synthetic access$5002(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/media/AudioService;->mBootCompleted_sys:Z

    return p1
.end method

.method static synthetic access$5100(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->loadTouchSoundAssets()V

    return-void
.end method

.method static synthetic access$5200(Landroid/media/AudioService;)Landroid/media/AudioService$SoundPoolListenerThread;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object v0
.end method

.method static synthetic access$5202(Landroid/media/AudioService;Landroid/media/AudioService$SoundPoolListenerThread;)Landroid/media/AudioService$SoundPoolListenerThread;
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/media/AudioService$SoundPoolListenerThread;

    .prologue
    .line 152
    iput-object p1, p0, Landroid/media/AudioService;->mSoundPoolListenerThread:Landroid/media/AudioService$SoundPoolListenerThread;

    return-object p1
.end method

.method static synthetic access$5300()Ljava/util/List;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5400(Landroid/media/AudioService;)[[I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    return-object v0
.end method

.method static synthetic access$5600(Landroid/media/AudioService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    return v0
.end method

.method static synthetic access$5802(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsPlaySilentModeOff:Z

    return p1
.end method

.method static synthetic access$5900(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method static synthetic access$6000(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6100()V
    .locals 0

    .prologue
    .line 152
    invoke-static {}, Landroid/media/AudioService;->readAndSetLowRamDevice()V

    return-void
.end method

.method static synthetic access$6200(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    return v0
.end method

.method static synthetic access$6300(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    return v0
.end method

.method static synthetic access$6500(Landroid/media/AudioService;IZ)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    return-void
.end method

.method static synthetic access$6600(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->restoreMasterVolume()V

    return-void
.end method

.method static synthetic access$6700(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorOrientation:Z

    return v0
.end method

.method static synthetic access$6800(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    return-void
.end method

.method static synthetic access$6900(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mMonitorRotation:Z

    return v0
.end method

.method static synthetic access$7000(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    return-void
.end method

.method static synthetic access$7100(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7200(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    return v0
.end method

.method static synthetic access$7300(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7400(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    return v0
.end method

.method static synthetic access$7500(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget v0, p0, Landroid/media/AudioService;->mMonoMode:I

    return v0
.end method

.method static synthetic access$7502(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/media/AudioService;->mMonoMode:I

    return p1
.end method

.method static synthetic access$7600(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setMonoMode(I)V

    return-void
.end method

.method static synthetic access$7700(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget v0, p0, Landroid/media/AudioService;->mDualMicMode:I

    return v0
.end method

.method static synthetic access$7702(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/media/AudioService;->mDualMicMode:I

    return p1
.end method

.method static synthetic access$7800(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->setDualMicMode(I)V

    return-void
.end method

.method static synthetic access$7900(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->setAllSoundMute()V

    return-void
.end method

.method static synthetic access$8000(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->resetBluetoothSco()V

    return-void
.end method

.method static synthetic access$8100(Landroid/media/AudioService;IILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->onSetWiredDeviceConnectionState(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/media/AudioService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$8300(Landroid/media/AudioService;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$8400(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->onCheckMusicActive()V

    return-void
.end method

.method static synthetic access$8500(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onSendBecomingNoisyIntent(I)V

    return-void
.end method

.method static synthetic access$8600(Landroid/media/AudioService;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onConfigureSafeVolume(Z)V

    return-void
.end method

.method static synthetic access$8700(Landroid/media/AudioService;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->onBroadcastScoConnectionState(I)V

    return-void
.end method

.method static synthetic access$8800(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    return v0
.end method

.method static synthetic access$8900(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->sendStopScreenRecording()V

    return-void
.end method

.method static synthetic access$900(Landroid/media/AudioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->checkAndSendEarCareInfo()V

    return-void
.end method

.method static synthetic access$9100(Landroid/media/AudioService;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->performSoftReset()V

    return-void
.end method

.method static synthetic access$9200(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mFakeState:Z

    return v0
.end method

.method static synthetic access$9202(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/media/AudioService;->mFakeState:Z

    return p1
.end method

.method static synthetic access$9300(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    invoke-direct {p0}, Landroid/media/AudioService;->getCurOutDevice()I

    move-result v0

    return v0
.end method

.method static synthetic access$9400(Landroid/media/AudioService;Landroid/content/ContentResolver;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Landroid/content/ContentResolver;

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget v0, p0, Landroid/media/AudioService;->mDockState:I

    return v0
.end method

.method static synthetic access$9602(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/media/AudioService;->mDockState:I

    return p1
.end method

.method static synthetic access$9700(Landroid/media/AudioService;ZILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9800(Landroid/media/AudioService;)I
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget v0, p0, Landroid/media/AudioService;->mUsbSupportedFormat:I

    return v0
.end method

.method static synthetic access$9802(Landroid/media/AudioService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # I

    .prologue
    .line 152
    iput p1, p0, Landroid/media/AudioService;->mUsbSupportedFormat:I

    return p1
.end method

.method static synthetic access$9900(Landroid/media/AudioService;)Z
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioService;

    .prologue
    .line 152
    iget-boolean v0, p0, Landroid/media/AudioService;->mOldIsSmartdock:Z

    return v0
.end method

.method static synthetic access$9902(Landroid/media/AudioService;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/media/AudioService;
    .param p1, "x1"    # Z

    .prologue
    .line 152
    iput-boolean p1, p0, Landroid/media/AudioService;->mOldIsSmartdock:Z

    return p1
.end method

.method private addScoDevice(ILjava/lang/String;)V
    .locals 2
    .param p1, "device"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 5359
    new-instance v0, Landroid/media/AudioService$ScoDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/media/AudioService$ScoDevice;-><init>(Landroid/media/AudioService;Landroid/media/AudioService$1;)V

    .line 5360
    .local v0, "sco":Landroid/media/AudioService$ScoDevice;
    iput p1, v0, Landroid/media/AudioService$ScoDevice;->device:I

    .line 5361
    iput-object p2, v0, Landroid/media/AudioService$ScoDevice;->address:Ljava/lang/String;

    .line 5362
    iget-object v1, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5363
    return-void
.end method

.method private broadcastMasterMuteStatus(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 2007
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_MUTE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2008
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_MUTED"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2009
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2011
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 2012
    return-void
.end method

.method private broadcastRingerMode(I)V
    .locals 2
    .param p1, "ringerMode"    # I

    .prologue
    .line 3913
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3914
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3915
    const/high16 v1, 0x24000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3917
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3918
    return-void
.end method

.method private broadcastScoConnectionState(I)V
    .locals 7
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x0

    .line 3357
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x13

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v3, p1

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3359
    return-void
.end method

.method private broadcastVibrateSetting(I)V
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    .line 3922
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3923
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VIBRATE_SETTING_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3924
    .local v0, "broadcast":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VIBRATE_TYPE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3925
    const-string v1, "android.media.EXTRA_VIBRATE_SETTING"

    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3926
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 3928
    .end local v0    # "broadcast":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private cancelA2dpDeviceTimeout()V
    .locals 2

    .prologue
    .line 5264
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 5265
    return-void
.end method

.method private checkAllAliasStreamVolumes()V
    .locals 5

    .prologue
    .line 935
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    .line 936
    .local v0, "numStreamTypes":I
    const/4 v1, 0x0

    .local v1, "streamType":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 937
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, v1

    if-eq v1, v2, :cond_0

    .line 938
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    iget-object v3, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v4, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v4, v4, v1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 942
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 943
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->applyAllVolumes()V

    .line 936
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 946
    :cond_2
    return-void
.end method

.method private checkAndSendEarCareInfo()V
    .locals 14

    .prologue
    const/16 v1, 0x1c

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1189
    iget-boolean v0, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v0, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.samsung.android.app.audio.epinforesponse"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1194
    .local v7, "broadcast":Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 1195
    .local v8, "extras":Landroid/os/Bundle;
    const/4 v9, 0x0

    .line 1196
    .local v9, "isDeviceConnected":Z
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v4

    .line 1197
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v5, 0x100

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    move v9, v2

    .line 1201
    :goto_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    iget-boolean v0, p0, Landroid/media/AudioService;->mIsEarCareSettingOn:Z

    if-eqz v0, :cond_6

    if-eqz v9, :cond_6

    .line 1203
    const/4 v11, 0x0

    .line 1204
    .local v11, "nState":I
    invoke-direct {p0}, Landroid/media/AudioService;->getActiveStreamCount()I

    move-result v0

    if-lez v0, :cond_5

    .line 1205
    const-string v0, "earcare=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1206
    const/4 v11, 0x1

    .line 1211
    :goto_2
    const-string v0, "earcare_percent"

    invoke-static {v0}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1212
    .local v13, "strState":Ljava/lang/String;
    if-eqz v13, :cond_3

    const-string v0, ""

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1213
    const-string v12, "earcare_percent="

    .line 1214
    .local v12, "strKey":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-le v0, v4, :cond_0

    .line 1215
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 1218
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1219
    .local v10, "nPercent":I
    const-string v0, "AudioService"

    const-string v4, "checkAndSendEarCareInfo() - send intent"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const-string v0, "state"

    invoke-virtual {v8, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1221
    const-string v0, "percent"

    invoke-virtual {v8, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1222
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1223
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v7, v0}, Landroid/media/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1224
    const-string v0, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndSendEarCareInfo() state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " percent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1236
    .end local v10    # "nPercent":I
    .end local v12    # "strKey":Ljava/lang/String;
    :cond_3
    const-string v0, "AudioService"

    const-string v4, "checkAndSendEarCareInfo() - Loop"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v5, 0x0

    const v6, 0xea60

    move v4, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto/16 :goto_0

    .end local v11    # "nState":I
    .end local v13    # "strState":Ljava/lang/String;
    :cond_4
    move v9, v3

    .line 1197
    goto/16 :goto_1

    .line 1201
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1208
    .restart local v11    # "nState":I
    :cond_5
    const-string v0, "earcare=noActive"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1209
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 1228
    .end local v11    # "nState":I
    :cond_6
    const-string v0, "AudioService"

    const-string v2, "checkAndSendEarCareInfo() - send off"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const-string v0, "earcare=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1230
    const-string v0, "state"

    invoke-virtual {v8, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1231
    invoke-virtual {v7, v8}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1232
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v7, v0}, Landroid/media/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1233
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    goto/16 :goto_0
.end method

.method private checkForRingerModeChange(III)Z
    .locals 5
    .param p1, "oldIndex"    # I
    .param p2, "direction"    # I
    .param p3, "step"    # I

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 3566
    const/4 v0, 0x1

    .line 3567
    .local v0, "adjustVolumeIndex":Z
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    .line 3569
    .local v1, "ringerMode":I
    packed-switch v1, :pswitch_data_0

    .line 3651
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkForRingerModeChange() wrong ringer mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3655
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 3657
    iput p2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    .line 3659
    return v0

    .line 3571
    :pswitch_0
    if-ne p2, v4, :cond_0

    .line 3572
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_4

    .line 3582
    if-gt p3, p1, :cond_1

    mul-int/lit8 v2, p3, 0x2

    if-lt p1, v2, :cond_2

    :cond_1
    if-ge p1, p3, :cond_3

    .line 3584
    :cond_2
    const/4 v1, 0x1

    .line 3597
    :cond_3
    :goto_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    goto :goto_0

    .line 3592
    :cond_4
    if-ne p1, p3, :cond_3

    .line 3594
    const/4 v1, 0x0

    goto :goto_1

    .line 3601
    :pswitch_1
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_5

    .line 3602
    const-string v2, "AudioService"

    const-string v3, "checkForRingerModeChange() current ringer mode is vibratebut no vibrator is present"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3619
    :cond_5
    if-ne p2, v4, :cond_7

    .line 3620
    iget v2, p0, Landroid/media/AudioService;->mPrevVolDirection:I

    if-eq v2, v4, :cond_6

    .line 3621
    const/4 v1, 0x0

    .line 3635
    :cond_6
    :goto_2
    const/4 v0, 0x0

    .line 3636
    goto :goto_0

    .line 3623
    :cond_7
    if-ne p2, v3, :cond_6

    .line 3624
    const/4 v1, 0x2

    .line 3625
    iput-boolean v3, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    goto :goto_2

    .line 3638
    :pswitch_2
    if-ne p2, v3, :cond_8

    .line 3639
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_9

    .line 3640
    const/4 v1, 0x1

    .line 3648
    :cond_8
    :goto_3
    const/4 v0, 0x0

    .line 3649
    goto :goto_0

    .line 3642
    :cond_9
    const/4 v1, 0x2

    .line 3644
    iput-boolean v3, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    goto :goto_3

    .line 3569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkSafeMediaVolume(III)Z
    .locals 8
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I

    .prologue
    const/4 v7, 0x3

    const/4 v4, 0x1

    .line 6570
    iget-object v5, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v5

    .line 6572
    :try_start_0
    invoke-static {}, Landroid/media/AudioService;->getFactoryMode()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Landroid/media/AudioService;->isFactorySim()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6573
    :cond_0
    monitor-exit v5

    .line 6602
    :goto_0
    return v4

    .line 6575
    :cond_1
    iget-object v6, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ne v6, v7, :cond_4

    iget-object v6, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v6, v6, p1

    if-ne v6, v7, :cond_4

    and-int/lit8 v6, p3, 0xc

    if-eqz v6, :cond_4

    iget v6, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le p2, v6, :cond_4

    .line 6580
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 6581
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 6583
    const v4, 0x3000000a

    const-string v6, "AudioService"

    invoke-virtual {v1, v4, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    .line 6586
    .local v3, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v4

    if-nez v4, :cond_2

    .line 6587
    const-wide/16 v6, 0x1388

    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager$WakeLock;->acquire(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6591
    :cond_2
    :try_start_1
    iget-boolean v4, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v4, :cond_3

    .line 6592
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v6, "vibrator"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/SystemVibrator;

    .line 6593
    .local v2, "vibrator":Landroid/os/SystemVibrator;
    const/16 v4, 0xc

    invoke-virtual {v2, v4}, Landroid/os/SystemVibrator;->vibrateCall(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6600
    .end local v2    # "vibrator":Landroid/os/SystemVibrator;
    .end local v3    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_3
    :goto_1
    const/4 v4, 0x0

    :try_start_2
    monitor-exit v5

    goto :goto_0

    .line 6603
    .end local v1    # "pm":Landroid/os/PowerManager;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 6595
    .restart local v1    # "pm":Landroid/os/PowerManager;
    .restart local v3    # "wl":Landroid/os/PowerManager$WakeLock;
    :catch_0
    move-exception v0

    .line 6596
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v4, "AudioService"

    const-string v6, "Vibrator error"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6602
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v3    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_4
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private checkScoAudioState()V
    .locals 2

    .prologue
    .line 3265
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    .line 3269
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 3271
    :cond_0
    return-void
.end method

.method private checkSendBecomingNoisyIntent(II)I
    .locals 9
    .param p1, "device"    # I
    .param p2, "state"    # I

    .prologue
    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 5461
    const/4 v7, 0x0

    .line 5462
    .local v7, "delay":I
    if-nez p2, :cond_2

    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    .line 5482
    invoke-direct {p0}, Landroid/media/AudioService;->getCurOutDevice()I

    move-result v8

    .line 5483
    .local v8, "outDevice":I
    const/4 v0, -0x1

    if-eq v8, v0, :cond_2

    .line 5484
    const/4 v0, 0x7

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eq p1, v1, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 5487
    move v8, p1

    .line 5489
    :cond_1
    and-int v0, v8, p1

    if-eqz v0, :cond_2

    .line 5490
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xf

    const/4 v5, 0x0

    move v3, p1

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5498
    const/16 v0, 0x400

    if-ne p1, v0, :cond_5

    invoke-static {}, Landroid/media/AudioService;->getFactoryMode()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5499
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hdmi delay in Factorymode  ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5509
    .end local v8    # "outDevice":I
    :cond_2
    :goto_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5511
    :cond_3
    const/16 v7, 0x3e8

    .line 5513
    :cond_4
    return v7

    .line 5502
    .restart local v8    # "outDevice":I
    :cond_5
    const/16 v7, 0x3e8

    goto :goto_0
.end method

.method private createAudioSystemThread()V
    .locals 1

    .prologue
    .line 915
    new-instance v0, Landroid/media/AudioService$AudioSystemThread;

    invoke-direct {v0, p0}, Landroid/media/AudioService$AudioSystemThread;-><init>(Landroid/media/AudioService;)V

    iput-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    .line 916
    iget-object v0, p0, Landroid/media/AudioService;->mAudioSystemThread:Landroid/media/AudioService$AudioSystemThread;

    invoke-virtual {v0}, Landroid/media/AudioService$AudioSystemThread;->start()V

    .line 917
    invoke-direct {p0}, Landroid/media/AudioService;->waitForAudioHandlerCreation()V

    .line 918
    return-void
.end method

.method private createStreamStates()V
    .locals 6

    .prologue
    .line 949
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 950
    .local v1, "numStreamTypes":I
    new-array v2, v1, [Landroid/media/AudioService$VolumeStreamState;

    iput-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    .line 952
    .local v2, "streams":[Landroid/media/AudioService$VolumeStreamState;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 953
    new-instance v3, Landroid/media/AudioService$VolumeStreamState;

    sget-object v4, Landroid/provider/Settings$System;->VOLUME_SETTINGS:[Ljava/lang/String;

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v0, v5}, Landroid/media/AudioService$VolumeStreamState;-><init>(Landroid/media/AudioService;Ljava/lang/String;ILandroid/media/AudioService$1;)V

    aput-object v3, v2, v0

    .line 952
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 956
    :cond_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 957
    return-void
.end method

.method private disconnectBluetoothSco(I)V
    .locals 8
    .param p1, "exceptPid"    # I

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x2

    .line 3326
    iget-object v7, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v7

    .line 3327
    :try_start_0
    invoke-direct {p0}, Landroid/media/AudioService;->checkScoAudioState()V

    .line 3328
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v2, :cond_3

    .line 3330
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_1

    .line 3331
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_2

    .line 3332
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothHeadset;->stopVoiceRecognition(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3334
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3345
    :cond_1
    :goto_0
    monitor-exit v7

    .line 3346
    return-void

    .line 3337
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Landroid/media/AudioService;->getBluetoothHeadset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3339
    const/4 v0, 0x4

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    goto :goto_0

    .line 3345
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 3343
    :cond_3
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->clearAllScoClients(IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private doSetMasterVolume(FI)V
    .locals 9
    .param p1, "volume"    # F
    .param p2, "flags"    # I

    .prologue
    const/4 v2, 0x0

    .line 2159
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2160
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v8

    .line 2161
    .local v8, "oldVolume":I
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 2163
    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterVolume()I

    move-result v7

    .line 2164
    .local v7, "newVolume":I
    if-eq v7, v8, :cond_0

    .line 2166
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2170
    :cond_0
    invoke-direct {p0, p2, v8, v7}, Landroid/media/AudioService;->sendMasterVolumeUpdate(III)V

    .line 2172
    .end local v7    # "newVolume":I
    .end local v8    # "oldVolume":I
    :cond_1
    return-void
.end method

.method private dumpRingerMode(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6648
    const-string v0, "\nRinger mode: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/media/AudioService;->RINGER_MODE_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroid/media/AudioService;->mRingerMode:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6650
    const-string v0, "- ringer mode affected streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6651
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6652
    const-string v0, "- ringer mode muted streams = 0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6653
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6654
    return-void
.end method

.method private dumpScoClients(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 6658
    const-string v3, "\nSco Client list entries: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6659
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v4

    .line 6660
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 6661
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 6662
    iget-object v3, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 6663
    .local v0, "cl":Landroid/media/AudioService$ScoClient;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\n  pid: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6661
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6665
    .end local v0    # "cl":Landroid/media/AudioService$ScoClient;
    :cond_0
    monitor-exit v4

    .line 6666
    return-void

    .line 6665
    .end local v1    # "i":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private dumpStreamStates(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 960
    const-string v2, "\nStream volumes (device: index)"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 961
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 962
    .local v1, "numStreamTypes":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 963
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 964
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, v0

    # invokes: Landroid/media/AudioService$VolumeStreamState;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v2, p1}, Landroid/media/AudioService$VolumeStreamState;->access$500(Landroid/media/AudioService$VolumeStreamState;Ljava/io/PrintWriter;)V

    .line 965
    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 962
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 967
    :cond_0
    const-string v2, "\n- mute affected streams = 0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 968
    iget v2, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    const-string v2, "\nMute calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 972
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mStreamMutedump:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 974
    :cond_1
    const-string v2, "\nVolume change calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_2

    .line 976
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->STREAM_NAMES:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " INDEX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->pIdOfsetVolumeIndex:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->pIdOfsetVolume:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 978
    :cond_2
    const-string v2, "\nBT SCO on/off calling pid\'s"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 979
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- BT SCO on is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mBluetoothScoOndump:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- BT SCO off is called by PID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mBluetoothScoOndump:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 982
    return-void
.end method

.method private enforceSafeMediaVolume()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    .line 6545
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 6546
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const/16 v7, 0xc

    .line 6547
    .local v7, "devices":I
    const/4 v8, 0x0

    .local v8, "i":I
    move v9, v8

    .line 6549
    .end local v8    # "i":I
    .local v9, "i":I
    :goto_0
    if-eqz v7, :cond_2

    .line 6550
    const/4 v0, 0x1

    add-int/lit8 v8, v9, 0x1

    .end local v9    # "i":I
    .restart local v8    # "i":I
    shl-int v3, v0, v9

    .line 6551
    .local v3, "device":I
    and-int v0, v3, v7

    if-nez v0, :cond_0

    move v9, v8

    .line 6552
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 6554
    .end local v9    # "i":I
    .restart local v8    # "i":I
    :cond_0
    invoke-virtual {v5, v3}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 6555
    .local v10, "index":I
    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le v10, v0, :cond_1

    .line 6556
    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    invoke-virtual {v5, v0, v3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    .line 6557
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6565
    :cond_1
    xor-int/lit8 v0, v3, -0x1

    and-int/2addr v7, v0

    move v9, v8

    .line 6566
    .end local v8    # "i":I
    .restart local v9    # "i":I
    goto :goto_0

    .line 6567
    .end local v3    # "device":I
    .end local v10    # "index":I
    :cond_2
    return-void
.end method

.method private ensureValidDirection(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    .line 3731
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/4 v0, 0x1

    if-le p1, v0, :cond_1

    .line 3732
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad direction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3734
    :cond_1
    return-void
.end method

.method private ensureValidRingerMode(I)V
    .locals 3
    .param p1, "ringerMode"    # I

    .prologue
    .line 2222
    invoke-static {p1}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2223
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad ringer mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2225
    :cond_0
    return-void
.end method

.method private ensureValidSteps(I)V
    .locals 3
    .param p1, "steps"    # I

    .prologue
    .line 3737
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 3738
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad volume adjust steps "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3740
    :cond_0
    return-void
.end method

.method private ensureValidStreamType(I)V
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    .line 3743
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 3744
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad stream type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3746
    :cond_1
    return-void
.end method

.method private findVolumeDelta(II)I
    .locals 6
    .param p1, "direction"    # I
    .param p2, "volume"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 1892
    const/4 v0, 0x0

    .line 1893
    .local v0, "delta":I
    if-ne p1, v5, :cond_4

    .line 1894
    const/16 v4, 0x64

    if-ne p2, v4, :cond_1

    .line 1923
    :cond_0
    :goto_0
    return v3

    .line 1898
    :cond_1
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v5

    .line 1901
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v3, v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-le v1, v5, :cond_2

    .line 1902
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    if-lt p2, v3, :cond_3

    .line 1903
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v0, v3, v1

    .end local v1    # "i":I
    :cond_2
    :goto_2
    move v3, v0

    .line 1923
    goto :goto_0

    .line 1901
    .restart local v1    # "i":I
    :cond_3
    add-int/lit8 v1, v1, -0x2

    goto :goto_1

    .line 1907
    .end local v1    # "i":I
    :cond_4
    const/4 v4, -0x1

    if-ne p1, v4, :cond_2

    .line 1908
    if-eqz p2, :cond_0

    .line 1911
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    array-length v2, v3

    .line 1913
    .local v2, "length":I
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1916
    const/4 v1, 0x2

    .restart local v1    # "i":I
    :goto_3
    if-ge v1, v2, :cond_2

    .line 1917
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    aget v3, v3, v1

    if-gt p2, v3, :cond_5

    .line 1918
    iget-object v3, p0, Landroid/media/AudioService;->mMasterVolumeRamp:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    neg-int v0, v3

    .line 1919
    goto :goto_2

    .line 1916
    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_3
.end method

.method private getActiveStreamCount()I
    .locals 3

    .prologue
    .line 1355
    const/4 v0, 0x0

    .line 1356
    .local v0, "nReturn":I
    const/4 v1, 0x0

    .local v1, "nStreamNum":I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1357
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1358
    add-int/lit8 v0, v0, 0x1

    .line 1356
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1361
    :cond_1
    return v0
.end method

.method private getBluetoothHeadset()Z
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 3310
    const/4 v8, 0x0

    .line 3311
    .local v8, "result":Z
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v7

    .line 3312
    .local v7, "adapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v7, :cond_0

    .line 3313
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v1, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    move-result v8

    .line 3320
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x9

    const/4 v5, 0x0

    if-eqz v8, :cond_1

    const/16 v6, 0xbb8

    :goto_0
    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3322
    return v8

    :cond_1
    move v6, v2

    .line 3320
    goto :goto_0
.end method

.method private getCurOutDevice()I
    .locals 3

    .prologue
    .line 6726
    const-string v1, "audioParam;outDevice"

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6727
    .local v0, "path":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6728
    :cond_0
    const-string v1, "AudioService"

    const-string v2, "getCurOutDevice : Can\'t get outDevice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6729
    const/4 v1, -0x1

    .line 6731
    :goto_0
    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method private getDeviceForStream(I)I
    .locals 2
    .param p1, "stream"    # I

    .prologue
    .line 3970
    invoke-static {p1}, Landroid/media/AudioSystem;->getDevicesForStream(I)I

    move-result v0

    .line 3971
    .local v0, "device":I
    add-int/lit8 v1, v0, -0x1

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 3977
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 3978
    const/4 v0, 0x2

    .line 3983
    :cond_0
    :goto_0
    return v0

    .line 3980
    :cond_1
    and-int/lit16 v0, v0, 0x380

    goto :goto_0
.end method

.method private static getFactoryMode()Z
    .locals 5

    .prologue
    .line 6697
    const/4 v1, 0x0

    .line 6699
    .local v1, "userMode":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/efs/FactoryApp/factorymode"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 6704
    :goto_0
    if-eqz v1, :cond_0

    const-string v2, "ON"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6705
    const/4 v2, 0x0

    .line 6708
    :goto_1
    return v2

    .line 6700
    :catch_0
    move-exception v0

    .line 6701
    .local v0, "e1":Ljava/io/IOException;
    const-string v1, "OFF"

    .line 6702
    const-string v2, "AudioService"

    const-string v3, "cannot open file : /efs/FactoryApp/factorymode "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6707
    .end local v0    # "e1":Ljava/io/IOException;
    :cond_0
    const-string v2, "AudioService"

    const-string v3, "Current mode is Factorymode, So Popup UI will not be apear"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6708
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected static getMaxStreamVolume(I)I
    .locals 1
    .param p0, "streamType"    # I

    .prologue
    .line 2096
    sget-object v0, Landroid/media/AudioService;->MAX_STREAM_VOLUME:[I

    aget v0, v0, p0

    return v0
.end method

.method private getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;
    .locals 6
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "create"    # Z

    .prologue
    .line 3274
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3275
    const/4 v0, 0x0

    .line 3276
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 3277
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .local v1, "client":Landroid/media/AudioService$ScoClient;
    :goto_0
    if-ge v2, v3, :cond_1

    .line 3278
    :try_start_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3279
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :try_start_2
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, p1, :cond_0

    .line 3280
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    .line 3286
    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    :goto_1
    return-object v1

    .line 3277
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_0

    .line 3282
    :cond_1
    if-eqz p2, :cond_2

    .line 3283
    :try_start_3
    new-instance v0, Landroid/media/AudioService$ScoClient;

    invoke-direct {v0, p0, p1}, Landroid/media/AudioService$ScoClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3284
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :try_start_4
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3286
    :goto_2
    monitor-exit v5

    move-object v1, v0

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_1

    .line 3287
    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .end local v2    # "i":I
    .end local v3    # "size":I
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    :catchall_0
    move-exception v4

    :goto_3
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v2    # "i":I
    .restart local v3    # "size":I
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_3

    .end local v0    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v1    # "client":Landroid/media/AudioService$ScoClient;
    :cond_2
    move-object v0, v1

    .end local v1    # "client":Landroid/media/AudioService$ScoClient;
    .restart local v0    # "client":Landroid/media/AudioService$ScoClient;
    goto :goto_2
.end method

.method public static getValueForVibrateSetting(III)I
    .locals 2
    .param p0, "existingValue"    # I
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2401
    const/4 v0, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr p0, v0

    .line 2404
    and-int/lit8 v0, p2, 0x3

    mul-int/lit8 v1, p1, 0x2

    shl-int/2addr v0, v1

    or-int/2addr p0, v0

    .line 2406
    return p0
.end method

.method private handleConfigurationChanged(Landroid/content/Context;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 6338
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    .line 6340
    .local v9, "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/media/AudioService;->mMonitorOrientation:Z

    if-eqz v1, :cond_0

    .line 6341
    iget v11, v9, Landroid/content/res/Configuration;->orientation:I

    .line 6342
    .local v11, "newOrientation":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/AudioService;->mDeviceOrientation:I

    if-eq v11, v1, :cond_0

    .line 6343
    move-object/from16 v0, p0

    iput v11, v0, Landroid/media/AudioService;->mDeviceOrientation:I

    .line 6344
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->setOrientationForAudioSystem()V

    .line 6347
    .end local v11    # "newOrientation":I
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/media/AudioService;->mMonitorRotation:Z

    if-eqz v1, :cond_1

    .line 6348
    const-string v1, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v12

    .line 6350
    .local v12, "newRotation":I
    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/AudioService;->mDeviceRotation:I

    if-eq v12, v1, :cond_1

    .line 6351
    move-object/from16 v0, p0

    iput v12, v0, Landroid/media/AudioService;->mDeviceRotation:I

    .line 6352
    invoke-direct/range {p0 .. p0}, Landroid/media/AudioService;->setRotationForAudioSystem()V

    .line 6355
    .end local v12    # "newRotation":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6363
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110060

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 6370
    .local v8, "cameraSoundForced":Z
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6371
    :try_start_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 6372
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v8, v1, :cond_2

    .line 6373
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    .line 6375
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x7

    aget-object v13, v1, v2

    .line 6376
    .local v13, "s":Landroid/media/AudioService$VolumeStreamState;
    if-eqz v8, :cond_3

    .line 6377
    invoke-virtual {v13}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexesToMax()V

    .line 6378
    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v1, v1, -0x81

    move-object/from16 v0, p0

    iput v1, v0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 6386
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 6388
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x8

    const/4 v3, 0x2

    const/4 v4, 0x4

    if-eqz v8, :cond_4

    const/16 v5, 0xb

    :goto_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6397
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xa

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 6404
    .end local v13    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_2
    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6405
    :try_start_3
    monitor-exit v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 6406
    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v9}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/VolumePanel;->setLayoutDirection(I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 6410
    .end local v8    # "cameraSoundForced":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :goto_2
    return-void

    .line 6381
    .restart local v8    # "cameraSoundForced":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_3
    :try_start_5
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v13, v1}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 6382
    move-object/from16 v0, p0

    iget v1, v0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v1, v1, 0x80

    move-object/from16 v0, p0

    iput v1, v0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_0

    .line 6404
    .end local v13    # "s":Landroid/media/AudioService$VolumeStreamState;
    :catchall_0
    move-exception v1

    monitor-exit v15
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1

    .line 6405
    :catchall_1
    move-exception v1

    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 6407
    .end local v8    # "cameraSoundForced":Z
    .end local v9    # "config":Landroid/content/res/Configuration;
    :catch_0
    move-exception v10

    .line 6408
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "AudioService"

    const-string v2, "Error handling configuration change: "

    invoke-static {v1, v2, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 6388
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "cameraSoundForced":Z
    .restart local v9    # "config":Landroid/content/res/Configuration;
    .restart local v13    # "s":Landroid/media/AudioService$VolumeStreamState;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private handleDeviceConnection(ZILjava/lang/String;)Z
    .locals 9
    .param p1, "connected"    # Z
    .param p2, "device"    # I
    .param p3, "params"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5377
    iget-object v6, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v6

    .line 5383
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 5384
    .local v0, "isConnected":Z
    const-string v3, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "connected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " device:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isConnected:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5385
    if-nez p1, :cond_0

    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    .line 5386
    const-string v3, "AudioService"

    const-string v5, "handleDeviceConnection no more unavailable device, return false"

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5387
    monitor-exit v6

    move v3, v4

    .line 5444
    :goto_0
    return v3

    .line 5389
    :cond_0
    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    const/16 v3, 0x1000

    if-ne p2, v3, :cond_1

    .line 5390
    const/4 v7, 0x0

    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2, v7, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5393
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5394
    const/4 v0, 0x0

    .line 5397
    :cond_1
    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Landroid/media/AudioService;->isScoDevice(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5398
    invoke-direct {p0, p2, p3}, Landroid/media/AudioService;->addScoDevice(ILjava/lang/String;)V

    .line 5399
    monitor-exit v6

    move v3, v5

    goto :goto_0

    .line 5403
    :cond_2
    if-eqz v0, :cond_5

    if-nez p1, :cond_5

    .line 5405
    invoke-direct {p0, p2}, Landroid/media/AudioService;->isScoDevice(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5406
    invoke-direct {p0, p2, p3}, Landroid/media/AudioService;->removeScoDevice(ILjava/lang/String;)V

    .line 5407
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 5408
    monitor-exit v6

    move v3, v5

    goto :goto_0

    .line 5410
    :cond_3
    iget-object v3, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    .line 5411
    iget-object v4, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    iget-object v3, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoDevice;

    iget v3, v3, Landroid/media/AudioService$ScoDevice;->device:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v3, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioService$ScoDevice;

    iget-object v3, v3, Landroid/media/AudioService$ScoDevice;->address:Ljava/lang/String;

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5412
    monitor-exit v6

    move v3, v5

    goto :goto_0

    .line 5417
    :cond_4
    const/4 v4, 0x0

    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p2, v4, v3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5420
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5421
    monitor-exit v6

    move v3, v5

    goto/16 :goto_0

    .line 5422
    :cond_5
    if-nez v0, :cond_9

    if-eqz p1, :cond_9

    .line 5424
    const/4 v3, 0x4

    if-eq p2, v3, :cond_6

    const/16 v3, 0x8

    if-ne p2, v3, :cond_7

    .line 5425
    :cond_6
    const-string v3, "AudioService"

    const-string v4, "onReceive set Screen power on for Contextual Awareness."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5426
    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 5427
    .local v1, "pm":Landroid/os/PowerManager;
    const v3, 0x1000001a

    const-string v4, "Earphone Inserted"

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 5428
    .local v2, "wl":Landroid/os/PowerManager$WakeLock;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v4, v7}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 5429
    const-wide/16 v3, 0x1388

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 5432
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v2    # "wl":Landroid/os/PowerManager$WakeLock;
    :cond_7
    const/4 v3, 0x1

    invoke-static {p2, v3, p3}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5435
    iget-object v3, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5437
    invoke-direct {p0, p2}, Landroid/media/AudioService;->isScoDevice(I)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 5438
    invoke-direct {p0, p2, p3}, Landroid/media/AudioService;->addScoDevice(ILjava/lang/String;)V

    .line 5441
    :cond_8
    monitor-exit v6

    move v3, v5

    goto/16 :goto_0

    .line 5443
    :cond_9
    monitor-exit v6

    move v3, v4

    .line 5444
    goto/16 :goto_0

    .line 5443
    .end local v0    # "isConnected":Z
    :catchall_0
    move-exception v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private hasScheduledA2dpDockTimeout()Z
    .locals 2

    .prologue
    .line 5269
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/media/AudioService$AudioHandler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method private increaseEARCount()V
    .locals 8

    .prologue
    .line 5686
    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/earjack_count"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5687
    .local v3, "strEARCount":Ljava/lang/String;
    if-eqz v3, :cond_0

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5688
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x1

    add-long v1, v4, v6

    .line 5689
    .local v1, "earjack_count":J
    const-string v4, "/efs/FactoryApp/earjack_count"

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 5698
    .end local v1    # "earjack_count":J
    .end local v3    # "strEARCount":Ljava/lang/String;
    :goto_0
    return-void

    .line 5691
    .restart local v3    # "strEARCount":Ljava/lang/String;
    :cond_0
    const-string v4, "/efs/FactoryApp/earjack_count"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 5693
    .end local v3    # "strEARCount":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 5694
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5695
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 5696
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberFormatException : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initCPUBoost()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1367
    iget-object v2, p0, Landroid/media/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    if-nez v2, :cond_0

    .line 1368
    new-instance v2, Landroid/os/DVFSHelper;

    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const/16 v4, 0xc

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/media/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    .line 1370
    :cond_0
    iget-object v2, p0, Landroid/media/AudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    if-nez v2, :cond_1

    .line 1371
    new-instance v2, Landroid/os/DVFSHelper;

    iget-object v3, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const/16 v4, 0xe

    invoke-direct {v2, v3, v4}, Landroid/os/DVFSHelper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/media/AudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    .line 1375
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_2

    .line 1376
    iget-object v2, p0, Landroid/media/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUFrequency()[I

    move-result-object v0

    .line 1377
    .local v0, "supportedCPUFreqTable":[I
    if-eqz v0, :cond_2

    .line 1378
    iget-object v2, p0, Landroid/media/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    const-string v3, "CPU"

    aget v4, v0, v6

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1384
    .end local v0    # "supportedCPUFreqTable":[I
    :cond_2
    iget-object v2, p0, Landroid/media/AudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    if-eqz v2, :cond_3

    .line 1385
    iget-object v2, p0, Landroid/media/AudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v2}, Landroid/os/DVFSHelper;->getSupportedCPUCoreNum()[I

    move-result-object v1

    .line 1386
    .local v1, "supportedCpuCoreNum":[I
    if-eqz v1, :cond_3

    .line 1387
    iget-object v2, p0, Landroid/media/AudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    const-string v3, "CORE_NUM"

    aget v4, v1, v6

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/DVFSHelper;->addExtraOption(Ljava/lang/String;J)V

    .line 1394
    .end local v1    # "supportedCpuCoreNum":[I
    :cond_3
    return-void
.end method

.method private isAfMusicActiveRecently(I)Z
    .locals 2
    .param p1, "delay_ms"    # I

    .prologue
    const/4 v1, 0x3

    .line 3790
    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1, p1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isFactorySim()Z
    .locals 7

    .prologue
    .line 6713
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 6714
    .local v3, "tm":Landroid/telephony/TelephonyManager;
    const-string v0, "999999999999999"

    .line 6715
    .local v0, "IMSI":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    .line 6716
    .local v2, "imsi":Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v4, "999999999999999"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 6717
    const-string v4, "AudioService"

    const-string v5, "Factory SIM is used now, So Popup UI will not be apear"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6718
    const/4 v4, 0x1

    .line 6723
    .end local v0    # "IMSI":Ljava/lang/String;
    .end local v2    # "imsi":Ljava/lang/String;
    .end local v3    # "tm":Landroid/telephony/TelephonyManager;
    :goto_0
    return v4

    .line 6720
    :catch_0
    move-exception v1

    .line 6721
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AudioService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error checking factory SIM: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6723
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private isInCommunication()Z
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    .line 3749
    const/4 v1, 0x0

    .line 3751
    .local v1, "isOffhook":Z
    iget-boolean v4, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v4, :cond_3

    .line 3753
    :try_start_0
    const-string v4, "phone"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3758
    .local v2, "phone":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 3759
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v1

    .line 3760
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v4

    if-eq v4, v5, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 3763
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    or-int/2addr v1, v4

    .line 3766
    :cond_1
    const-string v4, "phone2"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 3767
    .local v3, "phone2":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_3

    .line 3768
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isOffhook()Z

    move-result v4

    or-int/2addr v1, v4

    .line 3769
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v4

    if-eq v4, v5, :cond_2

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 3772
    :cond_2
    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->isRinging()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    or-int/2addr v1, v4

    .line 3780
    .end local v2    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v3    # "phone2":Lcom/android/internal/telephony/ITelephony;
    :cond_3
    :goto_0
    if-nez v1, :cond_4

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_5

    :cond_4
    const/4 v4, 0x1

    :goto_1
    return v4

    .line 3776
    :catch_0
    move-exception v0

    .line 3777
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "AudioService"

    const-string v5, "Couldn\'t connect to phone service"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3780
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_5
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isScoDevice(I)Z
    .locals 1
    .param p1, "device"    # I

    .prologue
    .line 5351
    packed-switch p1, :pswitch_data_0

    .line 5355
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5353
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 5351
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method private isStreamMutedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3667
    iget v1, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUSBCheckStreamActive()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 6741
    const/4 v1, 0x4

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private loadTouchSoundAssetDefaults()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2683
    sget-object v1, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    const-string v2, "Effect_Tick.ogg"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2684
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 2685
    iget-object v1, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    aput v4, v1, v4

    .line 2686
    iget-object v1, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 2684
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2688
    :cond_0
    return-void
.end method

.method private loadTouchSoundAssets()V
    .locals 14

    .prologue
    .line 2691
    const/4 v9, 0x0

    .line 2694
    .local v9, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 2763
    :cond_0
    :goto_0
    return-void

    .line 2698
    :cond_1
    invoke-direct {p0}, Landroid/media/AudioService;->loadTouchSoundAssetDefaults()V

    .line 2701
    :try_start_0
    iget-object v11, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10f0001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9

    .line 2703
    const-string v11, "audio_assets"

    invoke-static {v9, v11}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 2704
    const/4 v11, 0x0

    const-string v12, "version"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 2705
    .local v10, "version":Ljava/lang/String;
    const/4 v7, 0x0

    .line 2707
    .local v7, "inTouchSoundsGroup":Z
    const-string v11, "1.0"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2709
    :cond_2
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2710
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 2711
    .local v1, "element":Ljava/lang/String;
    if-nez v1, :cond_4

    .line 2722
    :goto_1
    if-eqz v7, :cond_3

    .line 2723
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 2724
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 2725
    if-nez v1, :cond_5

    .line 2759
    .end local v1    # "element":Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_0

    .line 2760
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :goto_2
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 2714
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v7    # "inTouchSoundsGroup":Z
    .restart local v10    # "version":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string v11, "group"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2715
    const/4 v11, 0x0

    const-string v12, "name"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2716
    .local v8, "name":Ljava/lang/String;
    const-string v11, "touch_sounds"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2717
    const/4 v7, 0x1

    .line 2718
    goto :goto_1

    .line 2728
    .end local v8    # "name":Ljava/lang/String;
    :cond_5
    const-string v11, "asset"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2729
    const/4 v11, 0x0

    const-string v12, "id"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2730
    .local v6, "id":Ljava/lang/String;
    const/4 v11, 0x0

    const-string v12, "file"

    invoke-interface {v9, v11, v12}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 2734
    .local v3, "file":Ljava/lang/String;
    :try_start_2
    const-class v11, Landroid/media/AudioManager;

    invoke-virtual {v11, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 2735
    .local v2, "field":Ljava/lang/reflect/Field;
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    .line 2741
    .local v4, "fx":I
    :try_start_3
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v5

    .line 2742
    .local v5, "i":I
    const/4 v11, -0x1

    if-ne v5, v11, :cond_6

    .line 2743
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    .line 2744
    sget-object v11, Landroid/media/AudioService;->SOUND_EFFECT_FILES:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2746
    :cond_6
    iget-object v11, p0, Landroid/media/AudioService;->SOUND_EFFECT_FILES_MAP:[[I

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aput v5, v11, v12
    :try_end_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2752
    .end local v1    # "element":Ljava/lang/String;
    .end local v2    # "field":Ljava/lang/reflect/Field;
    .end local v3    # "file":Ljava/lang/String;
    .end local v4    # "fx":I
    .end local v5    # "i":I
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 2753
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_4
    const-string v11, "AudioService"

    const-string v12, "audio assets file not found"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2759
    if-eqz v9, :cond_0

    goto :goto_2

    .line 2736
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v1    # "element":Ljava/lang/String;
    .restart local v3    # "file":Ljava/lang/String;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "inTouchSoundsGroup":Z
    .restart local v10    # "version":Ljava/lang/String;
    :catch_1
    move-exception v0

    .line 2737
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5
    const-string v11, "AudioService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid touch sound ID: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 2754
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "element":Ljava/lang/String;
    .end local v3    # "file":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "inTouchSoundsGroup":Z
    .end local v10    # "version":Ljava/lang/String;
    :catch_2
    move-exception v0

    .line 2755
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_6
    const-string v11, "AudioService"

    const-string v12, "XML parser exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2759
    if-eqz v9, :cond_0

    goto/16 :goto_2

    .line 2756
    .end local v0    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 2757
    .local v0, "e":Ljava/io/IOException;
    const-string v11, "AudioService"

    const-string v12, "I/O exception reading touch sound assets"

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2759
    if-eqz v9, :cond_0

    goto/16 :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    if-eqz v9, :cond_7

    .line 2760
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2759
    :cond_7
    throw v11
.end method

.method private makeA2dpDeviceAvailable(Ljava/lang/String;)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/16 v3, 0x80

    const/4 v1, 0x0

    .line 5208
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v5, v0, v2

    .line 5209
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5211
    invoke-virtual {p0, v7}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5212
    invoke-static {v3, v7, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5216
    const-string v0, "A2dpSuspended=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5217
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5219
    return-void
.end method

.method private makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 5253
    const-string v1, "A2dpSuspended=true"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 5255
    iget-object v1, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5257
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, p1}, Landroid/media/AudioService$AudioHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5258
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const-wide/16 v2, 0x1f40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioService$AudioHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5260
    return-void
.end method

.method private makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x80

    const/4 v2, 0x0

    .line 5240
    iget-object v1, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1

    .line 5241
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 5242
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5243
    invoke-static {v3, v2, p1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 5246
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5247
    return-void

    .line 5242
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onBroadcastScoConnectionState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 3362
    iget v1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    if-eq p1, v1, :cond_0

    .line 3363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.ACTION_SCO_AUDIO_STATE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3364
    .local v0, "newIntent":Landroid/content/Intent;
    const-string v1, "android.media.extra.SCO_AUDIO_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3365
    const-string v1, "android.media.extra.SCO_AUDIO_PREVIOUS_STATE"

    iget v2, p0, Landroid/media/AudioService;->mScoConnectionState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3367
    invoke-direct {p0, v0}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 3368
    iput p1, p0, Landroid/media/AudioService;->mScoConnectionState:I

    .line 3370
    .end local v0    # "newIntent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private onCheckMusicActive()V
    .locals 11

    .prologue
    const v10, 0xea60

    .line 3481
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3482
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3483
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v7

    .line 3485
    .local v7, "device":I
    and-int/lit8 v0, v7, 0xc

    if-eqz v0, :cond_0

    .line 3486
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3493
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, v7}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v8

    .line 3494
    .local v8, "index":I
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-le v8, v0, :cond_0

    .line 3497
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    add-int/2addr v0, v10

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 3498
    iget v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    const v1, 0x44aa200

    if-le v0, v1, :cond_0

    .line 3499
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 3500
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 3505
    .end local v7    # "device":I
    .end local v8    # "index":I
    :cond_0
    monitor-exit v9

    .line 3506
    return-void

    .line 3505
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onConfigureSafeVolume(Z)V
    .locals 10
    .param p1, "force"    # Z

    .prologue
    const/4 v1, 0x2

    .line 3509
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 3510
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v7, v0, Landroid/content/res/Configuration;->mcc:I

    .line 3511
    .local v7, "mcc":I
    iget v0, p0, Landroid/media/AudioService;->mMcc:I

    if-ne v0, v7, :cond_0

    iget v0, p0, Landroid/media/AudioService;->mMcc:I

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 3522
    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService;->isEarProtectLimitOn()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xa

    :goto_0
    mul-int/lit8 v0, v0, 0xa

    iput v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 3524
    const/4 v8, 0x1

    .line 3531
    .local v8, "safeMediaVolumeEnabled":Z
    if-eqz v8, :cond_4

    .line 3532
    const/4 v3, 0x3

    .line 3536
    .local v3, "persistedState":I
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 3537
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 3538
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 3544
    :cond_1
    :goto_1
    iput v7, p0, Landroid/media/AudioService;->mMcc:I

    .line 3545
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x12

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3553
    .end local v3    # "persistedState":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :cond_2
    monitor-exit v9

    .line 3554
    return-void

    .line 3522
    :cond_3
    sget v0, Landroid/media/AudioManager;->EAR_PROTECT_LIMIT_INDEX_DISABLE:I

    goto :goto_0

    .line 3541
    .restart local v8    # "safeMediaVolumeEnabled":Z
    :cond_4
    const/4 v3, 0x1

    .line 3542
    .restart local v3    # "persistedState":I
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    goto :goto_1

    .line 3553
    .end local v3    # "persistedState":I
    .end local v7    # "mcc":I
    .end local v8    # "safeMediaVolumeEnabled":Z
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onSendBecomingNoisyIntent(I)V
    .locals 4
    .param p1, "device"    # I

    .prologue
    .line 5229
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY_SEC"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5230
    .local v1, "noisySecIntent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 5232
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5233
    .local v0, "noisyIntent":Landroid/content/Intent;
    and-int/lit16 v2, p1, 0x380

    if-eqz v2, :cond_0

    .line 5234
    const-string v2, "android.bluetooth.a2dp.extra.DISCONNECT_A2DP"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5235
    :cond_0
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 5236
    return-void
.end method

.method private onSetA2dpConnectionState(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 12
    .param p1, "btDevice"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v8, 0x1

    const/4 v1, 0x0

    .line 5275
    if-nez p1, :cond_0

    .line 5334
    :goto_0
    return-void

    .line 5278
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    .line 5279
    .local v7, "address":Ljava/lang/String;
    invoke-static {v7}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5280
    const-string v7, ""

    .line 5283
    :cond_1
    iget-object v10, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v10

    .line 5284
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5288
    .local v8, "isConnected":Z
    :goto_1
    if-eqz v8, :cond_7

    if-eq p2, v3, :cond_7

    .line 5289
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5290
    if-nez p2, :cond_2

    .line 5294
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableLater(Ljava/lang/String;)V

    .line 5300
    :cond_2
    :goto_2
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5301
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 5302
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 5303
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5306
    :cond_3
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5331
    :cond_4
    :goto_3
    :try_start_2
    invoke-direct {p0}, Landroid/media/AudioService;->checkAndSendEarCareInfo()V

    .line 5333
    monitor-exit v10

    goto :goto_0

    .end local v8    # "isConnected":Z
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_5
    move v8, v1

    .line 5284
    goto :goto_1

    .line 5298
    .restart local v8    # "isConnected":Z
    :cond_6
    :try_start_3
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 5306
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v0

    .line 5307
    :cond_7
    if-nez v8, :cond_4

    if-ne p2, v3, :cond_4

    .line 5308
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5310
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 5311
    iput-object v7, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    .line 5320
    :cond_8
    :goto_4
    invoke-direct {p0, v7}, Landroid/media/AudioService;->makeA2dpDeviceAvailable(Ljava/lang/String;)V

    .line 5321
    iget-object v11, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5322
    :try_start_6
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v9

    .line 5323
    .local v9, "name":Ljava/lang/String;
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-static {v0, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 5324
    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput-object v9, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    .line 5325
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5328
    :cond_9
    monitor-exit v11

    goto :goto_3

    .end local v9    # "name":Ljava/lang/String;
    :catchall_2
    move-exception v0

    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    throw v0

    .line 5315
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioService;->hasScheduledA2dpDockTimeout()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5316
    invoke-direct {p0}, Landroid/media/AudioService;->cancelA2dpDeviceTimeout()V

    .line 5317
    iget-object v0, p0, Landroid/media/AudioService;->mDockAddress:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/media/AudioService;->makeA2dpDeviceUnavailableNow(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4
.end method

.method private onSetStreamVolume(IIII)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "device"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1713
    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    invoke-direct {p0, v2, p2, p4, v0}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 1714
    and-int/lit16 v2, p3, 0x200

    if-nez v2, :cond_3

    .line 1716
    and-int/lit8 v2, p3, 0x2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    invoke-virtual {p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 1719
    :cond_0
    if-nez p2, :cond_4

    .line 1720
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 1723
    .local v0, "newRingerMode":I
    :cond_1
    if-ne v0, v1, :cond_2

    iget-object v1, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    aget v1, v1, p1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    const/16 v1, 0x100

    if-ne p3, v1, :cond_2

    .line 1726
    const/4 v0, 0x0

    .line 1732
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 1735
    .end local v0    # "newRingerMode":I
    :cond_3
    return-void

    .line 1730
    :cond_4
    const/4 v0, 0x2

    .restart local v0    # "newRingerMode":I
    goto :goto_0
.end method

.method private onSetWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 12
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 5587
    iget-object v11, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v11

    .line 5589
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v10

    .line 5590
    .local v10, "preVolIndex":I
    const-string v9, ""

    .line 5592
    .local v9, "params":Ljava/lang/String;
    if-nez p2, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    .line 5594
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5598
    :cond_1
    const/16 v0, 0x400

    if-ne p1, v0, :cond_4

    .line 5599
    invoke-direct {p0, p3}, Landroid/media/AudioService;->parseHDMIChannelWithName(Ljava/lang/String;)V

    .line 5600
    iget-object p3, p0, Landroid/media/AudioService;->mHDMIName:Ljava/lang/String;

    .line 5601
    const/4 v7, 0x0

    .line 5602
    .local v7, "format24":I
    const-string v0, "24"

    iget-object v1, p0, Landroid/media/AudioService;->mHDMIFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "40"

    iget-object v1, p0, Landroid/media/AudioService;->mHDMIFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5603
    :cond_2
    const/4 v7, 0x1

    .line 5604
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/media/AudioService;->mHDMIChannel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":48000:48000:0:0:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService;->mHDMISampleRate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/media/AudioService;->mHDMIFormat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 5614
    if-nez p2, :cond_4

    .line 5616
    const-string v0, "hdmi"

    iput-object v0, p0, Landroid/media/AudioService;->mHDMIName:Ljava/lang/String;

    .line 5617
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mHDMIChannel:Ljava/lang/String;

    .line 5620
    .end local v7    # "format24":I
    :cond_4
    const/16 v0, 0x1000

    if-eq p1, v0, :cond_5

    const v0, -0x7ffffc00

    if-ne p1, v0, :cond_6

    .line 5622
    :cond_5
    move-object v9, p3

    .line 5627
    :cond_6
    if-eqz p2, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8

    if-ne p1, v0, :cond_8

    .line 5638
    :cond_7
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    const/16 v1, 0xa

    if-le v0, v1, :cond_8

    .line 5639
    const/4 v0, 0x3

    const/16 v1, 0xa

    invoke-static {v0, v1, p1}, Landroid/media/AudioSystem;->setStreamVolumeIndex(III)I

    .line 5640
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    const/16 v1, 0x64

    const/4 v2, 0x3

    iget-object v3, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-direct {p0, v1, v2, v3}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p1, v2}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 5648
    :cond_8
    and-int/lit16 v0, p1, 0x6000

    if-eqz v0, :cond_e

    const/4 v8, 0x1

    .line 5653
    .local v8, "isUsb":Z
    :goto_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_f

    const/4 v0, 0x1

    :goto_1
    if-eqz v8, :cond_9

    move-object v9, p3

    .end local v9    # "params":Ljava/lang/String;
    :cond_9
    invoke-direct {p0, v0, p1, v9}, Landroid/media/AudioService;->handleDeviceConnection(ZILjava/lang/String;)Z

    .line 5655
    if-eqz p2, :cond_c

    .line 5656
    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    const/16 v0, 0x8

    if-ne p1, v0, :cond_b

    .line 5659
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioService;->increaseEARCount()V

    .line 5661
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->setBluetoothA2dpOnInt(Z)V

    .line 5663
    :cond_b
    and-int/lit8 v0, p1, 0xc

    if-eqz v0, :cond_c

    .line 5664
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5674
    :cond_c
    const/4 v0, 0x3

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    const/4 v2, 0x3

    invoke-direct {p0, v2}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    const/16 v2, 0x80

    invoke-direct {p0, v0, v10, v1, v2}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    .line 5678
    if-nez v8, :cond_d

    .line 5679
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioService;->sendDeviceConnectionIntent(IILjava/lang/String;)V

    .line 5681
    :cond_d
    monitor-exit v11

    .line 5682
    return-void

    .line 5648
    .end local v8    # "isUsb":Z
    .restart local v9    # "params":Ljava/lang/String;
    :cond_e
    const/4 v8, 0x0

    goto :goto_0

    .line 5653
    .restart local v8    # "isUsb":Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_1

    .line 5681
    .end local v8    # "isUsb":Z
    .end local v9    # "params":Ljava/lang/String;
    .end local v10    # "preVolIndex":I
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private parseHDMIChannelWithName(Ljava/lang/String;)V
    .locals 4
    .param p1, "chPlusedName"    # Ljava/lang/String;

    .prologue
    .line 5702
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ";"

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5703
    .local v0, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5704
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioService;->mHDMIName:Ljava/lang/String;

    .line 5705
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5706
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioService;->mHDMIChannel:Ljava/lang/String;

    .line 5708
    :cond_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5709
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioService;->mHDMIFormat:Ljava/lang/String;

    .line 5711
    :cond_1
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5712
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioService;->mHDMISampleRate:Ljava/lang/String;

    .line 5715
    :cond_2
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseHDMIChannelWithName mHDMIName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mHDMIName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHDMIChannel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mHDMIChannel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHDMIFormat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mHDMIFormat:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mHDMISampleRate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/media/AudioService;->mHDMISampleRate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5716
    return-void
.end method

.method private performSoftReset()V
    .locals 17

    .prologue
    .line 1282
    const-string v14, "AudioService"

    const-string v15, "Perform soft reset start"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/media/AudioService;->mDualMicMode:I

    .line 1286
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v15, "call_noise_reduction"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioService;->mDualMicMode:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1287
    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/AudioService;->mDualMicMode:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/media/AudioService;->setDualMicMode(I)V

    .line 1290
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/media/AudioService;->mNaturalSound:I

    .line 1291
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v15, "call_natural_sound"

    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioService;->mNaturalSound:I

    move/from16 v16, v0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1292
    move-object/from16 v0, p0

    iget v14, v0, Landroid/media/AudioService;->mNaturalSound:I

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Landroid/media/AudioService;->setNaturalSoundMode(I)V

    .line 1295
    const/4 v14, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/media/AudioService;->setRingerMode(I)V

    .line 1297
    const/4 v1, 0x0

    .line 1298
    .local v1, "deletedRows":I
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v7

    .line 1300
    .local v7, "numStreamTypes":I
    const/4 v12, 0x0

    .local v12, "streamType":I
    :goto_0
    if-ge v12, v7, :cond_4

    .line 1301
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v11, v14, v12

    .line 1303
    .local v11, "streamState":Landroid/media/AudioService$VolumeStreamState;
    const-string v9, "name LIKE ?"

    .line 1304
    .local v9, "selectionClause":Ljava/lang/String;
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mVolumeIndexSettingName:Ljava/lang/String;
    invoke-static {v11}, Landroid/media/AudioService$VolumeStreamState;->access$600(Landroid/media/AudioService$VolumeStreamState;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "%"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1305
    .local v6, "makeString":Ljava/lang/String;
    const/4 v14, 0x1

    new-array v8, v14, [Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v6, v8, v14

    .line 1307
    .local v8, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v15, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15, v9, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 1310
    const-string v14, "AudioService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "performSoftReset volume index settings name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " deleted Rows "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v14, v14, v12

    const/4 v15, 0x3

    if-ne v14, v15, :cond_0

    const/4 v14, 0x3

    if-eq v12, v14, :cond_0

    .line 1300
    :goto_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 1317
    :cond_0
    monitor-enter v11

    .line 1318
    :try_start_0
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v11}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 1319
    .local v10, "set":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 1320
    .local v4, "i":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1321
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1322
    .local v3, "entry":Ljava/util/Map$Entry;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1323
    .local v2, "device":I
    sget-object v14, Landroid/media/AudioManager;->DEFAULT_STREAM_VOLUME:[I

    aget v5, v14, v12

    .line 1324
    .local v5, "index":I
    mul-int/lit8 v14, v5, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    invoke-virtual {v11, v2}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 1329
    add-int/lit8 v13, v7, -0x1

    .local v13, "streamType2":I
    :goto_2
    if-ltz v13, :cond_1

    .line 1330
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v11}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v14

    if-eq v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v14, v14, v13

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mStreamType:I
    invoke-static {v11}, Landroid/media/AudioService$VolumeStreamState;->access$800(Landroid/media/AudioService$VolumeStreamState;)I

    move-result v15

    if-ne v14, v15, :cond_2

    .line 1332
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v14, v14, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/media/AudioService$VolumeStreamState;->applyDeviceVolume(I)V

    .line 1329
    :cond_2
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 1336
    .end local v2    # "device":I
    .end local v3    # "entry":Ljava/util/Map$Entry;
    .end local v5    # "index":I
    .end local v13    # "streamType2":I
    :cond_3
    monitor-exit v11

    goto :goto_1

    .end local v4    # "i":Ljava/util/Iterator;
    .end local v10    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v14

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 1350
    .end local v6    # "makeString":Ljava/lang/String;
    .end local v8    # "selectionArgs":[Ljava/lang/String;
    .end local v9    # "selectionClause":Ljava/lang/String;
    .end local v11    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    :cond_4
    const-string v14, "AudioService"

    const-string v15, "Perform soft reset end"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    return-void
.end method

.method private queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V
    .locals 9
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "msg"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 3937
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3940
    .local v7, "ident":J
    iget-object v0, p0, Landroid/media/AudioService;->mAudioEventWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3941
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3942
    const/4 v2, 0x2

    move-object v0, p1

    move v1, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3943
    return-void
.end method

.method private static readAndSetLowRamDevice()V
    .locals 4

    .prologue
    .line 6685
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    invoke-static {v1}, Landroid/media/AudioSystem;->setLowRamDevice(Z)I

    move-result v0

    .line 6686
    .local v0, "status":I
    if-eqz v0, :cond_0

    .line 6687
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioFlinger informed of device\'s low RAM attribute; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6689
    :cond_0
    return-void
.end method

.method private readAudioSettings(Z)V
    .locals 9
    .param p1, "userSwitch"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 2868
    invoke-direct {p0}, Landroid/media/AudioService;->readPersistedSettings()V

    .line 2870
    invoke-direct {p0}, Landroid/media/AudioService;->setAllSoundMute()V

    .line 2873
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v1

    .line 2874
    .local v1, "numStreamTypes":I
    const/4 v4, 0x0

    .local v4, "streamType":I
    :goto_0
    if-ge v4, v1, :cond_4

    .line 2875
    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v5, v4

    .line 2877
    .local v3, "streamState":Landroid/media/AudioService$VolumeStreamState;
    if-eqz p1, :cond_0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v5, v5, v4

    if-ne v5, v8, :cond_0

    .line 2874
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2881
    :cond_0
    monitor-enter v3

    .line 2882
    :try_start_0
    invoke-virtual {v3}, Landroid/media/AudioService$VolumeStreamState;->readSettings()V

    .line 2885
    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v4}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-direct {p0, v4}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    iget-boolean v5, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_3

    .line 2887
    :cond_2
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2888
    .local v2, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v2, :cond_3

    .line 2889
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x1

    # setter for: Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mMuteCount:I
    invoke-static {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->access$2002(Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;I)I

    .line 2890
    # getter for: Landroid/media/AudioService$VolumeStreamState;->mDeathHandlers:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/AudioService$VolumeStreamState;->access$1900(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/media/AudioService$VolumeStreamState$VolumeDeathHandler;->mute(Z)V

    .line 2888
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2893
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_3
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2898
    .end local v3    # "streamState":Landroid/media/AudioService$VolumeStreamState;
    :cond_4
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v5

    invoke-direct {p0, v5, v7}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 2900
    invoke-direct {p0}, Landroid/media/AudioService;->checkAllAliasStreamVolumes()V

    .line 2902
    iget-object v6, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v6

    .line 2903
    :try_start_1
    iget-object v5, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 2904
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 2906
    :cond_5
    monitor-exit v6

    .line 2907
    return-void

    .line 2906
    :catchall_1
    move-exception v5

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5
.end method

.method private readDockAudioSettings(Landroid/content/ContentResolver;)V
    .locals 7
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    const/16 v1, 0x8

    const/4 v0, 0x1

    const/4 v6, 0x0

    .line 1025
    const-string v2, "dock_audio_media_enabled"

    invoke-static {p1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    .line 1028
    iget-boolean v0, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v0, :cond_1

    .line 1029
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    .line 1034
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    const/4 v3, 0x3

    iget-boolean v4, p0, Landroid/media/AudioService;->mDockAudioMediaEnabled:Z

    if-eqz v4, :cond_2

    move v4, v1

    :goto_2
    const/4 v5, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1042
    return-void

    :cond_0
    move v0, v6

    .line 1025
    goto :goto_0

    .line 1031
    :cond_1
    iget v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/media/AudioService;->mBecomingNoisyIntentDevices:I

    goto :goto_1

    :cond_2
    move v4, v6

    .line 1034
    goto :goto_2
.end method

.method private readPersistedSettings()V
    .locals 12

    .prologue
    const/4 v11, -0x2

    const/4 v7, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1045
    iget-object v0, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    .line 1047
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v6, "mode_ringer"

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 1050
    .local v3, "ringerModeFromSettings":I
    move v2, v3

    .line 1053
    .local v2, "ringerMode":I
    invoke-static {v2}, Landroid/media/AudioManager;->isValidRingerMode(I)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1054
    const/4 v2, 0x2

    .line 1056
    :cond_0
    if-ne v2, v4, :cond_1

    iget-boolean v6, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v6, :cond_1

    .line 1057
    const/4 v2, 0x0

    .line 1059
    :cond_1
    if-eq v2, v3, :cond_2

    .line 1060
    const-string v6, "mode_ringer"

    invoke-static {v0, v6, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1062
    :cond_2
    iget-boolean v6, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v6, :cond_3

    .line 1063
    const/4 v2, 0x2

    .line 1065
    :cond_3
    iget-object v8, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1066
    :try_start_0
    iput v2, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 1071
    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-boolean v6, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v6, :cond_6

    move v6, v7

    :goto_0
    invoke-static {v9, v10, v6}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v6

    iput v6, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1075
    iget v9, p0, Landroid/media/AudioService;->mVibrateSetting:I

    const/4 v10, 0x0

    iget-boolean v6, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-eqz v6, :cond_7

    move v6, v7

    :goto_1
    invoke-static {v9, v10, v6}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v6

    iput v6, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 1081
    const-string v6, "mono_audio_db"

    const/4 v9, 0x0

    invoke-static {v0, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/media/AudioService;->mMonoMode:I

    .line 1082
    const-string v6, "all_sound_off"

    const/4 v9, 0x0

    invoke-static {v0, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/media/AudioService;->mAllSoundMute:I

    .line 1084
    const-string v6, "call_noise_reduction"

    const/4 v9, 0x1

    invoke-static {v0, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/media/AudioService;->mDualMicMode:I

    .line 1085
    const-string v6, "call_natural_sound"

    const/4 v9, 0x0

    invoke-static {v0, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Landroid/media/AudioService;->mNaturalSound:I

    .line 1086
    iget v6, p0, Landroid/media/AudioService;->mNaturalSound:I

    invoke-direct {p0, v6}, Landroid/media/AudioService;->setNaturalSoundMode(I)V

    .line 1088
    invoke-virtual {p0}, Landroid/media/AudioService;->updateRingerModeAffectedStreams()Z

    .line 1089
    invoke-direct {p0, v0}, Landroid/media/AudioService;->readDockAudioSettings(Landroid/content/ContentResolver;)V

    .line 1090
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1092
    const-string v6, "mute_streams_affected"

    const/16 v8, 0xe

    invoke-static {v0, v6, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iput v6, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    .line 1101
    iget-boolean v6, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v6, :cond_4

    .line 1102
    iget-object v6, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    const/4 v8, 0x5

    aput v8, v6, v7

    .line 1111
    :cond_4
    const-string v6, "volume_master_mute"

    invoke-static {v0, v6, v5, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_8

    move v1, v4

    .line 1113
    .local v1, "masterMute":Z
    :goto_2
    iget-boolean v6, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v6, :cond_5

    .line 1114
    const/4 v1, 0x0

    .line 1115
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 1117
    :cond_5
    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 1118
    invoke-direct {p0, v1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 1121
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sound_balance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "audio_balance"

    const/16 v8, 0x32

    invoke-static {v0, v7, v8, v11}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1136
    invoke-direct {p0, v2}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    .line 1139
    invoke-direct {p0, v5}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 1140
    invoke-direct {p0, v4}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    .line 1143
    iget-object v4, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v4}, Landroid/media/MediaFocusControl;->restoreMediaButtonReceiver()V

    .line 1144
    return-void

    .end local v1    # "masterMute":Z
    :cond_6
    move v6, v5

    .line 1071
    goto/16 :goto_0

    :cond_7
    move v6, v5

    .line 1075
    goto/16 :goto_1

    .line 1090
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    :cond_8
    move v1, v5

    .line 1111
    goto :goto_2
.end method

.method private removeScoDevice(ILjava/lang/String;)V
    .locals 3
    .param p1, "device"    # I
    .param p2, "address"    # Ljava/lang/String;

    .prologue
    .line 5365
    iget-object v2, p0, Landroid/media/AudioService;->mScoDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 5366
    .local v0, "iter":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5367
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioService$ScoDevice;

    .line 5368
    .local v1, "sco":Landroid/media/AudioService$ScoDevice;
    iget v2, v1, Landroid/media/AudioService$ScoDevice;->device:I

    if-ne v2, p1, :cond_0

    iget-object v2, v1, Landroid/media/AudioService$ScoDevice;->address:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5370
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 5374
    .end local v1    # "sco":Landroid/media/AudioService$ScoDevice;
    :cond_1
    return-void
.end method

.method private rescaleIndex(III)I
    .locals 2
    .param p1, "index"    # I
    .param p2, "srcStream"    # I
    .param p3, "dstStream"    # I

    .prologue
    .line 1147
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    mul-int/2addr v0, p1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    div-int/2addr v0, v1

    return v0
.end method

.method private resetBluetoothSco()V
    .locals 3

    .prologue
    .line 3349
    iget-object v1, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3350
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v2}, Landroid/media/AudioService;->clearAllScoClients(IZ)V

    .line 3351
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mScoAudioState:I

    .line 3352
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->broadcastScoConnectionState(I)V

    .line 3353
    monitor-exit v1

    .line 3354
    return-void

    .line 3353
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private restoreMasterVolume()V
    .locals 5

    .prologue
    .line 2341
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_1

    .line 2342
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    .line 2352
    :cond_0
    :goto_0
    return-void

    .line 2345
    :cond_1
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseMasterVolume:Z

    if-eqz v1, :cond_0

    .line 2346
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "volume_master"

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 2348
    .local v0, "volume":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 2349
    invoke-static {v0}, Landroid/media/AudioSystem;->setMasterVolume(F)I

    goto :goto_0
.end method

.method private sendDeviceConnectionIntent(IILjava/lang/String;)V
    .locals 15
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 5518
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 5520
    .local v11, "intent":Landroid/content/Intent;
    const-string v1, "state"

    move/from16 v0, p2

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5521
    const-string v1, "name"

    move-object/from16 v0, p3

    invoke-virtual {v11, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5522
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v11, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5524
    const/4 v8, 0x0

    .line 5526
    .local v8, "connType":I
    const/4 v1, 0x4

    move/from16 v0, p1

    if-ne v0, v1, :cond_4

    .line 5527
    const/4 v8, 0x1

    .line 5528
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5529
    const-string v1, "microphone"

    const/4 v2, 0x1

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5545
    :cond_0
    :goto_0
    iget-object v14, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v14

    .line 5546
    if-eqz v8, :cond_1

    .line 5547
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v13, v1, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 5548
    .local v13, "newConn":I
    if-eqz p2, :cond_8

    .line 5549
    or-int/2addr v13, v8

    .line 5553
    :goto_1
    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v1, v1, Landroid/media/AudioRoutesInfo;->mMainType:I

    if-eq v13, v1, :cond_1

    .line 5554
    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iput v13, v1, Landroid/media/AudioRoutesInfo;->mMainType:I

    .line 5555
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5559
    .end local v13    # "newConn":I
    :cond_1
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5561
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 5563
    .local v9, "ident":J
    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_1
    invoke-static {v11, v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 5564
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sent broadcast connType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5566
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5569
    const/4 v1, 0x4

    move/from16 v0, p1

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    move/from16 v0, p1

    if-ne v0, v1, :cond_3

    .line 5573
    :cond_2
    new-instance v12, Landroid/content/Intent;

    const-string v1, "com.sec.android.contextaware.HEADSET_PLUG"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5574
    .local v12, "intentForCA":Landroid/content/Intent;
    invoke-virtual {v12, v11}, Landroid/content/Intent;->putExtras(Landroid/content/Intent;)Landroid/content/Intent;

    .line 5575
    const/16 v1, 0x20

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5576
    const-string v1, "AudioService"

    const-string v2, "send broadcast HEADSET_PLUG to CA "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5577
    invoke-direct {p0, v12}, Landroid/media/AudioService;->sendStickyBroadcastToAll(Landroid/content/Intent;)V

    .line 5581
    .end local v12    # "intentForCA":Landroid/content/Intent;
    :cond_3
    invoke-direct {p0}, Landroid/media/AudioService;->checkAndSendEarCareInfo()V

    .line 5583
    return-void

    .line 5530
    .end local v9    # "ident":J
    :cond_4
    const/16 v1, 0x8

    move/from16 v0, p1

    if-ne v0, v1, :cond_5

    .line 5531
    const/4 v8, 0x2

    .line 5532
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5533
    const-string v1, "microphone"

    const/4 v2, 0x0

    invoke-virtual {v11, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto/16 :goto_0

    .line 5534
    :cond_5
    const/16 v1, 0x800

    move/from16 v0, p1

    if-ne v0, v1, :cond_6

    .line 5535
    const/4 v8, 0x4

    .line 5536
    const-string v1, "android.intent.action.ANALOG_AUDIO_DOCK_PLUG"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 5537
    :cond_6
    const/16 v1, 0x1000

    move/from16 v0, p1

    if-ne v0, v1, :cond_7

    .line 5538
    const/4 v8, 0x4

    .line 5539
    const-string v1, "android.intent.action.DIGITAL_AUDIO_DOCK_PLUG"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 5540
    :cond_7
    const/16 v1, 0x400

    move/from16 v0, p1

    if-ne v0, v1, :cond_0

    .line 5541
    const/16 v8, 0x8

    .line 5542
    const-string v1, "android.intent.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 5551
    .restart local v13    # "newConn":I
    :cond_8
    xor-int/lit8 v1, v8, -0x1

    and-int/2addr v13, v1

    goto/16 :goto_1

    .line 5559
    .end local v13    # "newConn":I
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 5566
    .restart local v9    # "ident":J
    :catchall_1
    move-exception v1

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method private sendMasterMuteUpdate(ZI)V
    .locals 1
    .param p1, "muted"    # Z
    .param p2, "flags"    # I

    .prologue
    .line 2002
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p2}, Landroid/view/VolumePanel;->postMasterMuteChanged(I)V

    .line 2003
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastMasterMuteStatus(Z)V

    .line 2004
    return-void
.end method

.method private sendMasterVolumeUpdate(III)V
    .locals 2
    .param p1, "flags"    # I
    .param p2, "oldVolume"    # I
    .param p3, "newVolume"    # I

    .prologue
    .line 1992
    iget-object v1, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v1, p1}, Landroid/view/VolumePanel;->postMasterVolumeChanged(I)V

    .line 1994
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.MASTER_VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1995
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_PREV_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1996
    const-string v1, "android.media.EXTRA_MASTER_VOLUME_VALUE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1997
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1998
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 3
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 3948
    if-nez p2, :cond_1

    .line 3949
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3954
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v1, p6

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3955
    :goto_0
    return-void

    .line 3950
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method private sendStickyBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1946
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1948
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1950
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1952
    return-void

    .line 1950
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private sendStopScreenRecording()V
    .locals 3

    .prologue
    .line 1182
    const-string v1, "AudioService"

    const-string v2, "sendStopScreenRecording() - send intent android.intent.action.TRYTOGETMIC"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TRYTOGETMIC"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1184
    .local v0, "broadcast":Landroid/content/Intent;
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/media/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1185
    return-void
.end method

.method private sendVolumeUpdate(IIII)V
    .locals 6
    .param p1, "streamType"    # I
    .param p2, "oldIndex"    # I
    .param p3, "index"    # I
    .param p4, "flags"    # I

    .prologue
    const/4 v5, 0x2

    .line 1956
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-nez v2, :cond_0

    if-ne p1, v5, :cond_0

    .line 1957
    const/4 p1, 0x5

    .line 1960
    :cond_0
    const/16 v2, 0xd

    if-ne p1, v2, :cond_1

    .line 1961
    const/4 p1, 0x3

    .line 1963
    :cond_1
    if-ne v5, p1, :cond_2

    if-nez p4, :cond_2

    if-lez p3, :cond_2

    invoke-static {}, Landroid/media/AudioService;->getFactoryMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1965
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enforce to FLAG_PLAY_SOUND volume index = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    or-int/lit8 p4, p4, 0x4

    .line 1968
    :cond_2
    const-string v2, "persist.sys.setupwizard"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1969
    .local v1, "setupwizard":Ljava/lang/String;
    iget-boolean v2, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    if-eq v5, p1, :cond_3

    const/4 v2, 0x6

    if-eq v2, p1, :cond_3

    iget-object v2, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    const-string v2, "FINISH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/media/AudioService;->isCoverOpen()Z

    move-result v2

    if-eqz v2, :cond_3

    and-int/lit16 v2, p4, 0x800

    if-nez v2, :cond_3

    .line 1971
    and-int/lit8 p4, p4, -0x2

    .line 1973
    :cond_3
    iget-boolean v2, p0, Landroid/media/AudioService;->mStatusbarHasVolumeSlider:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Landroid/media/AudioService;->mStatusbarExpanded:Z

    if-eqz v2, :cond_4

    and-int/lit16 v2, p4, 0x800

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2}, Landroid/view/VolumePanel;->isVolumePanelShowing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Landroid/media/AudioService;->isCoverOpen()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1974
    and-int/lit8 p4, p4, -0x2

    .line 1977
    :cond_4
    iget-object v2, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v2, p1, p4}, Landroid/view/VolumePanel;->postVolumeChanged(II)V

    .line 1979
    and-int/lit8 v2, p4, 0x20

    if-nez v2, :cond_5

    .line 1980
    add-int/lit8 v2, p2, 0x5

    div-int/lit8 p2, v2, 0xa

    .line 1981
    add-int/lit8 v2, p3, 0x5

    div-int/lit8 p3, v2, 0xa

    .line 1982
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1983
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1984
    const-string v2, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1985
    const-string v2, "android.media.EXTRA_PREV_VOLUME_STREAM_VALUE"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1986
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 1988
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    return-void
.end method

.method private setAllSoundMute()V
    .locals 2

    .prologue
    .line 1175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audioParam;allsoundmute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/media/AudioService;->mAllSoundMute:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1176
    const-string v0, "persist.audio.allsoundmute"

    iget v1, p0, Landroid/media/AudioService;->mAllSoundMute:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    return-void
.end method

.method private setDualMicMode(I)V
    .locals 1
    .param p1, "dualmicMode"    # I

    .prologue
    .line 1157
    if-lez p1, :cond_0

    .line 1158
    const-string v0, "dualmic_enabled=true"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1163
    :goto_0
    return-void

    .line 1160
    :cond_0
    const-string v0, "dualmic_enabled=false"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setMonoMode(I)V
    .locals 2
    .param p1, "monoMode"    # I

    .prologue
    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "toMono="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1153
    return-void
.end method

.method private setNaturalSoundMode(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 1166
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNaturalSoundMode() - mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    if-lez p1, :cond_0

    .line 1168
    const-string v0, "bwe=on"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1172
    :goto_0
    return-void

    .line 1170
    :cond_0
    const-string v0, "bwe=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setOrientationForAudioSystem()V
    .locals 2

    .prologue
    .line 6413
    iget v0, p0, Landroid/media/AudioService;->mDeviceOrientation:I

    packed-switch v0, :pswitch_data_0

    .line 6431
    const-string v0, "AudioService"

    const-string v1, "Unknown orientation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6433
    :goto_0
    return-void

    .line 6416
    :pswitch_0
    const-string v0, "orientation=landscape"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6420
    :pswitch_1
    const-string v0, "orientation=portrait"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6424
    :pswitch_2
    const-string v0, "orientation=square"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6428
    :pswitch_3
    const-string v0, "orientation=undefined"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6413
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private setRingerModeInt(IZ)V
    .locals 12
    .param p1, "ringerMode"    # I
    .param p2, "persist"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2272
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2273
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mRingerMode:I

    .line 2274
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2277
    const-string v0, "persist.audio.ringermode"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2283
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v9

    .line 2284
    .local v9, "numStreamTypes":I
    add-int/lit8 v11, v9, -0x1

    .local v11, "streamType":I
    :goto_0
    if-ltz v11, :cond_6

    .line 2285
    invoke-direct {p0, v11}, Landroid/media/AudioService;->isStreamMutedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2286
    invoke-virtual {p0, v11}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    if-ne p1, v4, :cond_4

    .line 2307
    :cond_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v0, v0, v11

    if-ne v0, v4, :cond_3

    .line 2309
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v0, v11

    monitor-enter v1

    .line 2310
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    # getter for: Landroid/media/AudioService$VolumeStreamState;->mIndex:Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$700(Landroid/media/AudioService$VolumeStreamState;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 2311
    .local v10, "set":Ljava/util/Set;
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 2312
    .local v8, "i":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2313
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 2314
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 2315
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2318
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "i":Ljava/util/Iterator;
    .end local v10    # "set":Ljava/util/Set;
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 2274
    .end local v9    # "numStreamTypes":I
    .end local v11    # "streamType":I
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 2318
    .restart local v8    # "i":Ljava/util/Iterator;
    .restart local v9    # "numStreamTypes":I
    .restart local v10    # "set":Ljava/util/Set;
    .restart local v11    # "streamType":I
    :cond_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2321
    .end local v8    # "i":Ljava/util/Iterator;
    .end local v10    # "set":Ljava/util/Set;
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 2322
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v3, v11

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    .line 2284
    :cond_4
    :goto_2
    add-int/lit8 v11, v11, -0x1

    goto :goto_0

    .line 2325
    :cond_5
    invoke-virtual {p0, v11}, Landroid/media/AudioService;->isStreamAffectedByRingerMode(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eq p1, v4, :cond_4

    .line 2327
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v11

    invoke-virtual {v0, v5, v3}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    .line 2328
    iget v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    shl-int v1, v3, v11

    or-int/2addr v0, v1

    iput v0, p0, Landroid/media/AudioService;->mRingerModeMutedStreams:I

    goto :goto_2

    .line 2334
    :cond_6
    if-eqz p2, :cond_7

    .line 2335
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x3

    const/16 v6, 0x1f4

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2338
    :cond_7
    return-void
.end method

.method private setRotationForAudioSystem()V
    .locals 2

    .prologue
    .line 6436
    iget v0, p0, Landroid/media/AudioService;->mDeviceRotation:I

    packed-switch v0, :pswitch_data_0

    .line 6450
    const-string v0, "AudioService"

    const-string v1, "Unknown device rotation"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6452
    :goto_0
    return-void

    .line 6438
    :pswitch_0
    const-string v0, "rotation=0"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6441
    :pswitch_1
    const-string v0, "rotation=90"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6444
    :pswitch_2
    const-string v0, "rotation=180"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6447
    :pswitch_3
    const-string v0, "rotation=270"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    goto :goto_0

    .line 6436
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setSafeMediaVolumeEnabled(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    .line 6523
    iget-object v7, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v7

    .line 6524
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 6526
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 6527
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 6528
    invoke-direct {p0}, Landroid/media/AudioService;->enforceSafeMediaVolume()V

    .line 6541
    :cond_0
    :goto_0
    monitor-exit v7

    .line 6542
    return-void

    .line 6529
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 6530
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    .line 6531
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioService;->mMusicActiveMs:I

    .line 6532
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xea60

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 6541
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private setStreamVolumeInt(IIIZ)V
    .locals 7
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "device"    # I
    .param p4, "force"    # Z

    .prologue
    const/4 v1, 0x0

    .line 2028
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v0, p1

    .line 2030
    .local v5, "streamState":Landroid/media/AudioService$VolumeStreamState;
    invoke-virtual {v5, p2, p3}, Landroid/media/AudioService$VolumeStreamState;->setIndex(II)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_1

    .line 2033
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v2, 0x2

    move v3, p3

    move v4, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2041
    :cond_1
    return-void
.end method

.method private startCPUBoost()V
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Landroid/media/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Landroid/media/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1399
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 1400
    iget-object v0, p0, Landroid/media/AudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->acquire()V

    .line 1401
    :cond_1
    return-void
.end method

.method private stopCPUBoost()V
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Landroid/media/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Landroid/media/AudioService;->mCpuHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1406
    :cond_0
    iget-object v0, p0, Landroid/media/AudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    if-eqz v0, :cond_1

    .line 1407
    iget-object v0, p0, Landroid/media/AudioService;->mCpuCoreNumHelper:Landroid/os/DVFSHelper;

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    .line 1408
    :cond_1
    return-void
.end method

.method private updateStreamVolumeAlias(Z)V
    .locals 8
    .param p1, "updateVolumes"    # Z

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 987
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 989
    const/4 v7, 0x2

    .line 1003
    .local v7, "dtmfStreamAlias":I
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1004
    const/4 v7, 0x0

    .line 1005
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 1009
    :goto_1
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aput v7, v0, v5

    .line 1010
    if-eqz p1, :cond_0

    .line 1011
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, v5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v7

    invoke-virtual {v0, v1}, Landroid/media/AudioService$VolumeStreamState;->setAllIndexes(Landroid/media/AudioService$VolumeStreamState;)V

    .line 1013
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    invoke-direct {p0, v0, v3}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 1014
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xa

    const/4 v2, 0x2

    iget-object v4, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v5, v4, v5

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 1021
    :cond_0
    return-void

    .line 991
    .end local v7    # "dtmfStreamAlias":I
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->STREAM_VOLUME_ALIAS_NON_VOICE:[I

    iput-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    .line 999
    const/4 v7, 0x3

    .restart local v7    # "dtmfStreamAlias":I
    goto :goto_0

    .line 1007
    :cond_2
    iget v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    goto :goto_1
.end method

.method private waitForAudioHandlerCreation()V
    .locals 3

    .prologue
    .line 922
    monitor-enter p0

    .line 923
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 926
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 927
    :catch_0
    move-exception v0

    .line 928
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "AudioService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 931
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 932
    return-void
.end method


# virtual methods
.method public abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I
    .locals 1
    .param p1, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p2, "clientId"    # Ljava/lang/String;

    .prologue
    .line 6314
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->abandonAudioFocus(Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public adjustLocalOrRemoteStreamVolume(IILjava/lang/String;)V
    .locals 4
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    const/4 v2, 0x3

    const/4 v1, 0x0

    .line 1446
    invoke-static {v2, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1447
    invoke-virtual {p0, v2, p2, v1, p3}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    .line 1455
    :cond_0
    :goto_0
    return-void

    .line 1448
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, v2}, Landroid/media/MediaFocusControl;->checkUpdateRemoteStateIfActive(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1449
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, v2, p2, v1}, Landroid/media/MediaFocusControl;->adjustRemoteVolume(III)V

    goto :goto_0

    .line 1451
    :cond_2
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1452
    invoke-virtual {p0, v3, p2, v1, p3}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    goto :goto_0
.end method

.method public adjustMasterVolume(IILjava/lang/String;)V
    .locals 7
    .param p1, "steps"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1679
    iget-boolean v5, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v5, :cond_0

    .line 1694
    :goto_0
    return-void

    .line 1682
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidSteps(I)V

    .line 1683
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1684
    .local v4, "volume":I
    const/4 v0, 0x0

    .line 1685
    .local v0, "delta":I
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 1686
    .local v3, "numSteps":I
    if-lez p1, :cond_1

    const/4 v1, 0x1

    .line 1687
    .local v1, "direction":I
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 1688
    invoke-direct {p0, v1, v4}, Landroid/media/AudioService;->findVolumeDelta(II)I

    move-result v0

    .line 1689
    add-int/2addr v4, v0

    .line 1687
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1686
    .end local v1    # "direction":I
    .end local v2    # "i":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 1693
    .restart local v1    # "direction":I
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {p0, v4, p2, p3}, Landroid/media/AudioService;->setMasterVolume(IILjava/lang/String;)V

    goto :goto_0
.end method

.method public adjustStreamVolume(IIILjava/lang/String;)V
    .locals 18
    .param p1, "streamType"    # I
    .param p2, "direction"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1522
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v3, :cond_1

    .line 1675
    :cond_0
    :goto_0
    return-void

    .line 1528
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mAllSoundMute:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 1529
    new-instance v13, Landroid/content/Intent;

    const-string v3, "android.intent.action.SOUND_OFF_TOAST"

    invoke-direct {v13, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1530
    .local v13, "intent":Landroid/content/Intent;
    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v3}, Landroid/media/AudioService;->sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1534
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_2
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/media/AudioService;->ensureValidDirection(I)V

    .line 1535
    invoke-direct/range {p0 .. p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1540
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v17, v3, p1

    .line 1541
    .local v17, "streamTypeAlias":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v8, v3, v17

    .line 1543
    .local v8, "streamState":Landroid/media/AudioService$VolumeStreamState;
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v6

    .line 1545
    .local v6, "device":I
    const/16 v3, 0xa

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1546
    const/4 v6, 0x2

    .line 1549
    :cond_3
    invoke-virtual {v8, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v11

    .line 1550
    .local v11, "aliasIndex":I
    const/4 v10, 0x1

    .line 1572
    .local v10, "adjustVolume":Z
    and-int/lit16 v3, v6, 0x380

    if-nez v3, :cond_4

    and-int/lit8 v3, p3, 0x40

    if-nez v3, :cond_0

    .line 1577
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    sget-object v4, Landroid/media/AudioService;->STEAM_VOLUME_OPS:[I

    aget v4, v4, v17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p4

    invoke-virtual {v3, v4, v5, v0}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1583
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v4

    .line 1584
    const/4 v3, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1585
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1587
    and-int/lit8 p3, p3, -0x21

    .line 1588
    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_e

    and-int/lit8 v3, v6, 0x0

    if-eqz v3, :cond_e

    .line 1590
    or-int/lit8 p3, p3, 0x20

    .line 1595
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_d

    and-int/lit8 v3, v6, 0xc

    if-eqz v3, :cond_d

    .line 1597
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    move/from16 v16, v0

    .line 1601
    .local v16, "step":I
    :goto_1
    if-eqz v11, :cond_5

    .line 1602
    move/from16 v11, v16

    .line 1611
    :cond_5
    :goto_2
    and-int/lit8 v3, p3, 0x2

    if-nez v3, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getMasterStreamType()I

    move-result v3

    move/from16 v0, v17

    if-ne v0, v3, :cond_8

    .line 1613
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v15

    .line 1615
    .local v15, "ringerMode":I
    const/4 v3, 0x1

    if-ne v15, v3, :cond_7

    .line 1616
    and-int/lit8 p3, p3, -0x11

    .line 1620
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, v16

    invoke-direct {v0, v11, v1, v2}, Landroid/media/AudioService;->checkForRingerModeChange(III)Z

    move-result v10

    .line 1623
    .end local v15    # "ringerMode":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v14

    .line 1625
    .local v14, "oldIndex":I
    if-eqz v10, :cond_c

    if-eqz p2, :cond_c

    .line 1628
    const/4 v3, 0x3

    move/from16 v0, v17

    if-ne v0, v3, :cond_a

    and-int/lit16 v3, v6, 0x380

    if-eqz v3, :cond_a

    and-int/lit8 v3, p3, 0x40

    if-nez v3, :cond_a

    .line 1631
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1632
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v3, :cond_9

    .line 1633
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothA2dp;->adjustAvrcpAbsoluteVolume(I)V

    .line 1635
    :cond_9
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1638
    :cond_a
    const/4 v3, 0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_f

    add-int v3, v11, v16

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v3, v6}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v3

    if-nez v3, :cond_f

    .line 1640
    const-string v3, "AudioService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adjustStreamVolume() safe volume index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    invoke-virtual/range {p0 .. p0}, Landroid/media/AudioService;->isCoverOpen()Z

    move-result v3

    if-nez v3, :cond_b

    .line 1643
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->mIsCoverSafetyVolume:Z

    .line 1651
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/view/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 1673
    :cond_c
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v3, v3, p1

    invoke-virtual {v3, v6}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v12

    .line 1674
    .local v12, "index":I
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p3

    invoke-direct {v0, v1, v14, v12, v2}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 1585
    .end local v12    # "index":I
    .end local v14    # "oldIndex":I
    .end local v16    # "step":I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1599
    :cond_d
    invoke-virtual {v8}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v16

    .restart local v16    # "step":I
    goto/16 :goto_1

    .line 1606
    .end local v16    # "step":I
    :cond_e
    const/16 v3, 0xa

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v3, v1, v2}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result v16

    .restart local v16    # "step":I
    goto/16 :goto_2

    .line 1635
    .restart local v14    # "oldIndex":I
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 1652
    :cond_f
    mul-int v3, p2, v16

    invoke-virtual {v8, v3, v6}, Landroid/media/AudioService$VolumeStreamState;->adjustIndex(II)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1656
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/media/AudioService;->mIsCoverSafetyVolume:Z

    if-eqz v3, :cond_10

    const/4 v3, -0x1

    move/from16 v0, p2

    if-ne v0, v3, :cond_10

    .line 1657
    move-object/from16 v0, p0

    iget v3, v0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    if-ne v14, v3, :cond_10

    .line 1658
    const-string v3, "AudioService"

    const-string v4, "adjustStreamVolume() Remove the safeVolumeWarning pop-up on S cover."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v3}, Landroid/view/VolumePanel;->postDismissSafeVolumeWarning()V

    .line 1660
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/media/AudioService;->mIsCoverSafetyVolume:Z

    .line 1664
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_3
.end method

.method public adjustSuggestedStreamVolume(IIILjava/lang/String;)V
    .locals 5
    .param p1, "direction"    # I
    .param p2, "suggestedStreamType"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/16 v3, -0xc8

    .line 1462
    iget v1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1463
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 1486
    .local v0, "streamType":I
    :goto_0
    if-eq v0, v3, :cond_1

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/AudioService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1490
    :cond_0
    and-int/lit8 p3, p3, -0x5

    .line 1493
    :cond_1
    if-eq v0, v3, :cond_2

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    if-ne v1, v4, :cond_2

    invoke-virtual {p0}, Landroid/media/AudioService;->getMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 1497
    and-int/lit8 p3, p3, -0x5

    .line 1501
    :cond_2
    if-ne v0, v3, :cond_4

    .line 1503
    and-int/lit8 p3, p3, -0x25

    .line 1505
    iget-object v1, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1, p3}, Landroid/media/MediaFocusControl;->adjustRemoteVolume(III)V

    .line 1517
    :goto_1
    return-void

    .line 1465
    .end local v0    # "streamType":I
    :cond_3
    invoke-virtual {p0, p2}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v0

    .restart local v0    # "streamType":I
    goto :goto_0

    .line 1508
    :cond_4
    invoke-virtual {p0}, Landroid/media/AudioService;->isCoverOpen()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v1, v1, v0

    if-ne v1, v4, :cond_5

    .line 1509
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1510
    const-string v1, "AudioService"

    const-string v2, "Volume change disabled : cover closed."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1515
    :cond_5
    invoke-virtual {p0, v0, p1, p3, p4}, Landroid/media/AudioService;->adjustStreamVolume(IIILjava/lang/String;)V

    goto :goto_1
.end method

.method public adjustVolume(IILjava/lang/String;)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 1437
    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, v0, p2, p3}, Landroid/media/AudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;)V

    .line 1439
    return-void
.end method

.method public avrcpSupportsAbsoluteVolume(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "support"    # Z

    .prologue
    .line 5338
    iget-object v7, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5339
    :try_start_0
    iput-boolean p2, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    .line 5340
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5343
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/16 v3, 0x80

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 5346
    monitor-exit v7

    .line 5347
    return-void

    .line 5346
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method checkAudioSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 3958
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.MODIFY_AUDIO_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 3960
    const/4 v1, 0x1

    .line 3966
    :goto_0
    return v1

    .line 3962
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Audio Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3965
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "AudioService"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3966
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearAllScoClients(IZ)V
    .locals 6
    .param p1, "exceptPid"    # I
    .param p2, "stopSco"    # Z

    .prologue
    .line 3291
    iget-object v5, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    monitor-enter v5

    .line 3292
    const/4 v2, 0x0

    .line 3293
    .local v2, "savedClient":Landroid/media/AudioService$ScoClient;
    :try_start_0
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 3294
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 3295
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioService$ScoClient;

    .line 3296
    .local v0, "cl":Landroid/media/AudioService$ScoClient;
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->getPid()I

    move-result v4

    if-eq v4, p1, :cond_0

    .line 3297
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->clearCount(Z)V

    .line 3294
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3299
    :cond_0
    move-object v2, v0

    goto :goto_1

    .line 3302
    .end local v0    # "cl":Landroid/media/AudioService$ScoClient;
    :cond_1
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 3303
    if-eqz v2, :cond_2

    .line 3304
    iget-object v4, p0, Landroid/media/AudioService;->mScoClients:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3306
    :cond_2
    monitor-exit v5

    .line 3307
    return-void

    .line 3306
    .end local v1    # "i":I
    .end local v3    # "size":I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public disableSafeMediaVolume()V
    .locals 6

    .prologue
    .line 6607
    iget-object v2, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v2

    .line 6608
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, v1}, Landroid/media/AudioService;->setSafeMediaVolumeEnabled(Z)V

    .line 6609
    iget-object v1, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    if-eqz v1, :cond_0

    .line 6610
    iget-object v1, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v1, v1, Landroid/media/AudioService$StreamVolumeCommand;->mStreamType:I

    iget-object v3, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v3, v3, Landroid/media/AudioService$StreamVolumeCommand;->mIndex:I

    iget-object v4, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v4, v4, Landroid/media/AudioService$StreamVolumeCommand;->mFlags:I

    iget-object v5, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v5, v5, Landroid/media/AudioService$StreamVolumeCommand;->mDevice:I

    invoke-direct {p0, v1, v3, v4, v5}, Landroid/media/AudioService;->onSetStreamVolume(IIII)V

    .line 6614
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6615
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    iget-object v3, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v3, v3, Landroid/media/AudioService$StreamVolumeCommand;->mStreamType:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6616
    const-string v1, "android.media.EXTRA_VOLUME_STREAM_VALUE"

    iget-object v3, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    iget v3, v3, Landroid/media/AudioService$StreamVolumeCommand;->mIndex:I

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 6617
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->sendBroadcastToAll(Landroid/content/Intent;)V

    .line 6618
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 6620
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    monitor-exit v2

    .line 6621
    return-void

    .line 6620
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dismissVolumePanel()V
    .locals 1

    .prologue
    .line 6693
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0}, Landroid/view/VolumePanel;->forceDismiss()V

    .line 6694
    return-void
.end method

.method public dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 6297
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 6298
    return-void
.end method

.method public dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V
    .locals 1
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 6301
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->dispatchMediaKeyEventUnderWakelock(Landroid/view/KeyEvent;)V

    .line 6302
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 6671
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    const-string v2, "AudioService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6673
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p2}, Landroid/media/MediaFocusControl;->dump(Ljava/io/PrintWriter;)V

    .line 6674
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpStreamStates(Ljava/io/PrintWriter;)V

    .line 6675
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpRingerMode(Ljava/io/PrintWriter;)V

    .line 6676
    invoke-direct {p0, p2}, Landroid/media/AudioService;->dumpScoClients(Ljava/io/PrintWriter;)V

    .line 6677
    const-string v0, "\nAudio routes:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6678
    const-string v0, "  mMainType=0x"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget v0, v0, Landroid/media/AudioRoutesInfo;->mMainType:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6679
    const-string v0, "  mBluetoothName="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    iget-object v0, v0, Landroid/media/AudioRoutesInfo;->mBluetoothName:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6680
    return-void
.end method

.method public forceVolumeControlStream(ILandroid/os/IBinder;)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 1842
    iget-object v1, p0, Landroid/media/AudioService;->mForceControlStreamLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1843
    :try_start_0
    iput p1, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    .line 1844
    iget v0, p0, Landroid/media/AudioService;->mVolumeControlStream:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 1845
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    if-eqz v0, :cond_0

    .line 1846
    iget-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    invoke-virtual {v0}, Landroid/media/AudioService$ForceControlStreamClient;->release()V

    .line 1847
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    .line 1852
    :cond_0
    :goto_0
    monitor-exit v1

    .line 1853
    return-void

    .line 1850
    :cond_1
    new-instance v0, Landroid/media/AudioService$ForceControlStreamClient;

    invoke-direct {v0, p0, p2}, Landroid/media/AudioService$ForceControlStreamClient;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;)V

    iput-object v0, p0, Landroid/media/AudioService;->mForceControlStreamClient:Landroid/media/AudioService$ForceControlStreamClient;

    goto :goto_0

    .line 1852
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getActiveStreamType(I)I
    .locals 6
    .param p1, "suggestedStreamType"    # I

    .prologue
    const/high16 v5, -0x80000000

    const/16 v3, 0xd

    const/16 v2, 0xa

    const/4 v1, 0x3

    const/4 v0, 0x0

    .line 3795
    iget-boolean v4, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v4, :cond_a

    .line 3796
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 3797
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_1

    .line 3812
    const/4 p1, 0x6

    .line 3906
    .end local p1    # "suggestedStreamType":I
    :cond_0
    :goto_0
    return p1

    .restart local p1    # "suggestedStreamType":I
    :cond_1
    move p1, v0

    .line 3816
    goto :goto_0

    .line 3818
    :cond_2
    if-ne p1, v5, :cond_9

    .line 3819
    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move p1, v1

    .line 3822
    goto :goto_0

    .line 3823
    :cond_3
    iget-object v4, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v4, v1}, Landroid/media/MediaFocusControl;->checkUpdateRemoteStateIfActive(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 3826
    const/16 p1, -0xc8

    goto :goto_0

    .line 3828
    :cond_4
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_5

    move p1, v2

    .line 3830
    goto :goto_0

    .line 3831
    :cond_5
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_6

    move p1, v3

    .line 3832
    goto :goto_0

    .line 3833
    :cond_6
    const/16 v2, 0x9

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3834
    const-string v0, "AudioService"

    const-string v2, "getActiveStreamType STREAM_TTS: Forcing STREAM_MUSIC.."

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 3835
    goto :goto_0

    .line 3841
    :cond_7
    invoke-static {v0, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v1

    if-eqz v1, :cond_8

    move p1, v0

    .line 3842
    goto :goto_0

    .line 3844
    :cond_8
    const/4 p1, 0x2

    goto :goto_0

    .line 3846
    :cond_9
    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move p1, v1

    .line 3849
    goto :goto_0

    .line 3856
    :cond_a
    invoke-direct {p0}, Landroid/media/AudioService;->isInCommunication()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3857
    invoke-static {v0}, Landroid/media/AudioSystem;->getForceUse(I)I

    move-result v2

    if-ne v2, v1, :cond_b

    .line 3860
    const/4 p1, 0x6

    goto :goto_0

    :cond_b
    move p1, v0

    .line 3863
    goto :goto_0

    .line 3867
    :cond_c
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v4

    if-eqz v4, :cond_d

    move p1, v2

    .line 3868
    goto :goto_0

    .line 3870
    :cond_d
    invoke-static {v3, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_e

    move p1, v3

    .line 3871
    goto :goto_0

    .line 3873
    :cond_e
    invoke-static {v0, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_f

    move p1, v0

    .line 3874
    goto :goto_0

    .line 3877
    :cond_f
    iget-boolean v2, p0, Landroid/media/AudioService;->mIsPlaySilentModeOff:Z

    if-nez v2, :cond_11

    const/4 v2, 0x5

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-nez v2, :cond_10

    const/4 v2, 0x2

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 3882
    :cond_10
    const/4 p1, 0x5

    goto/16 :goto_0

    .line 3883
    :cond_11
    if-eq p1, v5, :cond_12

    invoke-static {v1, v0}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3887
    :cond_12
    invoke-direct {p0, v0}, Landroid/media/AudioService;->isAfMusicActiveRecently(I)Z

    move-result v0

    if-eqz v0, :cond_13

    move p1, v1

    .line 3889
    goto/16 :goto_0

    .line 3890
    :cond_13
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, v1}, Landroid/media/MediaFocusControl;->checkUpdateRemoteStateIfActive(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 3893
    const/16 p1, -0xc8

    goto/16 :goto_0

    :cond_14
    move p1, v1

    .line 3900
    goto/16 :goto_0
.end method

.method public getCurrentAudioFocus()I
    .locals 1

    .prologue
    .line 6322
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getCurrentAudioFocus()I

    move-result v0

    return v0
.end method

.method public getLastAudibleMasterVolume()I
    .locals 2

    .prologue
    .line 2193
    invoke-static {}, Landroid/media/AudioSystem;->getMasterVolume()F

    move-result v0

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getLastAudibleStreamVolume(I)I
    .locals 2
    .param p1, "streamType"    # I

    .prologue
    .line 2186
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 2187
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2188
    .local v0, "device":I
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5

    div-int/lit8 v1, v1, 0xa

    return v1
.end method

.method public getMasterMaxVolume()I
    .locals 1

    .prologue
    .line 2181
    const/16 v0, 0x64

    return v0
.end method

.method public getMasterStreamType()I
    .locals 1

    .prologue
    .line 2198
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v0, :cond_0

    .line 2199
    const/4 v0, 0x2

    .line 2208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public getMasterVolume()I
    .locals 1

    .prologue
    .line 2135
    invoke-virtual {p0}, Landroid/media/AudioService;->isMasterMute()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2136
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioService;->getLastAudibleMasterVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 2658
    iget v0, p0, Landroid/media/AudioService;->mMode:I

    return v0
.end method

.method public getRemoteStreamMaxVolume()I
    .locals 1

    .prologue
    .line 6281
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getRemoteStreamMaxVolume()I

    move-result v0

    return v0
.end method

.method public getRemoteStreamVolume()I
    .locals 1

    .prologue
    .line 6277
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->getRemoteStreamVolume()I

    move-result v0

    return v0
.end method

.method public getRingerMode()I
    .locals 2

    .prologue
    .line 2216
    iget-object v1, p0, Landroid/media/AudioService;->mSettingsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2217
    :try_start_0
    iget v0, p0, Landroid/media/AudioService;->mRingerMode:I

    monitor-exit v1

    return v0

    .line 2218
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRingtonePlayer()Landroid/media/IRingtonePlayer;
    .locals 1

    .prologue
    .line 6473
    iget-object v0, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    return-object v0
.end method

.method public getStreamMaxVolume(I)I
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 2176
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 2177
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0xa

    return v0
.end method

.method public getStreamVolume(I)I
    .locals 5
    .param p1, "streamType"    # I

    .prologue
    .line 2112
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 2113
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v0

    .line 2114
    .local v0, "device":I
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2, v0}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v1

    .line 2115
    .local v1, "index":I
    const-string v2, "AudioService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStreamVolume "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v2}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2119
    const/4 v1, 0x0

    .line 2123
    :cond_0
    const/16 v2, 0xa

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2124
    const/4 v0, 0x2

    .line 2127
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v2, v2, p1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    and-int/lit8 v2, v0, 0x0

    if-eqz v2, :cond_2

    .line 2129
    iget-object v2, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result v1

    .line 2131
    :cond_2
    add-int/lit8 v2, v1, 0x5

    div-int/lit8 v2, v2, 0xa

    return v2
.end method

.method public getVibrateSetting(I)I
    .locals 2
    .param p1, "vibrateType"    # I

    .prologue
    .line 2377
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2378
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    mul-int/lit8 v1, p1, 0x2

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x3

    goto :goto_0
.end method

.method public isBluetoothA2dpOn()Z
    .locals 2

    .prologue
    .line 3044
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3045
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    monitor-exit v1

    return v0

    .line 3046
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBluetoothScoOn()Z
    .locals 2

    .prologue
    .line 3025
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCameraSoundForced()Z
    .locals 2

    .prologue
    .line 6636
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v1

    .line 6637
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 6638
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCoverOpen()Z
    .locals 3

    .prologue
    .line 2442
    const/4 v1, 0x0

    .line 2444
    .local v1, "isCoverOpen":Z
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v2, :cond_0

    .line 2445
    iget-object v2, p0, Landroid/media/AudioService;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v2}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2450
    :cond_0
    :goto_0
    return v1

    .line 2447
    :catch_0
    move-exception v0

    .line 2448
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public isEarProtectLimitOn()Z
    .locals 1

    .prologue
    .line 2975
    const/4 v0, 0x1

    .line 2978
    .local v0, "safeMediaVolumeEnabled":Z
    return v0
.end method

.method public isFMPlayerActive()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2962
    :try_start_0
    const-string v4, "persist.audio.isfmactive"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2963
    .local v1, "fmPlayer":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v4, v2, :cond_0

    .line 2969
    .end local v1    # "fmPlayer":Ljava/lang/String;
    :goto_0
    return v2

    .restart local v1    # "fmPlayer":Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 2966
    goto :goto_0

    .line 2968
    .end local v1    # "fmPlayer":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    move v2, v3

    .line 2969
    goto :goto_0
.end method

.method public isLocalOrRemoteMusicActive()Z
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1416
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return v0

    .line 1421
    :cond_1
    iget-object v2, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v2, v3}, Landroid/media/MediaFocusControl;->checkUpdateRemoteStateIfActive(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1426
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 1432
    goto :goto_0
.end method

.method public isMasterMute()Z
    .locals 1

    .prologue
    .line 2092
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    return v0
.end method

.method public isMediaSilentMode()Z
    .locals 3

    .prologue
    .line 2431
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaSilentMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService;->mMediaSilentMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2432
    iget-boolean v0, p0, Landroid/media/AudioService;->mMediaSilentMode:Z

    return v0
.end method

.method public isRadioSpeakerOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2951
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    if-ne v1, v0, :cond_0

    .line 2954
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSpeakerphoneOn()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 2931
    iget v1, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByMute(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3727
    iget v1, p0, Landroid/media/AudioService;->mMuteAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamAffectedByRingerMode(I)Z
    .locals 3
    .param p1, "streamType"    # I

    .prologue
    const/4 v0, 0x1

    .line 3663
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStreamMute(I)Z
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 2072
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    # invokes: Landroid/media/AudioService$VolumeStreamState;->isMuted()Z
    invoke-static {v0}, Landroid/media/AudioService$VolumeStreamState;->access$300(Landroid/media/AudioService$VolumeStreamState;)Z

    move-result v0

    return v0
.end method

.method public ismVoiceCapable()Z
    .locals 1

    .prologue
    .line 2437
    iget-boolean v0, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    return v0
.end method

.method public loadSoundEffects()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 2781
    const/4 v7, 0x3

    .line 2782
    .local v7, "attempts":I
    new-instance v5, Landroid/media/AudioService$LoadSoundEffectReply;

    invoke-direct {v5, p0}, Landroid/media/AudioService$LoadSoundEffectReply;-><init>(Landroid/media/AudioService;)V

    .line 2784
    .local v5, "reply":Landroid/media/AudioService$LoadSoundEffectReply;
    monitor-enter v5

    .line 2785
    :try_start_0
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x7

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v8, v7

    .line 2786
    .end local v7    # "attempts":I
    .local v8, "attempts":I
    :goto_0
    :try_start_1
    iget v0, v5, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v10, :cond_0

    add-int/lit8 v7, v8, -0x1

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    if-lez v8, :cond_1

    .line 2788
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-virtual {v5, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v8, v7

    .line 2791
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    .line 2789
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :catch_0
    move-exception v9

    .line 2790
    .local v9, "e":Ljava/lang/InterruptedException;
    :try_start_3
    const-string v0, "AudioService"

    const-string v1, "loadSoundEffects Interrupted while waiting sound pool loaded."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v8, v7

    .line 2791
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    goto :goto_0

    .end local v9    # "e":Ljava/lang/InterruptedException;
    :cond_0
    move v7, v8

    .line 2793
    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    :cond_1
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2794
    iget v0, v5, Landroid/media/AudioService$LoadSoundEffectReply;->mStatus:I

    if-nez v0, :cond_2

    move v0, v10

    :goto_1
    return v0

    .line 2793
    :catchall_0
    move-exception v0

    :goto_2
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :cond_2
    move v0, v11

    .line 2794
    goto :goto_1

    .line 2793
    .end local v7    # "attempts":I
    .restart local v8    # "attempts":I
    :catchall_1
    move-exception v0

    move v7, v8

    .end local v8    # "attempts":I
    .restart local v7    # "attempts":I
    goto :goto_2
.end method

.method public playSoundEffect(I)V
    .locals 1
    .param p1, "effectType"    # I

    .prologue
    .line 2767
    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioService;->playSoundEffectVolume(IF)V

    .line 2768
    return-void
.end method

.method public playSoundEffectVolume(IF)V
    .locals 7
    .param p1, "effectType"    # I
    .param p2, "volume"    # F

    .prologue
    .line 2772
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/4 v1, 0x5

    const/4 v2, 0x2

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v3, p2

    float-to-int v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v3, p1

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2774
    return-void
.end method

.method public registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "c"    # Landroid/content/ComponentName;

    .prologue
    .line 6234
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 6235
    return-void
.end method

.method public registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;
    .param p2, "c"    # Landroid/content/ComponentName;
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    .line 6242
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->registerMediaButtonIntent(Landroid/app/PendingIntent;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 6243
    return-void
.end method

.method public registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I
    .locals 1
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;
    .param p3, "callingPckg"    # Ljava/lang/String;

    .prologue
    .line 6251
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->registerRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 6217
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->registerRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;II)Z

    move-result v0

    return v0
.end method

.method public registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I
    .param p4, "listenerComp"    # Landroid/content/ComponentName;

    .prologue
    .line 6213
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/media/MediaFocusControl;->registerRemoteController(Landroid/media/IRemoteControlDisplay;IILandroid/content/ComponentName;)Z

    move-result v0

    return v0
.end method

.method public registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V
    .locals 1
    .param p1, "rccId"    # I
    .param p2, "rvo"    # Landroid/media/IRemoteVolumeObserver;

    .prologue
    .line 6273
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->registerRemoteVolumeObserverForRcc(ILandroid/media/IRemoteVolumeObserver;)V

    .line 6274
    return-void
.end method

.method public reloadAudioSettings()V
    .locals 1

    .prologue
    .line 2863
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/AudioService;->readAudioSettings(Z)V

    .line 2864
    return-void
.end method

.method public remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 6225
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->remoteControlDisplayUsesBitmapSize(Landroid/media/IRemoteControlDisplay;II)V

    .line 6226
    return-void
.end method

.method public remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 6230
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->remoteControlDisplayWantsPlaybackPositionSync(Landroid/media/IRemoteControlDisplay;Z)V

    .line 6231
    return-void
.end method

.method public requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "mainStreamType"    # I
    .param p2, "durationHint"    # I
    .param p3, "cb"    # Landroid/os/IBinder;
    .param p4, "fd"    # Landroid/media/IAudioFocusDispatcher;
    .param p5, "clientId"    # Ljava/lang/String;
    .param p6, "callingPackageName"    # Ljava/lang/String;

    .prologue
    .line 6309
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/MediaFocusControl;->requestAudioFocus(IILandroid/os/IBinder;Landroid/media/IAudioFocusDispatcher;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected sendBroadcastToAll(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1927
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1929
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1931
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1933
    return-void

    .line 1931
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method protected sendBroadcastToUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "handle"    # Landroid/os/UserHandle;

    .prologue
    .line 1936
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1938
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1, p2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1940
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1942
    return-void

    .line 1940
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setBluetoothA2dpDeviceConnectionState(Landroid/bluetooth/BluetoothDevice;I)I
    .locals 8
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .prologue
    const/4 v0, 0x0

    .line 4001
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 4002
    const/16 v1, 0x80

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :try_start_0
    invoke-direct {p0, v1, v0}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 4004
    .local v6, "delay":I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x65

    const/4 v4, 0x0

    move-object v0, p0

    move v3, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 4010
    monitor-exit v7

    .line 4011
    return v6

    .line 4010
    .end local v6    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOn(Z)V
    .locals 8
    .param p1, "on"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3030
    iget-object v7, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v7

    .line 3031
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 3032
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xd

    const/4 v2, 0x2

    const/4 v3, 0x1

    iget-boolean v5, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v5, :cond_0

    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3036
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3038
    invoke-direct {p0}, Landroid/media/AudioService;->checkAndSendEarCareInfo()V

    .line 3040
    return-void

    .line 3032
    :cond_0
    const/16 v4, 0xa

    goto :goto_0

    .line 3036
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setBluetoothA2dpOnInt(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 6457
    iget-object v1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabledLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6458
    :try_start_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    .line 6459
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/media/AudioService$AudioHandler;->removeMessages(I)V

    .line 6460
    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/media/AudioService;->mBluetoothA2dpEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 6462
    monitor-exit v1

    .line 6463
    return-void

    .line 6460
    :cond_0
    const/16 v0, 0xa

    goto :goto_0

    .line 6462
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBluetoothScoOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2984
    const-string v0, "setBluetoothScoOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3021
    :goto_0
    return-void

    .line 2989
    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 2990
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    new-array v4, v5, [I

    fill-array-data v4, :array_0

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v11

    .line 2994
    .local v11, "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2995
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v4, p0, Landroid/media/AudioService;->mBluetoothHeadsetDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothHeadset;->getAudioState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v12

    .line 2996
    .local v12, "scoState":I
    const/16 v0, 0xb

    if-eq v12, v0, :cond_1

    const/16 v0, 0xc

    if-eq v12, v0, :cond_1

    .line 2998
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBluetoothScoOn() wrong sco state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mScoAudioState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/AudioService;->mScoAudioState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3004
    .end local v11    # "deviceList":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v12    # "scoState":I
    :cond_1
    if-eqz p1, :cond_3

    .line 3005
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothScoOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    aput v4, v0, v3

    .line 3006
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothScoOndump:[I

    aput v3, v0, v6

    .line 3011
    :goto_1
    if-eqz p1, :cond_4

    .line 3012
    iput v5, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 3017
    :cond_2
    :goto_2
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v5, 0x0

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 3019
    iget-object v4, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v8, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v9, 0x0

    move v5, v1

    move v6, v2

    move v7, v2

    move v10, v3

    invoke-static/range {v4 .. v10}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 3008
    :cond_3
    iget-object v0, p0, Landroid/media/AudioService;->mBluetoothScoOndump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    aput v4, v0, v6

    goto :goto_1

    .line 3013
    :cond_4
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v5, :cond_2

    .line 3014
    iput v3, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_2

    .line 2990
    nop

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
    .end array-data
.end method

.method public setMasterMute(ZILandroid/os/IBinder;)V
    .locals 7
    .param p1, "state"    # Z
    .param p2, "flags"    # I
    .param p3, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x0

    .line 2077
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 2088
    :cond_0
    :goto_0
    return-void

    .line 2081
    :cond_1
    invoke-static {}, Landroid/media/AudioSystem;->getMasterMute()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2082
    invoke-static {p1}, Landroid/media/AudioSystem;->setMasterMute(Z)I

    .line 2084
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0xb

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    :goto_1
    const/4 v5, 0x0

    const/16 v6, 0x1f4

    move v4, v2

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2086
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->sendMasterMuteUpdate(ZI)V

    goto :goto_0

    :cond_2
    move v3, v2

    .line 2084
    goto :goto_1
.end method

.method public setMasterVolume(IILjava/lang/String;)V
    .locals 3
    .param p1, "volume"    # I
    .param p2, "flags"    # I
    .param p3, "callingPackage"    # Ljava/lang/String;

    .prologue
    .line 2140
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 2155
    :cond_0
    :goto_0
    return-void

    .line 2144
    :cond_1
    iget-object v0, p0, Landroid/media/AudioService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x21

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 2149
    if-gez p1, :cond_3

    .line 2150
    const/4 p1, 0x0

    .line 2154
    :cond_2
    :goto_1
    int-to-float v0, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0, p2}, Landroid/media/AudioService;->doSetMasterVolume(FI)V

    goto :goto_0

    .line 2151
    :cond_3
    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    .line 2152
    const/16 p1, 0x64

    goto :goto_1
.end method

.method public setMediaSilentMode(Z)V
    .locals 7
    .param p1, "state"    # Z

    .prologue
    const/16 v6, 0x80

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 2412
    iget-boolean v1, p0, Landroid/media/AudioService;->mMediaSilentMode:Z

    if-eq p1, v1, :cond_1

    .line 2413
    invoke-virtual {p0, v4}, Landroid/media/AudioService;->getStreamVolume(I)I

    move-result v0

    .line 2414
    .local v0, "musicLev":I
    const-string v1, "AudioService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMediaSilentMode musicLev"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2416
    if-eqz p1, :cond_2

    .line 2417
    if-eqz v0, :cond_0

    .line 2418
    iput v0, p0, Landroid/media/AudioService;->mMediaLastAudibleIndex:I

    .line 2419
    iget-object v1, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v5, v6, v1}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 2425
    :cond_0
    :goto_0
    iput-boolean p1, p0, Landroid/media/AudioService;->mMediaSilentMode:Z

    .line 2427
    .end local v0    # "musicLev":I
    :cond_1
    return-void

    .line 2422
    .restart local v0    # "musicLev":I
    :cond_2
    iget v1, p0, Landroid/media/AudioService;->mMediaLastAudibleIndex:I

    iget-object v2, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v1, v6, v2}, Landroid/media/AudioService;->setStreamVolume(IIILjava/lang/String;)V

    .line 2423
    iput v5, p0, Landroid/media/AudioService;->mMediaLastAudibleIndex:I

    goto :goto_0
.end method

.method public setMode(ILandroid/os/IBinder;)V
    .locals 4
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, -0x1

    .line 2504
    const-string v1, "setMode()"

    invoke-virtual {p0, v1}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2524
    :cond_0
    :goto_0
    return-void

    .line 2508
    :cond_1
    if-lt p1, v3, :cond_0

    const/4 v1, 0x5

    if-ge p1, v1, :cond_0

    .line 2512
    const/4 v0, 0x0

    .line 2513
    .local v0, "newModeOwnerPid":I
    iget-object v2, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    .line 2514
    if-ne p1, v3, :cond_2

    .line 2515
    :try_start_0
    iget p1, p0, Landroid/media/AudioService;->mMode:I

    .line 2517
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Landroid/media/AudioService;->setModeInt(ILandroid/os/IBinder;I)I

    move-result v0

    .line 2518
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2521
    if-eqz v0, :cond_0

    .line 2522
    invoke-direct {p0, v0}, Landroid/media/AudioService;->disconnectBluetoothSco(I)V

    goto :goto_0

    .line 2518
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method setModeInt(ILandroid/os/IBinder;I)I
    .locals 15
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I

    .prologue
    .line 2530
    const/4 v8, 0x0

    .line 2531
    .local v8, "newModeOwnerPid":I
    if-nez p2, :cond_0

    .line 2532
    const-string v12, "AudioService"

    const-string v13, "setModeInt() called with null binder"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v9, v8

    .line 2653
    .end local v8    # "newModeOwnerPid":I
    .local v9, "newModeOwnerPid":I
    :goto_0
    return v9

    .line 2536
    .end local v9    # "newModeOwnerPid":I
    .restart local v8    # "newModeOwnerPid":I
    :cond_0
    const/4 v5, 0x0

    .line 2537
    .local v5, "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 2538
    .local v7, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2539
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioService$SetModeDeathHandler;

    .line 2540
    .local v4, "h":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v4}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v12

    move/from16 v0, p3

    if-ne v12, v0, :cond_1

    .line 2541
    move-object v5, v4

    .line 2543
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    .line 2545
    :try_start_0
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v12

    const/4 v13, 0x0

    invoke-interface {v12, v5, v13}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2552
    .end local v4    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_2
    :goto_1
    const/4 v10, 0x0

    .line 2554
    .local v10, "status":I
    :cond_3
    if-nez p1, :cond_9

    .line 2556
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_4

    .line 2557
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    check-cast v5, Landroid/media/AudioService$SetModeDeathHandler;

    .line 2558
    .restart local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 2559
    invoke-virtual {v5}, Landroid/media/AudioService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 2579
    :cond_4
    :goto_2
    iget v12, p0, Landroid/media/AudioService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v12, :cond_d

    .line 2580
    invoke-static/range {p1 .. p1}, Landroid/media/AudioSystem;->setPhoneState(I)I

    move-result v10

    .line 2581
    if-nez v10, :cond_b

    .line 2616
    move/from16 v0, p1

    iput v0, p0, Landroid/media/AudioService;->mMode:I

    .line 2632
    :goto_3
    if-eqz v10, :cond_5

    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 2634
    :cond_5
    if-nez v10, :cond_8

    .line 2635
    if-eqz p1, :cond_6

    .line 2636
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_e

    .line 2637
    const-string v12, "AudioService"

    const-string v13, "setMode() different from MODE_NORMAL with empty mode client stack"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_6
    :goto_4
    const/high16 v12, -0x80000000

    invoke-virtual {p0, v12}, Landroid/media/AudioService;->getActiveStreamType(I)I

    move-result v11

    .line 2643
    .local v11, "streamType":I
    const/16 v12, -0xc8

    if-ne v11, v12, :cond_7

    .line 2645
    const/4 v11, 0x3

    .line 2647
    :cond_7
    invoke-direct {p0, v11}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v2

    .line 2648
    .local v2, "device":I
    iget-object v12, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    iget-object v13, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v13, v13, v11

    aget-object v12, v12, v13

    invoke-virtual {v12, v2}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 2649
    .local v6, "index":I
    iget-object v12, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v12, v12, v11

    const/4 v13, 0x1

    invoke-direct {p0, v12, v6, v2, v13}, Landroid/media/AudioService;->setStreamVolumeInt(IIIZ)V

    .line 2651
    const/4 v12, 0x1

    invoke-direct {p0, v12}, Landroid/media/AudioService;->updateStreamVolumeAlias(Z)V

    .end local v2    # "device":I
    .end local v6    # "index":I
    .end local v11    # "streamType":I
    :cond_8
    move v9, v8

    .line 2653
    .end local v8    # "newModeOwnerPid":I
    .restart local v9    # "newModeOwnerPid":I
    goto/16 :goto_0

    .line 2546
    .end local v9    # "newModeOwnerPid":I
    .end local v10    # "status":I
    .restart local v4    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v8    # "newModeOwnerPid":I
    :catch_0
    move-exception v3

    .line 2547
    .local v3, "e":Ljava/util/NoSuchElementException;
    const-string v12, "AudioService"

    const-string v13, "SetModeDeathHandler not registered to binder"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2562
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    .end local v4    # "h":Landroid/media/AudioService$SetModeDeathHandler;
    .restart local v10    # "status":I
    :cond_9
    if-nez v5, :cond_a

    .line 2563
    new-instance v5, Landroid/media/AudioService$SetModeDeathHandler;

    .end local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-direct {v5, p0, v0, v1}, Landroid/media/AudioService$SetModeDeathHandler;-><init>(Landroid/media/AudioService;Landroid/os/IBinder;I)V

    .line 2567
    .restart local v5    # "hdlr":Landroid/media/AudioService$SetModeDeathHandler;
    :cond_a
    const/4 v12, 0x0

    :try_start_1
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2575
    :goto_5
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2576
    move/from16 v0, p1

    invoke-virtual {v5, v0}, Landroid/media/AudioService$SetModeDeathHandler;->setMode(I)V

    goto :goto_2

    .line 2568
    :catch_1
    move-exception v3

    .line 2570
    .local v3, "e":Landroid/os/RemoteException;
    const-string v12, "AudioService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setMode() could not link to "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " binder death"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 2618
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_b
    if-eqz v5, :cond_c

    .line 2619
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2621
    const/4 v12, 0x0

    :try_start_2
    move-object/from16 v0, p2

    invoke-interface {v0, v5, v12}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_2
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2

    .line 2627
    :cond_c
    :goto_6
    const/16 p1, 0x0

    goto/16 :goto_3

    .line 2622
    :catch_2
    move-exception v3

    .line 2623
    .local v3, "e":Ljava/util/NoSuchElementException;
    const-string v12, "AudioService"

    const-string v13, "SetModeDeathHandler not registered to binder"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2630
    .end local v3    # "e":Ljava/util/NoSuchElementException;
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 2639
    :cond_e
    iget-object v12, p0, Landroid/media/AudioService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/media/AudioService$SetModeDeathHandler;

    invoke-virtual {v12}, Landroid/media/AudioService$SetModeDeathHandler;->getPid()I

    move-result v8

    goto/16 :goto_4
.end method

.method public setPlaybackInfoForRcc(III)V
    .locals 1
    .param p1, "rccId"    # I
    .param p2, "what"    # I
    .param p3, "value"    # I

    .prologue
    .line 6293
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setPlaybackInfoForRcc(III)V

    .line 6294
    return-void
.end method

.method public setPlaybackStateForRcc(IIJF)V
    .locals 6
    .param p1, "rccId"    # I
    .param p2, "state"    # I
    .param p3, "timeMs"    # J
    .param p5, "speed"    # F

    .prologue
    .line 6289
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaFocusControl;->setPlaybackStateForRcc(IIJF)V

    .line 6290
    return-void
.end method

.method public setRadioSpeakerOn(Z)V
    .locals 4
    .param p1, "on"    # Z

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2937
    const-string v0, "setRadioSpeakerOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2947
    :goto_0
    return-void

    .line 2940
    :cond_0
    if-eqz p1, :cond_1

    .line 2941
    invoke-static {v3, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2942
    iput v2, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    goto :goto_0

    .line 2944
    :cond_1
    invoke-static {v3, v1}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 2945
    iput v1, p0, Landroid/media/AudioService;->mForcedUseForFMRadio:I

    goto :goto_0
.end method

.method public setRemoteControlClientCommand(III)V
    .locals 1
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # I

    .prologue
    .line 6268
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setRemoteControlClientCommand(III)V

    .line 6269
    return-void
.end method

.method public setRemoteControlClientPlaybackPosition(IJ)V
    .locals 1
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .prologue
    .line 6260
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->setRemoteControlClientPlaybackPosition(IJ)V

    .line 6261
    return-void
.end method

.method public setRemoteStreamVolume(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 6285
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->setRemoteStreamVolume(I)V

    .line 6286
    return-void
.end method

.method public setRingerMode(I)V
    .locals 8
    .param p1, "ringerMode"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2229
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 2269
    :cond_0
    :goto_0
    return-void

    .line 2233
    :cond_1
    if-ne p1, v2, :cond_2

    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_2

    .line 2234
    const/4 p1, 0x0

    .line 2237
    :cond_2
    if-eqz p1, :cond_3

    if-ne p1, v2, :cond_4

    .line 2239
    :cond_3
    const-string v0, "persist.sys.silent"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2243
    :goto_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRingerMode is called by pid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2246
    .local v7, "msg":Ljava/lang/String;
    const-string v0, "AudioService"

    invoke-static {v0, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    invoke-direct {p0, p1, v2}, Landroid/media/AudioService;->setRingerModeInt(IZ)V

    .line 2250
    packed-switch p1, :pswitch_data_0

    .line 2267
    :goto_2
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastRingerMode(I)V

    goto :goto_0

    .line 2241
    .end local v7    # "msg":Ljava/lang/String;
    :cond_4
    const-string v0, "persist.sys.silent"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2252
    .restart local v7    # "msg":Ljava/lang/String;
    :pswitch_0
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : silent & set driving mode off"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    iput-boolean v3, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    goto :goto_2

    .line 2256
    :pswitch_1
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : vibrate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    iput-boolean v3, p0, Landroid/media/AudioService;->mSilentModeOff:Z

    .line 2258
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x16

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2

    .line 2261
    :pswitch_2
    const-string v0, "AudioService"

    const-string v1, "Ringer mode : normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2262
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x15

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_2

    .line 2250
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/IRingtonePlayer;

    .prologue
    .line 6467
    iget-object v0, p0, Landroid/media/AudioService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.REMOTE_AUDIO_PLAYBACK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6468
    iput-object p1, p0, Landroid/media/AudioService;->mRingtonePlayer:Landroid/media/IRingtonePlayer;

    .line 6469
    return-void
.end method

.method public setSmartVoumeEnable(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1740
    iput-boolean p1, p0, Landroid/media/AudioService;->mIsSmartVolumeEnable:Z

    .line 1741
    const-string v0, "AudioService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartVoumeEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/media/AudioService;->mIsSmartVolumeEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    return-void
.end method

.method public setSpeakerphoneOn(Z)V
    .locals 13
    .param p1, "on"    # Z

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    const/4 v7, 0x1

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 2911
    const-string v0, "setSpeakerphoneOn()"

    invoke-virtual {p0, v0}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2927
    :goto_0
    return-void

    .line 2915
    :cond_0
    if-eqz p1, :cond_3

    .line 2916
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    .line 2917
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    move v3, v2

    move v6, v4

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2920
    :cond_1
    iput v7, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    .line 2925
    :cond_2
    :goto_1
    iget-object v6, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    iget v10, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    move v7, v1

    move v8, v2

    move v9, v4

    move-object v11, v5

    move v12, v4

    invoke-static/range {v6 .. v12}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    goto :goto_0

    .line 2921
    :cond_3
    iget v0, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    if-ne v0, v7, :cond_2

    .line 2922
    iput v4, p0, Landroid/media/AudioService;->mForcedUseForComm:I

    goto :goto_1
.end method

.method public setStatusbarHasVolumeSlider(Z)V
    .locals 0
    .param p1, "hasVolumeSlider"    # Z

    .prologue
    .line 6735
    iput-boolean p1, p0, Landroid/media/AudioService;->mStatusbarHasVolumeSlider:Z

    .line 6736
    return-void
.end method

.method public setStreamMute(IZLandroid/os/IBinder;)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .param p3, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2057
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 2068
    :cond_0
    :goto_0
    return-void

    .line 2061
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 2062
    iget-object v0, p0, Landroid/media/AudioService;->mStreamMutedump:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    aput v1, v0, p1

    .line 2065
    :cond_2
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2066
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_0
.end method

.method public setStreamSolo(IZLandroid/os/IBinder;)V
    .locals 2
    .param p1, "streamType"    # I
    .param p2, "state"    # Z
    .param p3, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 2045
    iget-boolean v1, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v1, :cond_1

    .line 2053
    :cond_0
    return-void

    .line 2049
    :cond_1
    const/4 v0, 0x0

    .local v0, "stream":I
    :goto_0
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 2050
    invoke-virtual {p0, v0}, Landroid/media/AudioService;->isStreamAffectedByMute(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-ne v0, p1, :cond_3

    .line 2049
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2051
    :cond_3
    iget-object v1, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v1, v1, v0

    invoke-virtual {v1, p3, p2}, Landroid/media/AudioService$VolumeStreamState;->mute(Landroid/os/IBinder;Z)V

    goto :goto_1
.end method

.method public setStreamVolume(IIILjava/lang/String;)V
    .locals 10
    .param p1, "streamType"    # I
    .param p2, "index"    # I
    .param p3, "flags"    # I
    .param p4, "callingPackage"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x3

    .line 1747
    iget-boolean v0, p0, Landroid/media/AudioService;->mUseFixedVolume:Z

    if-eqz v0, :cond_1

    .line 1838
    :cond_0
    :goto_0
    return-void

    .line 1751
    :cond_1
    invoke-direct {p0, p1}, Landroid/media/AudioService;->ensureValidStreamType(I)V

    .line 1752
    iget-object v0, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    aget v8, v0, p1

    .line 1753
    .local v8, "streamTypeAlias":I
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v7, v0, v8

    .line 1769
    .local v7, "streamState":Landroid/media/AudioService$VolumeStreamState;
    invoke-direct {p0, p1}, Landroid/media/AudioService;->getDeviceForStream(I)I

    move-result v5

    .line 1771
    .local v5, "device":I
    iget-object v0, p0, Landroid/media/AudioService;->pIdOfsetVolume:[I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    aput v1, v0, p1

    .line 1772
    iget-object v0, p0, Landroid/media/AudioService;->pIdOfsetVolumeIndex:[I

    aput p2, v0, p1

    .line 1773
    const/16 v0, 0xa

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Landroid/media/AudioService;->isRadioSpeakerOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1774
    const/4 v5, 0x2

    .line 1781
    :cond_2
    and-int/lit16 v0, v5, 0x380

    if-nez v0, :cond_3

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_0

    .line 1792
    :cond_3
    iget-object v9, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    monitor-enter v9

    .line 1794
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1796
    invoke-virtual {v7, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I

    move-result v6

    .line 1798
    .local v6, "oldIndex":I
    mul-int/lit8 v0, p2, 0xa

    invoke-direct {p0, v0, p1, v8}, Landroid/media/AudioService;->rescaleIndex(III)I

    move-result p2

    .line 1800
    if-ne v8, v3, :cond_5

    and-int/lit16 v0, v5, 0x380

    if-eqz v0, :cond_5

    and-int/lit8 v0, p3, 0x40

    if-nez v0, :cond_5

    .line 1803
    iget-object v1, p0, Landroid/media/AudioService;->mA2dpAvrcpLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1804
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Landroid/media/AudioService;->mAvrcpAbsVolSupported:Z

    if-eqz v0, :cond_4

    .line 1805
    iget-object v0, p0, Landroid/media/AudioService;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    div-int/lit8 v2, p2, 0xa

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothA2dp;->setAvrcpAbsoluteVolume(I)V

    .line 1807
    :cond_4
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1810
    :cond_5
    and-int/lit8 p3, p3, -0x21

    .line 1811
    if-ne v8, v3, :cond_6

    and-int/lit8 v0, v5, 0x0

    if-eqz v0, :cond_6

    .line 1813
    or-int/lit8 p3, p3, 0x20

    .line 1816
    if-eqz p2, :cond_6

    .line 1817
    :try_start_2
    iget-object v0, p0, Landroid/media/AudioService;->mSafeMediaVolumeState:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_8

    and-int/lit8 v0, v5, 0xc

    if-eqz v0, :cond_8

    .line 1819
    iget p2, p0, Landroid/media/AudioService;->mSafeMediaVolumeIndex:I

    .line 1826
    :cond_6
    :goto_1
    invoke-direct {p0, v8, p2, v5}, Landroid/media/AudioService;->checkSafeMediaVolume(III)Z

    move-result v0

    if-nez v0, :cond_9

    .line 1827
    iget-object v0, p0, Landroid/media/AudioService;->mVolumePanel:Landroid/view/VolumePanel;

    invoke-virtual {v0, p3}, Landroid/view/VolumePanel;->postDisplaySafeVolumeWarning(I)V

    .line 1828
    and-int/lit16 v0, p3, 0x1000

    if-nez v0, :cond_7

    .line 1829
    new-instance v0, Landroid/media/AudioService$StreamVolumeCommand;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioService$StreamVolumeCommand;-><init>(Landroid/media/AudioService;IIII)V

    iput-object v0, p0, Landroid/media/AudioService;->mPendingVolumeCommand:Landroid/media/AudioService$StreamVolumeCommand;

    .line 1836
    :cond_7
    :goto_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1837
    invoke-direct {p0, p1, v6, p2, p3}, Landroid/media/AudioService;->sendVolumeUpdate(IIII)V

    goto/16 :goto_0

    .line 1807
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 1836
    .end local v6    # "oldIndex":I
    :catchall_1
    move-exception v0

    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 1821
    .restart local v6    # "oldIndex":I
    :cond_8
    :try_start_5
    invoke-virtual {v7}, Landroid/media/AudioService$VolumeStreamState;->getMaxIndex()I

    move-result p2

    goto :goto_1

    .line 1833
    :cond_9
    invoke-direct {p0, p1, p2, p3, v5}, Landroid/media/AudioService;->onSetStreamVolume(IIII)V

    .line 1834
    iget-object v0, p0, Landroid/media/AudioService;->mStreamStates:[Landroid/media/AudioService$VolumeStreamState;

    aget-object v0, v0, p1

    invoke-virtual {v0, v5}, Landroid/media/AudioService$VolumeStreamState;->getIndex(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result p2

    goto :goto_2
.end method

.method public setVibrateSetting(II)V
    .locals 1
    .param p1, "vibrateType"    # I
    .param p2, "vibrateSetting"    # I

    .prologue
    .line 2384
    iget-boolean v0, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v0, :cond_0

    .line 2391
    :goto_0
    return-void

    .line 2386
    :cond_0
    iget v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    invoke-static {v0, p1, p2}, Landroid/media/AudioService;->getValueForVibrateSetting(III)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService;->mVibrateSetting:I

    .line 2389
    invoke-direct {p0, p1}, Landroid/media/AudioService;->broadcastVibrateSetting(I)V

    goto :goto_0
.end method

.method public setWiredDeviceConnectionState(IILjava/lang/String;)V
    .locals 8
    .param p1, "device"    # I
    .param p2, "state"    # I
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 3987
    iget-object v7, p0, Landroid/media/AudioService;->mConnectedDevices:Ljava/util/HashMap;

    monitor-enter v7

    .line 3988
    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/media/AudioService;->checkSendBecomingNoisyIntent(II)I

    move-result v6

    .line 3989
    .local v6, "delay":I
    iget-object v1, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v2, 0x64

    move-object v0, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Landroid/media/AudioService;->queueMsgUnderWakeLock(Landroid/os/Handler;IIILjava/lang/Object;I)V

    .line 3995
    monitor-exit v7

    .line 3996
    return-void

    .line 3995
    .end local v6    # "delay":I
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shouldVibrate(I)Z
    .locals 3
    .param p1, "vibrateType"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2356
    iget-boolean v2, p0, Landroid/media/AudioService;->mHasVibrator:Z

    if-nez v2, :cond_0

    .line 2371
    :goto_0
    :pswitch_0
    return v1

    .line 2358
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioService;->getVibrateSetting(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 2361
    :pswitch_1
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    .line 2364
    :pswitch_2
    invoke-virtual {p0}, Landroid/media/AudioService;->getRingerMode()I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2

    .line 2358
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public startBluetoothSco(Landroid/os/IBinder;I)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;
    .param p2, "targetSdkVersion"    # I

    .prologue
    .line 3051
    const-string v3, "startBluetoothSco()"

    invoke-virtual {p0, v3}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v3, :cond_1

    .line 3064
    :cond_0
    :goto_0
    return-void

    .line 3055
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, p1, v3}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 3061
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3062
    .local v1, "ident":J
    invoke-virtual {v0, p2}, Landroid/media/AudioService$ScoClient;->incCount(I)V

    .line 3063
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public startWatchingRoutes(Landroid/media/IAudioRoutesObserver;)Landroid/media/AudioRoutesInfo;
    .locals 3
    .param p1, "observer"    # Landroid/media/IAudioRoutesObserver;

    .prologue
    .line 6478
    iget-object v2, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    monitor-enter v2

    .line 6479
    :try_start_0
    new-instance v0, Landroid/media/AudioRoutesInfo;

    iget-object v1, p0, Landroid/media/AudioService;->mCurAudioRoutes:Landroid/media/AudioRoutesInfo;

    invoke-direct {v0, v1}, Landroid/media/AudioRoutesInfo;-><init>(Landroid/media/AudioRoutesInfo;)V

    .line 6480
    .local v0, "routes":Landroid/media/AudioRoutesInfo;
    iget-object v1, p0, Landroid/media/AudioService;->mRoutesObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 6481
    monitor-exit v2

    return-object v0

    .line 6482
    .end local v0    # "routes":Landroid/media/AudioRoutesInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopBluetoothSco(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    .line 3068
    const-string v3, "stopBluetoothSco()"

    invoke-virtual {p0, v3}, Landroid/media/AudioService;->checkAudioSettingsPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/media/AudioService;->mBootCompleted:Z

    if-nez v3, :cond_1

    .line 3081
    :cond_0
    :goto_0
    return-void

    .line 3072
    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Landroid/media/AudioService;->getScoClient(Landroid/os/IBinder;Z)Landroid/media/AudioService$ScoClient;

    move-result-object v0

    .line 3076
    .local v0, "client":Landroid/media/AudioService$ScoClient;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3077
    .local v1, "ident":J
    if-eqz v0, :cond_2

    .line 3078
    invoke-virtual {v0}, Landroid/media/AudioService$ScoClient;->decCount()V

    .line 3080
    :cond_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0
.end method

.method public unloadSoundEffects()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 2803
    iget-object v0, p0, Landroid/media/AudioService;->mAudioHandler:Landroid/media/AudioService$AudioHandler;

    const/16 v1, 0x14

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/AudioService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 2804
    return-void
.end method

.method public unregisterAudioFocusClient(Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;

    .prologue
    .line 6318
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterAudioFocusClient(Ljava/lang/String;)V

    .line 6319
    return-void
.end method

.method public unregisterMediaButtonEventReceiverForCalls()V
    .locals 1

    .prologue
    .line 6238
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0}, Landroid/media/MediaFocusControl;->unregisterMediaButtonEventReceiverForCalls()V

    .line 6239
    return-void
.end method

.method public unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V
    .locals 1
    .param p1, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 6246
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterMediaButtonIntent(Landroid/app/PendingIntent;)V

    .line 6247
    return-void
.end method

.method public unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V
    .locals 1
    .param p1, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p2, "rcClient"    # Landroid/media/IRemoteControlClient;

    .prologue
    .line 6256
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaFocusControl;->unregisterRemoteControlClient(Landroid/app/PendingIntent;Landroid/media/IRemoteControlClient;)V

    .line 6257
    return-void
.end method

.method public unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 1
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 6221
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1}, Landroid/media/MediaFocusControl;->unregisterRemoteControlDisplay(Landroid/media/IRemoteControlDisplay;)V

    .line 6222
    return-void
.end method

.method public updateRemoteControlClientMetadata(IILandroid/media/Rating;)V
    .locals 1
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Landroid/media/Rating;

    .prologue
    .line 6264
    iget-object v0, p0, Landroid/media/AudioService;->mMediaFocusControl:Landroid/media/MediaFocusControl;

    invoke-virtual {v0, p1, p2, p3}, Landroid/media/MediaFocusControl;->updateRemoteControlClientMetadata(IILandroid/media/Rating;)V

    .line 6265
    return-void
.end method

.method updateRingerModeAffectedStreams()Z
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 3674
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mode_ringer_streams_affected"

    const/16 v3, 0xa6

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 3681
    .local v0, "ringerModeAffectedStreams":I
    or-int/lit8 v0, v0, 0x26

    .line 3695
    iget-boolean v1, p0, Landroid/media/AudioService;->mVoiceCapable:Z

    if-eqz v1, :cond_0

    .line 3696
    and-int/lit8 v0, v0, -0x9

    .line 3702
    :goto_0
    iget-object v2, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    monitor-enter v2

    .line 3703
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService;->mCameraSoundForced:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3704
    and-int/lit16 v0, v0, -0x81

    .line 3708
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3709
    iget-object v1, p0, Landroid/media/AudioService;->mStreamVolumeAlias:[I

    const/16 v2, 0x8

    aget v1, v1, v2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 3710
    or-int/lit16 v0, v0, 0x100

    .line 3715
    :goto_2
    iget v1, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    if-eq v0, v1, :cond_3

    .line 3716
    iget-object v1, p0, Landroid/media/AudioService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "mode_ringer_streams_affected"

    invoke-static {v1, v2, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 3720
    iput v0, p0, Landroid/media/AudioService;->mRingerModeAffectedStreams:I

    .line 3721
    const/4 v1, 0x1

    .line 3723
    :goto_3
    return v1

    .line 3698
    :cond_0
    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 3706
    :cond_1
    or-int/lit16 v0, v0, 0x80

    goto :goto_1

    .line 3708
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 3712
    :cond_2
    and-int/lit16 v0, v0, -0x101

    goto :goto_2

    .line 3723
    :cond_3
    const/4 v1, 0x0

    goto :goto_3
.end method

.method public verifyX509CertChain(I[BLjava/lang/String;Ljava/lang/String;)I
    .locals 9
    .param p1, "numcerts"    # I
    .param p2, "chain"    # [B
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "authType"    # Ljava/lang/String;

    .prologue
    .line 6788
    new-array v1, p1, [[B

    .line 6790
    .local v1, "certChain":[[B
    invoke-static {p2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 6791
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, p1, :cond_0

    .line 6792
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 6796
    .local v2, "certlen":I
    new-array v6, v2, [B

    aput-object v6, v1, v5

    .line 6797
    aget-object v6, v1, v5

    invoke-virtual {v0, v6}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 6791
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 6801
    .end local v2    # "certlen":I
    :cond_0
    :try_start_0
    invoke-static {v1, p3, p4}, Landroid/net/http/CertificateChainValidator;->verifyServerCertificates([[BLjava/lang/String;Ljava/lang/String;)Landroid/net/http/SslError;

    move-result-object v4

    .line 6806
    .local v4, "err":Landroid/net/http/SslError;
    if-nez v4, :cond_1

    .line 6807
    const/4 v6, -0x1

    .line 6814
    .end local v4    # "err":Landroid/net/http/SslError;
    :goto_1
    return v6

    .line 6809
    .restart local v4    # "err":Landroid/net/http/SslError;
    :cond_1
    invoke-virtual {v4}, Landroid/net/http/SslError;->getPrimaryError()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    goto :goto_1

    .line 6811
    .end local v4    # "err":Landroid/net/http/SslError;
    :catch_0
    move-exception v3

    .line 6812
    .local v3, "e":Ljava/lang/Exception;
    const-string v6, "AudioService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "failed to verify chain: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6814
    const/4 v6, 0x5

    goto :goto_1
.end method
