.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$LmsPartCollector;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;
    }
.end annotation


# static fields
.field private static final ACTION_AT_CMSS_COMPLETE:Ljava/lang/String; = "android.intent.action.AT_CMSS_COMPLETE"

.field private static final ACTION_BCS_REQUEST:Ljava/lang/String; = "android.intent.action.BCS_REQUEST"

.field private static final ACTION_BCS_RESPONSE:Ljava/lang/String; = "android.intent.action.BCS_RESPONSE"

.field static final ADDRESS_COLUMN:I = 0x6

.field static final COUNT_COLUMN:I = 0x5

.field private static final CSCFEATURE_RIL_LMS_REASSEMBLE_TIMEOUTS_CTC:Z

.field static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field private static final DELIMITER:B = 0xbt

.field static final DESTINATION_PORT_COLUMN:I = 0x2

.field static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_NEW_SMS:I = 0x1

.field protected static final EVENT_REASSEMBLE_TIMEOUT:I = 0x17

.field static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field static final EVENT_RETURN_TO_IDLE:I = 0x4

.field static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field protected static final EVENT_STOP_REASSEMBLE:I = 0x18

.field static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field public static final EVENT_WRITE_SMS_COMPLETE:I = 0x8

.field static final ID_COLUMN:I = 0x7

.field static final IMEI_SECRET_CHAR_UTF_16_HEX:Ljava/lang/String; = "0x00C6"

.field static final IMEI_SECRET_CHAR_UTF_8_HEX:Ljava/lang/String; = "C6"

.field static final IMEI_SPACE_CHAR_UTF_16_HEX:Ljava/lang/String; = "0x0020"

.field static final IMEI_SPACE_CHAR_UTF_8_DEC:Ljava/lang/String; = "20"

.field static final IMEI_SPACE_CHAR_UTF_8_HEX:Ljava/lang/String; = "0x20"

.field static final IMEI_TRIGGER:Ljava/lang/String; = "TRIGGER"

.field static final IMEI_VNCHANGE:Ljava/lang/String; = "VNCHANGE"

.field static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field protected static final RAW_PROJECTION:[Ljava/lang/String;

.field private static final REASSEMBLE_TIMEOUT:I = 0x493e0

.field static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=?"

.field static final SEQUENCE_COLUMN:I = 0x1

.field private static final SKT_CARRIERLOCK_MODE_FILE:Ljava/lang/String; = "/efs/sms/sktcarrierlockmode"

.field private static final SKT_CARRIERLOCK_MODE_FOLDER:Ljava/lang/String; = "/efs/sms"

.field private static final SMS_GARBAGE_COLLECTION_TIME:J = 0x927c0L

.field private static final SMS_GARBAGE_COLLECTION_TIME_CHN:J = 0xa4cb800L

.field private static final SMS_GARBAGE_COLLECTION_TIME_NTT:J = 0x240c8400L

.field private static final TAG:Ljava/lang/String; = "InboundSmsHandler"

.field private static final VDBG:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field protected static final WAKE_LOCK_TIMEOUT:I = 0x1388

.field private static gcf_flag:Z

.field private static mFormat:Ljava/lang/String;

.field protected static final mRawUri:Landroid/net/Uri;

.field private static final sRawUri:Landroid/net/Uri;

.field private static sReassembleRef:I


# instance fields
.field private mApplicationID:Ljava/lang/String;

.field private mApplicationName:Ljava/lang/String;

.field private mApplicationSpecificData:[B

.field private mBlockedSmsMmsReceiver:Landroid/content/BroadcastReceiver;

.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field protected final mCi:Lcom/android/internal/telephony/CommandsInterface;

.field private mCommand:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field mHandler:Landroid/os/Handler;

.field final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field protected mLatestSmsAddress:Ljava/lang/String;

.field protected mLatestSmsTimestamp:Ljava/lang/String;

.field protected mLatestSmsType:Ljava/lang/String;

.field protected final mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected final mResolver:Landroid/content/ContentResolver;

.field protected mSegmentedSmsCount:I

.field private final mSmsReceiveDisabled:Z

.field final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mUI:Ljava/lang/String;

.field final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field protected final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

.field protected misWapPush:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 144
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    .line 149
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "sequence"

    aput-object v1, v0, v3

    const-string v1, "destination_port"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 197
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 237
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    .line 240
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "pdu"

    aput-object v1, v0, v2

    const-string v1, "reference_number"

    aput-object v1, v0, v3

    const-string v1, "sequence"

    aput-object v1, v0, v4

    const-string v1, "destination_port"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->RAW_PROJECTION:[Ljava/lang/String;

    .line 262
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sput v0, Lcom/android/internal/telephony/InboundSmsHandler;->sReassembleRef:I

    .line 269
    const-string v0, "unknown"

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->mFormat:Ljava/lang/String;

    .line 279
    sput-boolean v2, Lcom/android/internal/telephony/InboundSmsHandler;->gcf_flag:Z

    .line 292
    const-string v0, "ReassembleTimeout"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_DisplayPolicyPartialLongSms"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/InboundSmsHandler;->CSCFEATURE_RIL_LMS_REASSEMBLE_TIMEOUTS_CTC:Z

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 303
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    .line 213
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 216
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 219
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 222
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 225
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 264
    const-string v4, "latest_sms_address"

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsAddress:Ljava/lang/String;

    .line 266
    const-string v4, "latest_sms_timestamp"

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsTimestamp:Ljava/lang/String;

    .line 268
    const-string v4, "latest_sms_type"

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsType:Ljava/lang/String;

    .line 270
    iput v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentedSmsCount:I

    .line 278
    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->misWapPush:Z

    .line 2393
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$1;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$1;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHandler:Landroid/os/Handler;

    .line 2413
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$2;

    invoke-direct {v4, p0}, Lcom/android/internal/telephony/InboundSmsHandler$2;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mBlockedSmsMmsReceiver:Landroid/content/BroadcastReceiver;

    .line 305
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 306
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 307
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 308
    iget-object v4, p4, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 309
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    .line 310
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 311
    new-instance v4, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {v4, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 313
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x111003d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 315
    .local v1, "smsCapable":Z
    const-string v4, "telephony.sms.receive"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 318
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 319
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 320
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 322
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 323
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 324
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 325
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 326
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    .line 328
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-virtual {p0, v2}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 331
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mBlockedSmsMmsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.enterprise.restriction.SEND_BLOCKED_SMS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "android.permission.sec.RECEIVE_BLOCKED_SMS_MMS"

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 333
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mBlockedSmsMmsReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "com.android.server.enterprise.restriction.SEND_BLOCKED_MMS"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "android.permission.sec.RECEIVE_BLOCKED_SMS_MMS"

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 338
    sget-boolean v2, Lcom/android/internal/telephony/InboundSmsHandler;->CSCFEATURE_RIL_LMS_REASSEMBLE_TIMEOUTS_CTC:Z

    if-eqz v2, :cond_1

    .line 339
    new-instance v2, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, p0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/InboundSmsHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    .line 344
    :goto_0
    const-string v2, "created InboundSmsHandler"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 345
    return-void

    .line 341
    :cond_1
    iput-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/telephony/InboundSmsHandler;
    .param p1, "x1"    # Lcom/android/internal/util/IState;

    .prologue
    .line 139
    invoke-virtual {p0, p1}, Lcom/android/internal/util/StateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return-void
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 32
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 1216
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 1218
    const/4 v10, 0x0

    .line 1220
    .local v10, "cursor":Landroid/database/Cursor;
    const-string v2, "ro.csc.sales_code"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1224
    .local v22, "sales_code":Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    move-result v24

    .line 1227
    .local v24, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 1228
    .local v8, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 1229
    .local v19, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    .line 1231
    .local v9, "count":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    .line 1234
    .local v23, "seqNumber":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v13, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v13, v2

    const/4 v2, 0x1

    aput-object v19, v13, v2

    const/4 v2, 0x2

    aput-object v9, v13, v2

    .line 1235
    .local v13, "deleteWhereArgs":[Ljava/lang/String;
    const-string v2, "address=? AND reference_number=? AND count=?"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v13}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1238
    const-string v11, "address=? AND reference_number=? AND date < ?"

    .line 1239
    .local v11, "del_where":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v27

    .line 1240
    .local v27, "timestamp":J
    const-wide/32 v2, 0x927c0

    sub-long v25, v27, v2

    .line 1241
    .local v25, "timediff":J
    const-string v2, "CHN"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHU"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHM"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "CHC"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "TGY"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1242
    :cond_0
    const-wide/32 v2, 0xa4cb800

    sub-long v25, v27, v2

    .line 1247
    :cond_1
    const/4 v2, 0x3

    new-array v12, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v8, v12, v2

    const/4 v2, 0x1

    aput-object v19, v12, v2

    const/4 v2, 0x2

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    .line 1248
    .local v12, "del_whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v2, v3, v11, v12}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    const-string v5, "address=? AND reference_number=? AND count=? AND sequence=?"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v19, v6, v7

    const/4 v7, 0x2

    aput-object v9, v6, v7

    const/4 v7, 0x3

    aput-object v23, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1256
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1257
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Discarding duplicate message segment, refNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seqNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1259
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1260
    .local v17, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v18

    .line 1261
    .local v18, "pdu":[B
    invoke-static/range {v17 .. v17}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v16

    .line 1262
    .local v16, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v2

    move-object/from16 v0, v16

    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_8

    .line 1264
    const-string v2, "CHN"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CHU"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CHM"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "CHC"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "TGY"

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1265
    :cond_2
    const-string v30, "address=? AND reference_number=? AND sequence=?"

    .line 1266
    .local v30, "where":Ljava/lang/String;
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v31, v0

    const/4 v2, 0x0

    aput-object v8, v31, v2

    const/4 v2, 0x1

    aput-object v19, v31, v2

    const/4 v2, 0x2

    aput-object v23, v31, v2

    .line 1268
    .local v31, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: delete old segment. Dup message segment PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different from existing PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1281
    .end local v16    # "oldPdu":[B
    .end local v17    # "oldPduString":Ljava/lang/String;
    .end local v18    # "pdu":[B
    .end local v30    # "where":Ljava/lang/String;
    .end local v31    # "whereArgs":[Ljava/lang/String;
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1286
    if-eqz v10, :cond_4

    .line 1287
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1292
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "count":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "del_where":Ljava/lang/String;
    .end local v12    # "del_whereArgs":[Ljava/lang/String;
    .end local v13    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v19    # "refNumber":Ljava/lang/String;
    .end local v22    # "sales_code":Ljava/lang/String;
    .end local v23    # "seqNumber":Ljava/lang/String;
    .end local v24    # "sequence":I
    .end local v25    # "timediff":J
    .end local v27    # "timestamp":J
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v29

    .line 1295
    .local v29, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    move-object/from16 v0, v29

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    .line 1296
    .local v15, "newUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "URI of new row -> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1299
    :try_start_1
    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v20

    .line 1300
    .local v20, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1302
    const-string v2, "_id=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1304
    :cond_5
    const/4 v2, 0x1

    .line 1307
    .end local v15    # "newUri":Landroid/net/Uri;
    .end local v20    # "rowId":J
    .end local v29    # "values":Landroid/content/ContentValues;
    :cond_6
    :goto_0
    return v2

    .line 1273
    .restart local v8    # "address":Ljava/lang/String;
    .restart local v9    # "count":Ljava/lang/String;
    .restart local v10    # "cursor":Landroid/database/Cursor;
    .restart local v11    # "del_where":Ljava/lang/String;
    .restart local v12    # "del_whereArgs":[Ljava/lang/String;
    .restart local v13    # "deleteWhereArgs":[Ljava/lang/String;
    .restart local v16    # "oldPdu":[B
    .restart local v17    # "oldPduString":Ljava/lang/String;
    .restart local v18    # "pdu":[B
    .restart local v19    # "refNumber":Ljava/lang/String;
    .restart local v22    # "sales_code":Ljava/lang/String;
    .restart local v23    # "seqNumber":Ljava/lang/String;
    .restart local v24    # "sequence":I
    .restart local v25    # "timediff":J
    .restart local v27    # "timestamp":J
    :cond_7
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Warning: dup message segment PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v18

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is different from existing PDU of length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1275
    const/4 v2, 0x5

    .line 1286
    if-eqz v10, :cond_6

    .line 1287
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1278
    :cond_8
    const/4 v2, 0x5

    .line 1286
    if-eqz v10, :cond_6

    .line 1287
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1282
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "count":Ljava/lang/String;
    .end local v11    # "del_where":Ljava/lang/String;
    .end local v12    # "del_whereArgs":[Ljava/lang/String;
    .end local v13    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v16    # "oldPdu":[B
    .end local v17    # "oldPduString":Ljava/lang/String;
    .end local v18    # "pdu":[B
    .end local v19    # "refNumber":Ljava/lang/String;
    .end local v23    # "seqNumber":Ljava/lang/String;
    .end local v24    # "sequence":I
    .end local v25    # "timediff":J
    .end local v27    # "timestamp":J
    :catch_0
    move-exception v14

    .line 1283
    .local v14, "e":Landroid/database/SQLException;
    :try_start_3
    const-string v2, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1284
    const/4 v2, 0x2

    .line 1286
    if-eqz v10, :cond_6

    .line 1287
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1286
    .end local v14    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    if-eqz v10, :cond_9

    .line 1287
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_9
    throw v2

    .line 1305
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v22    # "sales_code":Ljava/lang/String;
    .restart local v15    # "newUri":Landroid/net/Uri;
    .restart local v29    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v14

    .line 1306
    .local v14, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error parsing URI for new row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1307
    const/4 v2, 0x2

    goto :goto_0
.end method

.method public static getCDMASmsReassembly()Z
    .locals 4

    .prologue
    .line 2246
    const/4 v0, 0x0

    .line 2247
    .local v0, "onOff":Z
    const-string v1, "ril.sms.reassembly"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2248
    const-string v1, "InboundSmsHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCDMASmsReassembly = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2249
    return v0
.end method

.method protected static getNextReassembleRef()I
    .locals 1

    .prologue
    .line 2253
    sget v0, Lcom/android/internal/telephony/InboundSmsHandler;->sReassembleRef:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/InboundSmsHandler;->sReassembleRef:I

    .line 2254
    sget v0, Lcom/android/internal/telephony/InboundSmsHandler;->sReassembleRef:I

    return v0
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    .prologue
    .line 1316
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    .line 1317
    .local v0, "activePhone":I
    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected KddiDispatchBroadcastMessage(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2212
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2213
    return-void
.end method

.method protected accountSMStoMDM(ILcom/android/internal/telephony/SmsMessageBase;)V
    .locals 7
    .param p1, "result"    # I
    .param p2, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 688
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    if-eqz p2, :cond_1

    .line 689
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v2

    .line 690
    .local v2, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    const/4 v1, 0x0

    .line 692
    .local v1, "isWapPush":Z
    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v3, :cond_0

    const/16 v3, 0xb84

    iget-object v4, v2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v3, v4, :cond_0

    .line 693
    const/4 v1, 0x1

    .line 696
    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 697
    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 698
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    .line 699
    .local v0, "edm":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 700
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    .line 704
    .end local v0    # "edm":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    .end local v1    # "isWapPush":Z
    .end local v2    # "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :cond_1
    return-void
.end method

.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 938
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    .line 948
    :goto_0
    :sswitch_0
    return v0

    .line 940
    :sswitch_1
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 938
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected checkDuplicatedOmadmPort([BLcom/android/internal/telephony/SmsHeader;)Z
    .locals 8
    .param p1, "userData"    # [B
    .param p2, "smsHeader"    # Lcom/android/internal/telephony/SmsHeader;

    .prologue
    const/4 v7, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1540
    if-eqz p2, :cond_0

    iget-object v5, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v5, :cond_0

    .line 1541
    iget-object v5, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v6, 0xb84

    if-ne v5, v6, :cond_0

    iget-object v5, p2, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-ne v5, v3, :cond_0

    .line 1543
    new-array v1, v7, [B

    .line 1545
    .local v1, "garbageData":[B
    invoke-static {p1, v4, v1, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1547
    const/4 v2, 0x0

    .line 1548
    .local v2, "oPort":I
    iget-object v5, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget-boolean v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    if-nez v5, :cond_0

    .line 1549
    aget-byte v5, v1, v4

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    aget-byte v6, v1, v3

    and-int/lit16 v6, v6, 0xff

    or-int v2, v5, v6

    .line 1550
    const/4 v5, 0x2

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    const/4 v6, 0x3

    aget-byte v6, v1, v6

    and-int/lit16 v6, v6, 0xff

    or-int v0, v5, v6

    .line 1552
    .local v0, "dPort":I
    const-string v5, "InboundSmsHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dPort : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " oPort : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    const-string v5, "InboundSmsHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "destPort : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " origPort : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v7, v7, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1554
    iget-object v5, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v0, v5, :cond_0

    iget-object v5, p2, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v5, v5, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    if-ne v2, v5, :cond_0

    .line 1560
    .end local v0    # "dPort":I
    .end local v1    # "garbageData":[B
    .end local v2    # "oPort":I
    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method public checkImeiTrackerMessage(Ljava/lang/String;)Z
    .locals 10
    .param p1, "userData"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0xa

    const/16 v8, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1433
    if-eqz p1, :cond_1

    .line 1434
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 1436
    .local v3, "length":I
    if-lez v3, :cond_1

    .line 1437
    const/4 v7, 0x0

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1438
    .local v2, "firstByteInHex":Ljava/lang/String;
    const-string v7, "C6"

    invoke-virtual {v2, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "0x00C6"

    invoke-virtual {v2, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1

    .line 1440
    :cond_0
    if-le v3, v6, :cond_2

    .line 1442
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 1443
    .local v0, "SecondByteInHex":Ljava/lang/String;
    const-string v7, "20"

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "0x20"

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "0x0020"

    invoke-virtual {v0, v7}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_2

    .line 1469
    .end local v0    # "SecondByteInHex":Ljava/lang/String;
    .end local v2    # "firstByteInHex":Ljava/lang/String;
    .end local v3    # "length":I
    :cond_1
    :goto_0
    return v5

    .line 1452
    .restart local v2    # "firstByteInHex":Ljava/lang/String;
    .restart local v3    # "length":I
    :cond_2
    if-ne v3, v8, :cond_3

    .line 1453
    const/4 v7, 0x2

    const/16 v8, 0x9

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1454
    .local v4, "s1":Ljava/lang/String;
    const-string v7, "TRIGGER"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    .line 1455
    goto :goto_0

    .line 1457
    .end local v4    # "s1":Ljava/lang/String;
    :cond_3
    if-le v3, v9, :cond_1

    .line 1458
    const/4 v7, 0x2

    const/16 v8, 0xa

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1459
    .restart local v4    # "s1":Ljava/lang/String;
    const-string v7, "VNCHANGE"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_1

    move v5, v6

    .line 1460
    goto :goto_0

    .line 1465
    .end local v2    # "firstByteInHex":Ljava/lang/String;
    .end local v4    # "s1":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1466
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "InboundSmsHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    .prologue
    .line 1197
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1198
    .local v0, "rows":I
    if-nez v0, :cond_0

    .line 1199
    const-string v1, "No rows were deleted from raw table!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 1203
    :goto_0
    return-void

    .line 1201
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows from raw table."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispatch(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    .line 1576
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1579
    return-void
.end method

.method protected dispatchAppDirectedSMS(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "appdirectedSMS"    # Ljava/lang/String;
    .param p3, "appPrefix"    # Ljava/lang/String;
    .param p4, "originAddress"    # Ljava/lang/String;

    .prologue
    .line 1738
    const-string v1, "InboundSmsHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchAppDirectedSMS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1739
    new-instance v0, Landroid/content/Intent;

    const-string v1, "verizon.intent.action.DIRECTED_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1740
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1741
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1742
    const-string v1, "parameters"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1743
    const-string v1, "originator"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1744
    const-string v1, "prefix"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1745
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1746
    return-void
.end method

.method protected dispatchAppSMSforSPR(Ljava/lang/String;[[B)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "pdus"    # [[B

    .prologue
    .line 1719
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1720
    .local v0, "intent":Landroid/content/Intent;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1721
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1722
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1723
    const-string v1, "simSlot"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1724
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 1726
    return-void
.end method

.method protected dispatchBlockedSms([BI)V
    .locals 8
    .param p1, "pdu"    # [B
    .param p2, "sendType"    # I

    .prologue
    const/4 v1, 0x1

    .line 2450
    invoke-static {p1}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    .line 2451
    .local v7, "sms":Landroid/telephony/SmsMessage;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v0

    .line 2454
    .local v0, "phoneRestriction":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isBlockSmsWithStorageEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2456
    iget-object v2, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v3

    .line 2457
    .local v3, "srcAddress":Ljava/lang/String;
    const/4 v5, 0x0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->storeBlockedSmsMms(Z[BLjava/lang/String;ILjava/lang/String;)V

    .line 2474
    .end local v3    # "srcAddress":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2460
    :cond_1
    iget-object v2, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v6

    .line 2462
    .local v6, "result":I
    const/4 v2, 0x2

    if-eq v6, v2, :cond_0

    .line 2463
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2464
    const-string v2, "InboundSmsHandler"

    const-string v4, "update number of incoming smss"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    invoke-virtual {v0}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfIncomingSms()Z

    .line 2468
    :cond_2
    iget-object v2, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2469
    iget-object v2, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v4, v5, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method tos_org_dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/4 v7, 0x0

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchIntent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1188
    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1189
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, -0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v8, v7

    invoke-virtual/range {v0 .. v8}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 1191
    return-void
.end method

.method protected dispatchKTToAppManagerPdus([[BI)V
    .locals 4
    .param p1, "pdus"    # [[B
    .param p2, "port"    # I

    .prologue
    .line 1876
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kt.show.manger.action.SHOW_DATA_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1878
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "InboundSmsHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchPdusToKTAppManager PDU = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PORT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1879
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1880
    const-string v1, "port_address"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1881
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1883
    return-void
.end method

.method protected dispatchKTToLbsServicePdus([[BI)V
    .locals 4
    .param p1, "pdus"    # [[B
    .param p2, "port"    # I

    .prologue
    .line 1886
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.kt.location.action.KTLBS_DATA_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1888
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "InboundSmsHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchKTToLbsServicePdus PDU = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PORT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1890
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1892
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1894
    return-void
.end method

.method protected dispatchLGTCATPTPdus([B)V
    .locals 5
    .param p1, "pdus"    # [B

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1936
    const-string v1, "InboundSmsHandler"

    const-string v2, "dispatchLGTCATPTPdus"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getCatService()Lcom/android/internal/telephony/cat/CatService;

    move-result-object v0

    .line 1939
    .local v0, "appInterface":Lcom/android/internal/telephony/cat/AppInterface;
    if-nez v0, :cond_0

    .line 1940
    const-string v1, "InboundSmsHandler"

    const-string v2, "getCatService returned null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :goto_0
    invoke-virtual {p0, v3, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1946
    return-void

    .line 1942
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->parseGstkSmsTpdu([B)[B

    move-result-object v1

    invoke-interface {v0, v4, v1}, Lcom/android/internal/telephony/cat/AppInterface;->sendEnvelopeforSMSPPdownload([B[B)V

    goto :goto_0
.end method

.method protected dispatchLGTFOTAPdus([[B)V
    .locals 4
    .param p1, "pdus"    # [[B

    .prologue
    .line 1900
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PUSH_CONFIRM"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1902
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "InboundSmsHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disptchLGTFOTAPdus PDU = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1905
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1906
    return-void
.end method

.method protected dispatchLGTMsgAppPdus([[BI)V
    .locals 5
    .param p1, "pdus"    # [[B
    .param p2, "teleService"    # I

    .prologue
    .line 2175
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2176
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2177
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2178
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 2179
    return-void
.end method

.method protected dispatchLGTTeleserviceMessage(Lcom/android/internal/telephony/SmsMessageBase;I)V
    .locals 3
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "teleService"    # I

    .prologue
    const/4 v2, 0x0

    .line 1964
    const/4 v1, 0x1

    new-array v0, v1, [[B

    .line 1965
    .local v0, "pdus":[[B
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v1

    aput-object v1, v0, v2

    .line 1967
    sparse-switch p2, :sswitch_data_0

    .line 1988
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchLGTUnknownTIDPdus(Ljava/lang/String;I)V

    .line 1991
    :goto_0
    return-void

    .line 1969
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchLGTFOTAPdus([[B)V

    goto :goto_0

    .line 1982
    :sswitch_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdus([[B)V

    goto :goto_0

    .line 1985
    :sswitch_2
    aget-object v1, v0, v2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchLGTCATPTPdus([B)V

    goto :goto_0

    .line 1967
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_1
        0x1003 -> :sswitch_1
        0x1007 -> :sswitch_2
        0x7f40 -> :sswitch_1
        0xc00a -> :sswitch_1
        0xc00e -> :sswitch_1
        0xc00f -> :sswitch_1
        0xc010 -> :sswitch_1
        0xc263 -> :sswitch_1
        0xc265 -> :sswitch_1
        0xc267 -> :sswitch_1
        0xc277 -> :sswitch_0
        0x40000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected dispatchLGTUnknownTIDPdus(Ljava/lang/String;I)V
    .locals 5
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "teleService"    # I

    .prologue
    const/4 v4, 0x0

    .line 1949
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.lgt.action.APM_SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1951
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "InboundSmsHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disptchLGTUnknownTIDPdus PDU = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Tid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    const-string v1, "tid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1953
    const-string v1, "body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1955
    const/16 v1, 0x10

    invoke-virtual {p0, v0, v4, v1, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1956
    return-void
.end method

.method protected dispatchLGUMMSNotitication([BILjava/lang/String;)I
    .locals 29
    .param p1, "pdu"    # [B
    .param p2, "referenceNumber"    # I
    .param p3, "address"    # Ljava/lang/String;

    .prologue
    .line 1997
    const/16 v17, 0x0

    .line 1999
    .local v17, "index":I
    const/16 v25, 0x0

    .line 2000
    .local v25, "sourcePort":I
    const/4 v13, 0x0

    .line 2002
    .local v13, "destinationPort":I
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index":I
    .local v18, "index":I
    aget-byte v19, p1, v17

    .line 2003
    .local v19, "msgType":I
    if-eqz v19, :cond_1

    .line 2004
    const-string v3, "InboundSmsHandler"

    const-string v4, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 2005
    const/4 v3, 0x1

    move/from16 v17, v18

    .line 2120
    .end local v18    # "index":I
    .restart local v17    # "index":I
    :cond_0
    :goto_0
    return v3

    .line 2007
    .end local v17    # "index":I
    .restart local v18    # "index":I
    :cond_1
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "index":I
    .restart local v17    # "index":I
    aget-byte v26, p1, v18

    .line 2008
    .local v26, "totalSegments":I
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index":I
    .restart local v18    # "index":I
    aget-byte v23, p1, v17

    .line 2011
    .local v23, "segment":I
    if-nez v23, :cond_e

    .line 2013
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "index":I
    .restart local v17    # "index":I
    aget-byte v3, p1, v18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v25, v3, 0x8

    .line 2014
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index":I
    .restart local v18    # "index":I
    aget-byte v3, p1, v17

    and-int/lit16 v3, v3, 0xff

    or-int v25, v25, v3

    .line 2015
    add-int/lit8 v17, v18, 0x1

    .end local v18    # "index":I
    .restart local v17    # "index":I
    aget-byte v3, p1, v18

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v13, v3, 0x8

    .line 2016
    add-int/lit8 v18, v17, 0x1

    .end local v17    # "index":I
    .restart local v18    # "index":I
    aget-byte v3, p1, v17

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v13, v3

    move/from16 v17, v18

    .line 2020
    .end local v18    # "index":I
    .restart local v17    # "index":I
    :goto_1
    new-instance v28, Ljava/lang/StringBuilder;

    const-string v3, "reference_number ="

    move-object/from16 v0, v28

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2021
    .local v28, "where":Ljava/lang/StringBuilder;
    move-object/from16 v0, v28

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2022
    const-string v3, " AND address = ?"

    move-object/from16 v0, v28

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2023
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v7, v3

    .line 2025
    .local v7, "whereArgs":[Ljava/lang/String;
    const-string v3, "InboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received WAP PDU. Type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", originator = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", src-port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", dst-port = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", segment# = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    const/16 v22, 0x0

    check-cast v22, [[B

    .line 2030
    .local v22, "pdus":[[B
    const/4 v9, 0x0

    .line 2032
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 2033
    const-string v3, "pdu"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v21

    .line 2034
    .local v21, "pduColumn":I
    const-string v3, "sequence"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v24

    .line 2035
    .local v24, "sequenceColumn":I
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 2036
    .local v10, "cursorCount":I
    const/4 v11, 0x0

    .line 2037
    .local v11, "cursorSequence":I
    const-string v3, "InboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "segment count in db!! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    if-ge v0, v10, :cond_3

    .line 2039
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 2040
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v11, v3

    .line 2041
    const-string v3, "InboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "segment in db!! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    move/from16 v0, v23

    if-ne v11, v0, :cond_2

    .line 2043
    const-string v3, "InboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received duplicated segment!! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2044
    const/4 v3, 0x1

    .line 2093
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2038
    :cond_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 2047
    :cond_3
    add-int/lit8 v3, v26, -0x1

    if-eq v10, v3, :cond_4

    .line 2049
    :try_start_1
    new-instance v27, Landroid/content/ContentValues;

    invoke-direct/range {v27 .. v27}, Landroid/content/ContentValues;-><init>()V

    .line 2050
    .local v27, "values":Landroid/content/ContentValues;
    const-string v3, "date"

    new-instance v4, Ljava/lang/Long;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2051
    const-string v3, "pdu"

    move-object/from16 v0, p1

    array-length v4, v0

    sub-int v4, v4, v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1, v4}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2052
    const-string v3, "address"

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    const-string v3, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2054
    const-string v3, "count"

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2055
    const-string v3, "sequence"

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2056
    const-string v3, "destination_port"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    move-object/from16 v0, v27

    invoke-virtual {v3, v4, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2060
    const/4 v3, 0x1

    .line 2093
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2063
    .end local v27    # "values":Landroid/content/ContentValues;
    :cond_4
    :try_start_2
    move/from16 v0, v26

    new-array v0, v0, [[B

    move-object/from16 v22, v0

    .line 2064
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2065
    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    if-ge v0, v10, :cond_6

    .line 2066
    move/from16 v0, v24

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v11, v3

    .line 2068
    if-nez v11, :cond_5

    .line 2069
    const-string v3, "destination_port"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 2070
    .local v14, "destinationPortColumn":I
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v13, v3

    .line 2072
    .end local v14    # "destinationPortColumn":I
    :cond_5
    move/from16 v0, v21

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v22, v11

    .line 2074
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 2065
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 2078
    :cond_6
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v0, v10, :cond_9

    .line 2079
    move/from16 v0, v16

    move/from16 v1, v23

    if-eq v0, v1, :cond_8

    .line 2080
    aget-object v3, v22, v16

    if-eqz v3, :cond_7

    aget-object v3, v22, v16

    array-length v3, v3

    if-nez v3, :cond_8

    .line 2081
    :cond_7
    const-string v3, "InboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received duplicated segment!! : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2082
    const/4 v3, 0x1

    .line 2093
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2078
    :cond_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 2088
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2093
    if-eqz v9, :cond_a

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 2097
    :cond_a
    new-instance v20, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 2098
    .local v20, "output":Ljava/io/ByteArrayOutputStream;
    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    .line 2100
    move/from16 v0, v16

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 2102
    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v3, v3, v17

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 2098
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 2089
    .end local v10    # "cursorCount":I
    .end local v11    # "cursorSequence":I
    .end local v16    # "i":I
    .end local v20    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "pduColumn":I
    .end local v24    # "sequenceColumn":I
    :catch_0
    move-exception v15

    .line 2090
    .local v15, "e":Landroid/database/SQLException;
    :try_start_4
    const-string v3, "InboundSmsHandler"

    const-string v4, "Can\'t access multipart SMS database"

    invoke-static {v3, v4, v15}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2091
    const/4 v3, 0x2

    .line 2093
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v15    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v3

    .line 2104
    .restart local v10    # "cursorCount":I
    .restart local v11    # "cursorSequence":I
    .restart local v16    # "i":I
    .restart local v20    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v21    # "pduColumn":I
    .restart local v24    # "sequenceColumn":I
    :cond_c
    aget-object v3, v22, v16

    const/4 v4, 0x0

    aget-object v5, v22, v16

    array-length v5, v5

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_6

    .line 2108
    :cond_d
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v12

    .line 2116
    .local v12, "datagram":[B
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v22, v0

    .line 2117
    const/4 v3, 0x0

    aput-object v12, v22, v3

    .line 2119
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPortAddressedPdus([[BI)V

    .line 2120
    const/4 v3, -0x1

    goto/16 :goto_0

    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v10    # "cursorCount":I
    .end local v11    # "cursorSequence":I
    .end local v12    # "datagram":[B
    .end local v16    # "i":I
    .end local v17    # "index":I
    .end local v20    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v21    # "pduColumn":I
    .end local v22    # "pdus":[[B
    .end local v24    # "sequenceColumn":I
    .end local v28    # "where":Ljava/lang/StringBuilder;
    .restart local v18    # "index":I
    :cond_e
    move/from16 v17, v18

    .end local v18    # "index":I
    .restart local v17    # "index":I
    goto/16 :goto_1
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 717
    if-nez p1, :cond_0

    .line 718
    const-string v0, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 719
    const/4 v0, 0x2

    .line 729
    :goto_0
    return v0

    .line 722
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    if-eqz v0, :cond_1

    .line 724
    const-string v0, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 726
    const/4 v0, 0x1

    goto :goto_0

    .line 729
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v0

    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 39
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    .prologue
    .line 804
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v37

    .line 808
    .local v37, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 809
    const-string v3, "InboundSmsHandler"

    const-string v4, "Discard duplicated message."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 811
    const/4 v3, -0x1

    .line 927
    :cond_0
    :goto_0
    return v3

    .line 815
    :cond_1
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 816
    .local v35, "salesCode":Ljava/lang/String;
    const-string v3, "SPR"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "BST"

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 839
    :cond_2
    if-eqz v37, :cond_3

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v3, :cond_9

    .line 841
    :cond_3
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v31, v0

    .line 842
    .local v31, "pdus":[[B
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v4

    aput-object v4, v31, v3

    .line 843
    const/4 v6, -0x1

    .line 844
    .local v6, "destPort":I
    if-eqz v37, :cond_7

    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v3, :cond_7

    .line 846
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v6, v3, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 847
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destination port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 863
    :cond_4
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;Z)V

    .line 927
    .end local v31    # "pdus":[[B
    .local v2, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    move-result v3

    goto :goto_0

    .line 819
    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v29

    .line 821
    .local v29, "msgbody":Ljava/lang/String;
    if-nez v29, :cond_6

    .line 822
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v30

    .line 823
    .local v30, "msgs":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v30 .. v30}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v29

    .line 826
    .end local v30    # "msgs":Landroid/telephony/SmsMessage;
    :cond_6
    if-eqz v29, :cond_2

    const-string v3, "//ANDROID"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "//CM"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 827
    const-string v3, "InboundSmsHandler"

    const-string v4, "message body starts with //ANDROID and ends with //CM"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    const-string v23, "com.coremobility.app.vnotes"

    .line 830
    .local v23, "VVM_PACKAGE_NAME":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v31, v0

    .line 831
    .restart local v31    # "pdus":[[B
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v4

    aput-object v4, v31, v3

    .line 833
    const-string v3, "com.coremobility.app.vnotes"

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchAppSMSforSPR(Ljava/lang/String;[[B)V

    .line 834
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 849
    .end local v23    # "VVM_PACKAGE_NAME":Ljava/lang/String;
    .end local v29    # "msgbody":Ljava/lang/String;
    .restart local v6    # "destPort":I
    :cond_7
    const-string v3, "ro.csc.sales_code"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 850
    .local v36, "sales_code":Ljava/lang/String;
    if-eqz v36, :cond_4

    const-string v3, "INU"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "INS"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string v3, "TML"

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 851
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->checkImeiTrackerMessage(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 852
    new-instance v27, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.IMEI_TRACKER_SMS_RECEIVED"

    move-object/from16 v0, v27

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    .local v27, "intent":Landroid/content/Intent;
    const-string v3, "pdus"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 855
    const/16 v3, 0x20

    move-object/from16 v0, v27

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 856
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.RECEIVE_SMS"

    move-object/from16 v0, v27

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 857
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 868
    .end local v6    # "destPort":I
    .end local v27    # "intent":Landroid/content/Intent;
    .end local v31    # "pdus":[[B
    .end local v36    # "sales_code":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    move-object/from16 v24, v0

    .line 869
    .local v24, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v32, v0

    .line 870
    .local v32, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v32, :cond_d

    move-object/from16 v0, v32

    iget v6, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 872
    .restart local v6    # "destPort":I
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->getCDMASmsReassembly()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 874
    const/16 v28, 0x0

    .line 875
    .local v28, "isfirstMessage":Z
    new-instance v38, Ljava/lang/StringBuilder;

    const-string v3, "count ="

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 876
    .local v38, "where":Ljava/lang/StringBuilder;
    move-object/from16 v0, v24

    iget v3, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 877
    const-string v3, " AND address = ?"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    const/4 v3, 0x1

    new-array v11, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v11, v3

    .line 879
    .local v11, "whereArgs":[Ljava/lang/String;
    const/16 v25, 0x0

    .line 881
    .local v25, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v8, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v9, Lcom/android/internal/telephony/InboundSmsHandler;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v25

    .line 882
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->getCount()I

    move-result v26

    .line 883
    .local v26, "cursorCount":I
    const/16 v33, 0x0

    .line 885
    .local v33, "refColumn":I
    if-eqz v26, :cond_b

    .line 886
    :cond_a
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 887
    const-string v3, "sequence"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 888
    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v3, v3

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-ne v3, v4, :cond_a

    .line 889
    const-string v3, "InboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Same sequence number is exist. total : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seq :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    iget v5, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/16 v28, 0x1

    .line 897
    :cond_b
    if-eqz v26, :cond_e

    if-nez v28, :cond_e

    .line 898
    const-string v3, "it\'s not first segment"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 899
    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->moveToFirst()Z

    .line 900
    const-string v3, "reference_number"

    move-object/from16 v0, v25

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v33

    .line 901
    move-object/from16 v0, v25

    move/from16 v1, v33

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    long-to-int v0, v3

    move/from16 v34, v0

    .line 902
    .local v34, "refNum":I
    const-string v3, "InboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refNum: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v34

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    move/from16 v0, v34

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 916
    if-eqz v25, :cond_c

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    .line 921
    .end local v11    # "whereArgs":[Ljava/lang/String;
    .end local v25    # "cursor":Landroid/database/Cursor;
    .end local v26    # "cursorCount":I
    .end local v28    # "isfirstMessage":Z
    .end local v33    # "refColumn":I
    .end local v34    # "refNum":I
    .end local v38    # "where":Ljava/lang/StringBuilder;
    :cond_c
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move/from16 v19, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v20, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object v12, v2

    move/from16 v16, v6

    invoke-direct/range {v12 .. v22}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .restart local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto/16 :goto_1

    .line 870
    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v6    # "destPort":I
    :cond_d
    const/4 v6, -0x1

    goto/16 :goto_2

    .line 905
    .restart local v6    # "destPort":I
    .restart local v11    # "whereArgs":[Ljava/lang/String;
    .restart local v25    # "cursor":Landroid/database/Cursor;
    .restart local v26    # "cursorCount":I
    .restart local v28    # "isfirstMessage":Z
    .restart local v33    # "refColumn":I
    .restart local v38    # "where":Ljava/lang/StringBuilder;
    :cond_e
    :try_start_1
    move-object/from16 v0, v37

    iget-object v3, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->getNextReassembleRef()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new segment : [ "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v37

    iget-object v4, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v4, v4, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentedSmsCount:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentedSmsCount:I

    .line 909
    new-instance v2, Lcom/android/internal/telephony/InboundSmsTracker;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    move/from16 v19, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    move/from16 v20, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object v12, v2

    move/from16 v16, v6

    invoke-direct/range {v12 .. v22}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    .line 912
    .restart local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 913
    const/16 v3, 0x9

    .line 916
    if-eqz v25, :cond_0

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v2    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v26    # "cursorCount":I
    .end local v33    # "refColumn":I
    :catchall_0
    move-exception v3

    if-eqz v25, :cond_f

    invoke-interface/range {v25 .. v25}, Landroid/database/Cursor;->close()V

    :cond_f
    throw v3
.end method

.method protected dispatchPatternLockMessagePdus([[B)Z
    .locals 34
    .param p1, "pdus"    # [[B

    .prologue
    .line 1584
    const/4 v4, 0x0

    .line 1586
    .local v4, "bHandled":Z
    :try_start_0
    const-string v31, "InboundSmsHandler"

    const-string v32, "dispatchPatternLockMessagePdus()"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    new-array v0, v0, [Landroid/telephony/SmsMessage;

    move-object/from16 v19, v0

    .line 1588
    .local v19, "msgs":[Landroid/telephony/SmsMessage;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1589
    .local v6, "body":Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    if-ge v11, v0, :cond_2

    .line 1590
    const/16 v31, -0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getEncoding()I

    move-result v32

    move/from16 v0, v31

    move/from16 v1, v32

    if-eq v0, v1, :cond_0

    .line 1591
    aget-object v31, p1, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getEncoding()I

    move-result v32

    invoke-static/range {v31 .. v32}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v31

    aput-object v31, v19, v11

    .line 1595
    :goto_1
    aget-object v31, v19, v11

    invoke-virtual/range {v31 .. v31}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1589
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1593
    :cond_0
    aget-object v31, p1, v11

    invoke-static/range {v31 .. v31}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v31

    aput-object v31, v19, v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1683
    .end local v6    # "body":Ljava/lang/StringBuilder;
    .end local v11    # "i":I
    .end local v19    # "msgs":[Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v10

    .line 1684
    .local v10, "e":Ljava/lang/Exception;
    const-string v31, "InboundSmsHandler"

    const-string v32, "Can\'t send intent ACTION_LOCKPATTERN_CLEAR "

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-static {v0, v1, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1687
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return v4

    .line 1598
    .restart local v6    # "body":Ljava/lang/StringBuilder;
    .restart local v11    # "i":I
    .restart local v19    # "msgs":[Landroid/telephony/SmsMessage;
    :cond_2
    const/16 v31, 0x0

    :try_start_1
    aget-object v31, v19, v31

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v22

    .line 1599
    .local v22, "sendAddr":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v26

    .line 1600
    .local v26, "szEnOutBuf":Ljava/lang/String;
    const/16 v28, 0x0

    .line 1601
    .local v28, "szIndexMsg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1604
    .local v5, "bLockPatternMsg":Z
    :try_start_2
    const-string v31, "BBEFBCBAB8F0B9D9C0CFB4E5C4C420BEC8B3BB20B8DEBDC3C1F6C0D4B4CFB4D92E203A20"

    invoke-static/range {v31 .. v31}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v24

    .line 1605
    .local v24, "str":[B
    new-instance v29, Ljava/lang/String;

    const-string v31, "EUC_KR"

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1606
    .end local v28    # "szIndexMsg":Ljava/lang/String;
    .local v29, "szIndexMsg":Ljava/lang/String;
    :try_start_3
    move-object/from16 v0, v26

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result v5

    move-object/from16 v28, v29

    .line 1611
    .end local v24    # "str":[B
    .end local v29    # "szIndexMsg":Ljava/lang/String;
    .restart local v28    # "szIndexMsg":Ljava/lang/String;
    :goto_3
    if-eqz v22, :cond_1

    :try_start_4
    const-string v31, "15883366"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    if-eqz v5, :cond_1

    .line 1612
    const/4 v4, 0x1

    .line 1614
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v13

    .line 1615
    .local v13, "len_szIndexMsg":I
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 1616
    .local v7, "data":[B
    new-instance v27, Ljava/lang/String;

    const-string v31, "UTF-8"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-direct {v0, v7, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 1618
    .local v27, "szEnOutBufUTF8":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/mosecurity/SecMoSecurity;->SSMOBILE_Decrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1620
    .local v25, "szDeOutBuf":Ljava/lang/String;
    if-eqz v25, :cond_3

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v31

    if-gtz v31, :cond_4

    :cond_3
    new-instance v31, Ljava/lang/Exception;

    invoke-direct/range {v31 .. v31}, Ljava/lang/Exception;-><init>()V

    throw v31

    .line 1607
    .end local v7    # "data":[B
    .end local v13    # "len_szIndexMsg":I
    .end local v25    # "szDeOutBuf":Ljava/lang/String;
    .end local v27    # "szEnOutBufUTF8":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 1608
    .restart local v10    # "e":Ljava/lang/Exception;
    :goto_4
    const-string v31, "InboundSmsHandler"

    const-string v32, "dispatchSecUnlockScreenPdus EUC_KR converting error"

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1622
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v7    # "data":[B
    .restart local v13    # "len_szIndexMsg":I
    .restart local v25    # "szDeOutBuf":Ljava/lang/String;
    .restart local v27    # "szEnOutBufUTF8":Ljava/lang/String;
    :cond_4
    const-string v31, "\\|"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    .line 1630
    .local v23, "splitBuf":[Ljava/lang/String;
    new-instance v14, Landroid/text/format/Time;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-direct {v14, v0}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1631
    .local v14, "mCalendar":Landroid/text/format/Time;
    const-wide/16 v15, 0x0

    .line 1632
    .local v15, "millismCalendar":J
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    .line 1633
    const/16 v31, 0x1

    move/from16 v0, v31

    invoke-virtual {v14, v0}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v15

    .line 1636
    new-instance v30, Landroid/text/format/Time;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v31

    invoke-direct/range {v30 .. v31}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 1637
    .local v30, "tsDeOutBuf":Landroid/text/format/Time;
    const-wide/16 v17, 0x0

    .line 1638
    .local v17, "millismTsDeOutBuf":J
    const-wide/16 v8, 0x0

    .line 1640
    .local v8, "diffTime":J
    const/16 v31, 0x0

    aget-object v31, v23, v31

    const/16 v32, 0x0

    const/16 v33, 0x4

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->year:I

    .line 1641
    const/16 v31, 0x0

    aget-object v31, v23, v31

    const/16 v32, 0x4

    const/16 v33, 0x6

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    add-int/lit8 v31, v31, -0x1

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->month:I

    .line 1642
    const/16 v31, 0x0

    aget-object v31, v23, v31

    const/16 v32, 0x6

    const/16 v33, 0x8

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1643
    const/16 v31, 0x0

    aget-object v31, v23, v31

    const/16 v32, 0x8

    const/16 v33, 0xa

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->hour:I

    .line 1644
    const/16 v31, 0x0

    aget-object v31, v23, v31

    const/16 v32, 0xa

    const/16 v33, 0xc

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->minute:I

    .line 1645
    const/16 v31, 0x0

    aget-object v31, v23, v31

    const/16 v32, 0xc

    const/16 v33, 0xe

    invoke-virtual/range {v31 .. v33}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    move/from16 v0, v31

    move-object/from16 v1, v30

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1647
    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v17

    .line 1650
    sub-long v8, v15, v17

    .line 1652
    const-string v31, "InboundSmsHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "PatternLock   result:   millismCalendar: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " millismTsDeOutBuf: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    const-wide/16 v31, 0x0

    cmp-long v31, v8, v31

    if-gez v31, :cond_5

    neg-long v8, v8

    .line 1656
    :cond_5
    const/16 v20, 0x0

    .line 1659
    .local v20, "msisdnNumber":Ljava/lang/String;
    if-nez v20, :cond_6

    .line 1660
    const-string v31, "InboundSmsHandler"

    const-string v32, "missing MSISDN number."

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1661
    new-instance v31, Ljava/lang/Exception;

    invoke-direct/range {v31 .. v31}, Ljava/lang/Exception;-><init>()V

    throw v31

    .line 1664
    :cond_6
    const-string v31, "+82"

    move-object/from16 v0, v20

    move-object/from16 v1, v31

    throw v0

    move-result v31

    if-eqz v31, :cond_7

    .line 1665
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "0"

    throw v31

    move-result-object v31

    const/16 v32, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v32

    throw v0

    move-result-object v32

    throw v31

    move-result-object v31

    throw v31

    move-result-object v21

    .line 1670
    :goto_5
    const-string v31, "InboundSmsHandler"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "msisdnNumber: "

    throw v32

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    throw v0

    move-result-object v32

    const-string v33, " myNumber: "

    throw v32

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    throw v0

    move-result-object v32

    const-string v33, " splitBuf[1]: "

    throw v32

    move-result-object v32

    const/16 v33, 0x1

    aget-object v33, v23, v33

    throw v32

    move-result-object v32

    throw v32

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1672
    const-wide/32 v31, 0x493e0

    cmp-long v31, v8, v31

    if-gez v31, :cond_8

    const/16 v31, 0x1

    aget-object v31, v23, v31

    move-object/from16 v0, v21

    move-object/from16 v1, v31

    throw v0

    move-result v31

    if-eqz v31, :cond_8

    .line 1674
    const-string v3, "com.sec.android.LockPattern.CLEAR"

    .line 1675
    .local v3, "ACTION_LOCKPATTERN_CLEAR":Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v31, "com.sec.android.LockPattern.CLEAR"

    move-object/from16 v0, v31

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1676
    .local v12, "intent":Landroid/content/Intent;
    const/16 v31, 0x20

    move/from16 v0, v31

    throw v12

    .line 1677
    move-object/from16 v0, p0

    throw v0

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    throw v0

    .line 1678
    const-string v31, "InboundSmsHandler"

    const-string v32, "send intent ACTION_LOCKPATTERN_CLEAR "

    invoke-static/range {v31 .. v32}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1667
    .end local v3    # "ACTION_LOCKPATTERN_CLEAR":Ljava/lang/String;
    .end local v12    # "intent":Landroid/content/Intent;
    :cond_7
    move-object/from16 v21, v20

    .local v21, "myNumber":Ljava/lang/Object;
    goto :goto_5

    .line 1680
    .end local v21    # "myNumber":Ljava/lang/Object;
    :cond_8
    new-instance v31, Ljava/lang/Exception;

    invoke-direct/range {v31 .. v31}, Ljava/lang/Exception;-><init>()V

    throw v31
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1607
    .end local v7    # "data":[B
    .end local v8    # "diffTime":J
    .end local v13    # "len_szIndexMsg":I
    .end local v14    # "mCalendar":Landroid/text/format/Time;
    .end local v15    # "millismCalendar":J
    .end local v17    # "millismTsDeOutBuf":J
    .end local v20    # "msisdnNumber":Ljava/lang/String;
    .end local v23    # "splitBuf":[Ljava/lang/String;
    .end local v25    # "szDeOutBuf":Ljava/lang/String;
    .end local v27    # "szEnOutBufUTF8":Ljava/lang/String;
    .end local v28    # "szIndexMsg":Ljava/lang/String;
    .end local v30    # "tsDeOutBuf":Landroid/text/format/Time;
    .restart local v24    # "str":[B
    .restart local v29    # "szIndexMsg":Ljava/lang/String;
    :catch_2
    move-exception v10

    move-object/from16 v28, v29

    .end local v29    # "szIndexMsg":Ljava/lang/String;
    .restart local v28    # "szIndexMsg":Ljava/lang/String;
    goto/16 :goto_4
.end method

.method protected dispatchPdus([[B)V
    .locals 4
    .param p1, "pdus"    # [[B

    .prologue
    .line 1696
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1697
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1698
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1699
    const-string v1, "simSlot"

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1700
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1702
    return-void
.end method

.method protected dispatchPdus([[BZ)V
    .locals 4
    .param p1, "pdus"    # [[B
    .param p2, "reassembleTimeout"    # Z

    .prologue
    .line 1705
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_DELIVER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1706
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1707
    const-string v1, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1708
    const-string v1, "reassembleTimeout"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1709
    const-string v1, "android.permission.RECEIVE_SMS"

    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1710
    return-void
.end method

.method protected dispatchPdusCTC([[BLandroid/telephony/LmsTokenCTC;I)V
    .locals 6
    .param p1, "pdus"    # [[B
    .param p2, "lmsToken"    # Landroid/telephony/LmsTokenCTC;
    .param p3, "lmsStatus"    # I

    .prologue
    const/4 v5, 0x1

    .line 2480
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2481
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "InboundSmsHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchPdusCTC lmsToken : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " lmsStatus : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2483
    packed-switch p3, :pswitch_data_0

    .line 2491
    const-string v2, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2495
    :goto_0
    const-string v2, "pdus"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 2497
    array-length v2, p1

    if-le v2, v5, :cond_0

    .line 2498
    const-string v2, "lms_token_ctc"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2501
    :cond_0
    if-nez p3, :cond_1

    .line 2502
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 2503
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 2505
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2506
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delivering SMS to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2510
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_1
    const-string v2, "InboundSmsHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchPdusCTC simSlot : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2511
    const-string v2, "format"

    iget-object v3, p2, Landroid/telephony/LmsTokenCTC;->format:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2512
    const-string v2, "simSlot"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2513
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 2516
    return-void

    .line 2485
    :pswitch_0
    const-string v2, "android.provider.Telephony.LMS_FIRST_DISPLAY_TIMEOUT_CTC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 2488
    :pswitch_1
    const-string v2, "android.provider.Telephony.LMS_MAXIMAL_CONNECTION_TIMEOUT_CTC"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 2483
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected dispatchPortAddressedPdus([[BI)V
    .locals 5
    .param p1, "pdus"    # [[B
    .param p2, "port"    # I

    .prologue
    .line 1755
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms://localhost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1756
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1757
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "pdus"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1758
    const-string v2, "format"

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1759
    const-string v2, "simSlot"

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1760
    const-string v2, "android.permission.RECEIVE_SMS"

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1761
    return-void
.end method

.method protected dispatchSKTAndroidCommonSMSPushPdus([[B)Z
    .locals 11
    .param p1, "pdus"    # [[B

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xb

    .line 1788
    array-length v7, p1

    new-array v5, v7, [Landroid/telephony/SmsMessage;

    .line 1789
    .local v5, "msgs":[Landroid/telephony/SmsMessage;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1790
    .local v1, "body":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v7, p1

    if-ge v4, v7, :cond_1

    .line 1791
    const/4 v7, -0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getEncoding()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 1792
    aget-object v7, p1, v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getEncoding()I

    move-result v8

    invoke-static {v7, v8}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v5, v4

    .line 1796
    :goto_1
    aget-object v7, v5, v4

    invoke-virtual {v7}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1790
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1794
    :cond_0
    aget-object v7, p1, v4

    invoke-static {v7}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v7

    aput-object v7, v5, v4

    goto :goto_1

    .line 1799
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1801
    .local v0, "SKTCommonPushData":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1802
    .local v6, "startIndex":I
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1803
    .local v3, "dlmtIndex":I
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUI:Ljava/lang/String;

    .line 1805
    add-int/lit8 v6, v3, 0x1

    .line 1806
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1807
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mApplicationName:Ljava/lang/String;

    .line 1809
    add-int/lit8 v6, v3, 0x1

    .line 1810
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1811
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCommand:Ljava/lang/String;

    .line 1813
    add-int/lit8 v6, v3, 0x1

    .line 1814
    invoke-virtual {v0, v9, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 1815
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mApplicationID:Ljava/lang/String;

    .line 1817
    add-int/lit8 v6, v3, 0x1

    .line 1818
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mApplicationSpecificData:[B

    .line 1820
    const-string v7, "InboundSmsHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dispatchSKTAndroidCommonSMSPushPdus  = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1826
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.skt.push.SMS_PUSH"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1828
    .local v2, "commonPushIntent":Landroid/content/Intent;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mApplicationID:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1829
    const-string v7, "aid"

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mApplicationID:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1830
    const-string v7, "AID"

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mApplicationID:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1831
    const-string v7, "msg_body"

    invoke-virtual {v2, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1833
    const-string v7, "SMSPushSender"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IN : [ Send Intent(action: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") to APP(Broadcast)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1834
    const-string v7, "SMSPushSender"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "@#   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") to APP(Broadcast)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1836
    const/4 v7, 0x0

    invoke-virtual {p0, v10, v10, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1838
    return v10
.end method

.method protected dispatchSKTFOTAPortAddressedPdus([B)V
    .locals 4
    .param p1, "rawPdu"    # [B

    .prologue
    .line 1766
    const-string v1, "InboundSmsHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sms dispatchSKTFOTAPortAddressedPdus"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1769
    .local v0, "intentWapPush":Landroid/content/Intent;
    const-string v1, "InboundSmsHandler"

    const-string v2, "android.provider.Telephony.WAP_PUSH_DM_NOTI_RECEIVED is sent"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    const-string v1, "DMAGENT"

    const/16 v2, 0xa0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1772
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1776
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1777
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1779
    return-void
.end method

.method protected dispatchSKTFindingLostPhoneCancelPdus([B)V
    .locals 5
    .param p1, "rawPdu"    # [B

    .prologue
    const/4 v4, 0x1

    .line 1857
    const-string v1, "InboundSmsHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSKTFindingLostPhoneCancelPdus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    const-string v1, "OFF"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->setCarrierLockEnabled(Ljava/lang/String;)V

    .line 1860
    const-string v1, "InboundSmsHandler"

    const-string v2, "Cancel set"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.FindingLostPhone.CANCEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1863
    .local v0, "flpCancelIntent":Landroid/content/Intent;
    const-string v1, "InboundSmsHandler"

    const-string v2, "com.sec.android.FindingLostPhone.CANCEL is sent"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1866
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1868
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v4, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1869
    return-void
.end method

.method protected dispatchSKTFindingLostPhoneSubscribePdus([B)V
    .locals 5
    .param p1, "rawPdu"    # [B

    .prologue
    const/4 v4, 0x1

    .line 1842
    const-string v1, "InboundSmsHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchSKTFindingLostPhoneSubscribePdus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1844
    const-string v1, "ON"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->setCarrierLockEnabled(Ljava/lang/String;)V

    .line 1845
    const-string v1, "InboundSmsHandler"

    const-string v2, "Subscribe set"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.FindingLostPhone.SUBSCRIBE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1848
    .local v0, "flpSubscribeIntent":Landroid/content/Intent;
    const-string v1, "InboundSmsHandler"

    const-string v2, "com.sec.android.FindingLostPhone.SUBSCRIBE is sent"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1850
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1851
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1853
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v4, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 1854
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->quit()V

    .line 352
    return-void
.end method

.method protected disptchLGTTeleservicePdus(Lcom/android/internal/telephony/SmsMessageBase;I)V
    .locals 3
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;
    .param p2, "teleService"    # I

    .prologue
    .line 2135
    const/4 v1, 0x1

    new-array v0, v1, [[B

    .line 2136
    .local v0, "pdus":[[B
    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v2

    aput-object v2, v0, v1

    .line 2138
    sparse-switch p2, :sswitch_data_0

    .line 2169
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchLGTUnknownTIDPdus(Ljava/lang/String;I)V

    .line 2172
    :goto_0
    return-void

    .line 2140
    :sswitch_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchLGTFOTAPdus([[B)V

    goto :goto_0

    .line 2166
    :sswitch_1
    invoke-virtual {p0, v0, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchLGTMsgAppPdus([[BI)V

    goto :goto_0

    .line 2138
    nop

    :sswitch_data_0
    .sparse-switch
        0x1001 -> :sswitch_1
        0x1003 -> :sswitch_1
        0x1004 -> :sswitch_1
        0x1005 -> :sswitch_1
        0x7f40 -> :sswitch_1
        0xc001 -> :sswitch_1
        0xc00a -> :sswitch_1
        0xc00b -> :sswitch_1
        0xc00e -> :sswitch_1
        0xc00f -> :sswitch_1
        0xc010 -> :sswitch_1
        0xc015 -> :sswitch_1
        0xc02a -> :sswitch_1
        0xc250 -> :sswitch_1
        0xc258 -> :sswitch_1
        0xc263 -> :sswitch_1
        0xc264 -> :sswitch_1
        0xc265 -> :sswitch_1
        0xc266 -> :sswitch_1
        0xc267 -> :sswitch_1
        0xc268 -> :sswitch_1
        0xc277 -> :sswitch_0
        0xf6fe -> :sswitch_1
        0x40000 -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract getEncoding()I
.end method

.method protected abstract getFormat()Ljava/lang/String;
.end method

.method public getPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    .prologue
    .line 2128
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method protected handleBlockedSms([BI)V
    .locals 2
    .param p1, "pdu"    # [B
    .param p2, "sendType"    # I

    .prologue
    .line 2446
    const-string v0, "InboundSmsHandler"

    const-string v1, "handleBlockedSms() - Default implementation"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2447
    return-void
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 15
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v4, 0x2

    const/4 v14, 0x0

    const/4 v9, 0x1

    const/4 v1, 0x5

    const/4 v3, 0x0

    .line 581
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 582
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception processing incoming SMS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 684
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->isDeviceEncryptionOngoing()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    invoke-virtual {p0, v3, v4, v14}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 593
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Receiving SMS failed."

    move v2, v1

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :cond_2
    const-string v2, "ril.sms.gcf-mode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 616
    .local v7, "GcfMode":Ljava/lang/String;
    const-string v2, "On"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 617
    sput-boolean v9, Lcom/android/internal/telephony/InboundSmsHandler;->gcf_flag:Z

    .line 621
    :goto_1
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_4

    .line 622
    const-string v2, "InboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception processing incoming SMS. Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Receiving SMS failed."

    move v2, v1

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 619
    :cond_3
    sput-boolean v3, Lcom/android/internal/telephony/InboundSmsHandler;->gcf_flag:Z

    goto :goto_1

    .line 632
    :cond_4
    const/4 v12, 0x0

    .line 633
    .local v12, "sms":Landroid/telephony/SmsMessage;
    const/4 v13, 0x0

    .line 635
    .local v13, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v0, v2

    check-cast v0, Landroid/telephony/SmsMessage;

    move-object v12, v0

    .line 636
    iget-object v2, v12, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I

    move-result v10

    .line 637
    .local v10, "result":I
    iget-object v2, v12, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 644
    :goto_2
    const/16 v2, 0xa

    if-ne v10, v2, :cond_6

    .line 647
    const/4 v10, 0x1

    .line 655
    :goto_3
    const/4 v2, -0x1

    if-eq v10, v2, :cond_0

    .line 659
    if-ne v10, v4, :cond_5

    .line 660
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Receiving SMS failed."

    move v2, v1

    invoke-static/range {v1 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_5
    const/16 v1, 0x8

    if-ne v10, v1, :cond_7

    .line 665
    invoke-virtual {p0, v9, v9, v14}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .line 638
    .end local v10    # "result":I
    :catch_0
    move-exception v8

    .line 639
    .local v8, "ex":Ljava/lang/RuntimeException;
    const-string v2, "Exception dispatching message"

    invoke-virtual {p0, v2, v8}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 640
    const/4 v10, 0x2

    .restart local v10    # "result":I
    goto :goto_2

    .line 649
    .end local v8    # "ex":Ljava/lang/RuntimeException;
    :cond_6
    iget-object v2, v12, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-virtual {p0, v10, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->accountSMStoMDM(ILcom/android/internal/telephony/SmsMessageBase;)V

    goto :goto_3

    .line 668
    :cond_7
    const/16 v1, 0x9

    if-ne v10, v1, :cond_8

    .line 669
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x17

    move-object/from16 v0, p1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 670
    .local v11, "segMsg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v1, v11, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 671
    const/4 v10, 0x1

    .line 674
    .end local v11    # "segMsg":Landroid/os/Message;
    :cond_8
    if-ne v10, v9, :cond_9

    .line 681
    .local v9, "handled":Z
    :goto_4
    invoke-virtual {p0, v9, v10, v14}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    goto/16 :goto_0

    .end local v9    # "handled":Z
    :cond_9
    move v9, v3

    .line 674
    goto :goto_4
.end method

.method protected handleReassembleTimeout(Landroid/telephony/SmsMessage;)V
    .locals 14
    .param p1, "sms"    # Landroid/telephony/SmsMessage;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1493
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v12

    .line 1495
    .local v12, "smsheader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v12, :cond_0

    iget-object v0, v12, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v0, :cond_2

    .line 1496
    :cond_0
    const-string v0, "InboundSmsHandler"

    const-string v1, "it\'s not proper segmented message"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    :cond_1
    :goto_0
    return-void

    .line 1500
    :cond_2
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v0, "reference_number ="

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1501
    .local v13, "where":Ljava/lang/StringBuilder;
    iget-object v0, v12, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1502
    const-string v0, " AND address = ?"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v1

    .line 1504
    .local v4, "whereArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 1505
    .local v6, "cursor":Landroid/database/Cursor;
    const-string v0, "InboundSmsHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing reference number : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1508
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1510
    .local v7, "cursorCount":I
    if-nez v7, :cond_3

    .line 1511
    const-string v0, "InboundSmsHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "there is no segmented sms with reference number "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v12, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v2, v2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1533
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 1515
    :cond_3
    :try_start_1
    const-string v0, "pdu"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1516
    .local v10, "pduColumn":I
    new-array v11, v7, [[B

    .line 1518
    .local v11, "pdus":[[B
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    if-ge v9, v7, :cond_4

    .line 1519
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1520
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, v11, v9

    .line 1518
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1523
    :cond_4
    const/4 v0, 0x0

    aget-object v0, v11, v0

    if-eqz v0, :cond_5

    .line 1524
    const/4 v0, 0x1

    invoke-virtual {p0, v11, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdus([[BZ)V

    .line 1526
    :cond_5
    iget v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentedSmsCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentedSmsCount:I

    .line 1527
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->mRawUri:Landroid/net/Uri;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1533
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1528
    .end local v7    # "cursorCount":I
    .end local v9    # "i":I
    .end local v10    # "pduColumn":I
    .end local v11    # "pdus":[[B
    :catch_0
    move-exception v8

    .line 1529
    .local v8, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v0, "InboundSmsHandler"

    const-string v1, "can\'t access multipart sms database"

    invoke-static {v0, v1, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1533
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1530
    .end local v8    # "e":Landroid/database/SQLException;
    :catch_1
    move-exception v8

    .line 1531
    .local v8, "e":Ljava/lang/NullPointerException;
    :try_start_3
    const-string v0, "InboundSmsHandler"

    const-string v1, "NullPointerException while handle reassemble timeout"

    invoke-static {v0, v1, v8}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1533
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v8    # "e":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected isDeviceEncryptionOngoing()Z
    .locals 2

    .prologue
    .line 2237
    const-string v0, "trigger_restart_min_framework"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "1"

    const-string v1, "vold.decrypt"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2239
    :cond_0
    const-string v0, "InboundSmsHandler"

    const-string v1, "On Encryption"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2240
    const/4 v0, 0x1

    .line 2242
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isDuplicatedLatestSms(Ljava/lang/String;JZ)Z
    .locals 10
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "iscdma"    # Z

    .prologue
    .line 2183
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2184
    .local v5, "sp":Landroid/content/SharedPreferences;
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsAddress:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2185
    .local v1, "latestAddress":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsTimestamp:Ljava/lang/String;

    const-wide/16 v8, 0x0

    invoke-interface {v5, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 2186
    .local v2, "latestTimestamp":J
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsType:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2187
    .local v4, "latestType":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "addrMatched":Z
    const/4 v6, 0x0

    .line 2189
    .local v6, "timeMatched":Z
    if-eqz p4, :cond_0

    const-string v7, "3gpp2"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    if-nez p4, :cond_2

    const-string v7, "3gpp"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2190
    :cond_1
    const-string v7, "InboundSmsHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " isDuplicatedLatestSms() Same smsType!!iscdma = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    const/4 v7, 0x0

    .line 2201
    :goto_0
    return v7

    .line 2194
    :cond_2
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2195
    cmp-long v7, p2, v2

    if-nez v7, :cond_3

    const/4 v6, 0x1

    .line 2197
    :goto_1
    const-string v7, "InboundSmsHandler"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " isDuplicatedLatestSms()->latestAddress value:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " address value:  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " latestTimestamp value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  timestamp value:   "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    if-eqz v0, :cond_4

    if-eqz v6, :cond_4

    .line 2199
    const/4 v7, 0x1

    goto :goto_0

    .line 2195
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 2201
    :cond_4
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected abstract isDuplicatedSms(Lcom/android/internal/telephony/SmsMessageBase;)Z
.end method

.method protected isSMSBlocked(Ljava/lang/String;Z)Z
    .locals 8
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "send"    # Z

    .prologue
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2346
    const/4 v7, 0x0

    .line 2348
    .local v7, "result":Z
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v6

    .line 2350
    .local v6, "restrictionPolicy":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-eqz v6, :cond_1

    .line 2351
    invoke-virtual {v6, v1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->getEmergencyCallOnly(Z)Z

    move-result v7

    .line 2352
    if-nez v7, :cond_1

    .line 2353
    if-eqz p2, :cond_4

    .line 2355
    invoke-virtual {v6}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isOutgoingSmsAllowed()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v6, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->canOutgoingSms(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    move v7, v1

    .line 2366
    :cond_1
    :goto_0
    const-string v1, "InboundSmsHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSMSBlocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    if-eqz v7, :cond_2

    .line 2369
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Receiving sms failed. Blocked by phone restriction policy."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2374
    :cond_2
    return v7

    :cond_3
    move v7, v2

    .line 2355
    goto :goto_0

    .line 2360
    :cond_4
    invoke-virtual {v6}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isIncomingSmsAllowed()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v6, p1}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->canIncomingSms(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    :cond_5
    move v7, v1

    :goto_1
    goto :goto_0

    :cond_6
    move v7, v2

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1385
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1394
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1405
    return-void
.end method

.method notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 775
    if-nez p1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->misWapPush:Z

    if-nez v1, :cond_0

    .line 778
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 780
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 783
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->misWapPush:Z

    .line 785
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 786
    return-void
.end method

.method protected onQuitting()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 368
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 371
    :cond_0
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpdatePhoneObject: phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 763
    return-void
.end method

.method protected parseGstkSmsTpdu([B)[B
    .locals 10
    .param p1, "pdus"    # [B

    .prologue
    .line 1910
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getEncoding()I

    move-result v8

    invoke-static {p1, v8}, Landroid/telephony/SmsMessage;->createFromPdu([BI)Landroid/telephony/SmsMessage;

    move-result-object v3

    .line 1911
    .local v3, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getBearerData()[B

    move-result-object v1

    .line 1912
    .local v1, "bearerData":[B
    const/4 v6, 0x0

    .local v6, "userdata_pos":I
    const/4 v5, 0x0

    .line 1914
    .local v5, "userdata_len":I
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "userdata_pos":I
    .local v7, "userdata_pos":I
    aget-byte v8, v1, v6

    if-nez v8, :cond_2

    .line 1915
    aget-byte v8, v1, v7

    add-int/lit8 v6, v8, 0x1

    .line 1917
    .end local v7    # "userdata_pos":I
    .restart local v6    # "userdata_pos":I
    :goto_0
    add-int/lit8 v6, v6, 0x1

    aget-byte v8, v1, v6

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    .line 1918
    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v1, v6

    .line 1920
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 1922
    new-array v4, v5, [B

    .line 1924
    .local v4, "userdata":[B
    const/4 v8, 0x0

    invoke-static {v1, v6, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1926
    new-array v0, v5, [B

    .line 1928
    .local v0, "Gstk_Sms_Tpdu":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    add-int/lit8 v8, v5, -0x1

    if-ge v2, v8, :cond_1

    .line 1929
    aget-byte v8, v4, v2

    and-int/lit8 v8, v8, 0x7

    shl-int/lit8 v8, v8, 0x5

    add-int/lit8 v9, v2, 0x1

    aget-byte v9, v4, v9

    and-int/lit16 v9, v9, 0xf8

    shr-int/lit8 v9, v9, 0x3

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v0, v2

    .line 1928
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1931
    :cond_1
    return-object v0

    .end local v0    # "Gstk_Sms_Tpdu":[B
    .end local v2    # "i":I
    .end local v4    # "userdata":[B
    .end local v6    # "userdata_pos":I
    .restart local v7    # "userdata_pos":I
    :cond_2
    move v6, v7

    .end local v7    # "userdata_pos":I
    .restart local v6    # "userdata_pos":I
    goto :goto_0
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 33
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    .prologue
    .line 960
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v23

    .line 962
    .local v23, "messageCount":I
    const/16 v27, 0x0

    check-cast v27, [[B

    .line 964
    .local v27, "pdus":[[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v15

    .line 966
    .local v15, "destPort":I
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_2

    .line 968
    const/4 v3, 0x1

    new-array v0, v3, [[B

    move-object/from16 v27, v0

    .end local v27    # "pdus":[[B
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v4

    aput-object v4, v27, v3

    .line 1089
    .restart local v27    # "pdus":[[B
    :cond_0
    :goto_0
    new-instance v31, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    .line 1091
    .local v31, "resultReceiver":Landroid/content/BroadcastReceiver;
    const/16 v3, 0xb84

    if-ne v15, v3, :cond_10

    .line 1093
    new-instance v25, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v25 .. v25}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1094
    .local v25, "output":Ljava/io/ByteArrayOutputStream;
    move-object/from16 v10, v27

    .local v10, "arr$":[[B
    array-length v0, v10

    move/from16 v21, v0

    .local v21, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    aget-object v26, v10, v18

    .line 1096
    .local v26, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1097
    const-string v3, "3gpp"

    move-object/from16 v0, v26

    invoke-static {v0, v3}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v24

    .line 1098
    .local v24, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v24 .. v24}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v26

    .line 1104
    .end local v24    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, v26

    array-length v4, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 1094
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 971
    .end local v10    # "arr$":[[B
    .end local v18    # "i$":I
    .end local v21    # "len$":I
    .end local v25    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v26    # "pdu":[B
    .end local v31    # "resultReceiver":Landroid/content/BroadcastReceiver;
    :cond_2
    const/4 v13, 0x0

    .line 974
    .local v13, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v9

    .line 975
    .local v9, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v29

    .line 976
    .local v29, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 979
    .local v12, "count":Ljava/lang/String;
    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v9, v7, v3

    const/4 v3, 0x1

    aput-object v29, v7, v3

    const/4 v3, 0x2

    aput-object v12, v7, v3

    .line 980
    .local v7, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const-string v6, "address=? AND reference_number=? AND count=?"

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 983
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v14

    .line 984
    .local v14, "cursorCount":I
    const-string v3, "InboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cursorCount : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 985
    move/from16 v0, v23

    if-ge v14, v0, :cond_6

    .line 992
    sget-boolean v3, Lcom/android/internal/telephony/InboundSmsHandler;->CSCFEATURE_RIL_LMS_REASSEMBLE_TIMEOUTS_CTC:Z

    if-eqz v3, :cond_3

    .line 993
    const/4 v3, -0x1

    if-ne v15, v3, :cond_5

    const/16 v17, 0x1

    .line 994
    .local v17, "eligibleForPartialDispatch":Z
    :goto_2
    if-eqz v17, :cond_3

    .line 995
    new-instance v22, Landroid/telephony/LmsTokenCTC;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v9, v3, v1, v4}, Landroid/telephony/LmsTokenCTC;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 996
    .local v22, "lmsToken":Landroid/telephony/LmsTokenCTC;
    const-string v3, "InboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lmsToken = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->hasScheduledFirstDisplayTimeout(Landroid/telephony/LmsTokenCTC;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 998
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->scheduleFirstDisplayTimeout(Landroid/telephony/LmsTokenCTC;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1005
    .end local v17    # "eligibleForPartialDispatch":Z
    .end local v22    # "lmsToken":Landroid/telephony/LmsTokenCTC;
    :cond_3
    const/4 v3, 0x0

    .line 1056
    if-eqz v13, :cond_4

    .line 1057
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 1174
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v9    # "address":Ljava/lang/String;
    .end local v12    # "count":Ljava/lang/String;
    .end local v13    # "cursor":Landroid/database/Cursor;
    .end local v14    # "cursorCount":I
    .end local v29    # "refNumber":Ljava/lang/String;
    :cond_4
    :goto_3
    return v3

    .line 993
    .restart local v7    # "whereArgs":[Ljava/lang/String;
    .restart local v9    # "address":Ljava/lang/String;
    .restart local v12    # "count":Ljava/lang/String;
    .restart local v13    # "cursor":Landroid/database/Cursor;
    .restart local v14    # "cursorCount":I
    .restart local v29    # "refNumber":Ljava/lang/String;
    :cond_5
    const/16 v17, 0x0

    goto :goto_2

    .line 1009
    :cond_6
    :try_start_1
    move/from16 v0, v23

    new-array v0, v0, [[B

    move-object/from16 v27, v0

    .line 1010
    :cond_7
    :goto_4
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1012
    const/4 v3, 0x1

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v4

    sub-int v19, v3, v4

    .line 1014
    .local v19, "index":I
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v27, v19

    .line 1018
    if-nez v19, :cond_7

    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->isNull(I)Z

    move-result v3

    if-nez v3, :cond_7

    .line 1019
    const/4 v3, 0x2

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 1021
    .local v28, "port":I
    invoke-static/range {v28 .. v28}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v28

    .line 1022
    const/4 v3, -0x1

    move/from16 v0, v28

    if-eq v0, v3, :cond_7

    .line 1023
    move/from16 v15, v28

    goto :goto_4

    .line 1029
    .end local v19    # "index":I
    .end local v28    # "port":I
    :cond_8
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->getCDMASmsReassembly()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1030
    const-string v3, "InboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count for segmented sms in db : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentedSmsCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentedSmsCount:I

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentedSmsCount:I

    .line 1034
    :cond_9
    invoke-static {}, Lcom/android/internal/telephony/InboundSmsHandler;->getCDMASmsReassembly()Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v3, -0x1

    if-ne v15, v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mSegmentedSmsCount:I

    if-nez v3, :cond_a

    .line 1035
    const-string v3, "InboundSmsHandler"

    const-string v4, "Stop reassemble"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x18

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/util/StateMachine;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1040
    :cond_a
    sget-boolean v3, Lcom/android/internal/telephony/InboundSmsHandler;->CSCFEATURE_RIL_LMS_REASSEMBLE_TIMEOUTS_CTC:Z

    if-eqz v3, :cond_b

    const/16 v3, 0xb84

    if-eq v15, v3, :cond_b

    .line 1042
    const-string v3, "InboundSmsHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LMS receive completely : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1043
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1044
    new-instance v22, Landroid/telephony/LmsTokenCTC;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-direct {v0, v9, v3, v1, v4}, Landroid/telephony/LmsTokenCTC;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 1045
    .restart local v22    # "lmsToken":Landroid/telephony/LmsTokenCTC;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->cancelFirstDisplayTimeout(Landroid/telephony/LmsTokenCTC;)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mLmsAssemblyTracker:Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;

    invoke-virtual {v3}, Lcom/android/internal/telephony/LmsAssemblyTrackerCTC;->updateMaximalConnectionTimeAlarm()V

    .line 1047
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchPdusCTC([[BLandroid/telephony/LmsTokenCTC;I)V

    .line 1048
    const/4 v3, 0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1049
    const/4 v3, 0x1

    .line 1056
    if-eqz v13, :cond_4

    .line 1057
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 1056
    .end local v22    # "lmsToken":Landroid/telephony/LmsTokenCTC;
    :cond_b
    if-eqz v13, :cond_0

    .line 1057
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1052
    .end local v7    # "whereArgs":[Ljava/lang/String;
    .end local v9    # "address":Ljava/lang/String;
    .end local v12    # "count":Ljava/lang/String;
    .end local v14    # "cursorCount":I
    .end local v29    # "refNumber":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 1053
    .local v16, "e":Landroid/database/SQLException;
    :try_start_2
    const-string v3, "Can\'t access multipart SMS database"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1054
    const/4 v3, 0x0

    .line 1056
    if-eqz v13, :cond_4

    .line 1057
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_3

    .line 1056
    .end local v16    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v3

    if-eqz v13, :cond_c

    .line 1057
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_c
    throw v3

    .line 1107
    .end local v13    # "cursor":Landroid/database/Cursor;
    .restart local v10    # "arr$":[[B
    .restart local v18    # "i$":I
    .restart local v21    # "len$":I
    .restart local v25    # "output":Ljava/io/ByteArrayOutputStream;
    .restart local v31    # "resultReceiver":Landroid/content/BroadcastReceiver;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPushAddress(Ljava/lang/String;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual/range {v25 .. v25}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v30

    .line 1110
    .local v30, "result":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dispatchWapPdu() returned "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1113
    const/4 v3, -0x1

    move/from16 v0, v30

    if-eq v0, v3, :cond_e

    .line 1114
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1115
    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 1120
    :cond_e
    const/4 v3, -0x1

    move/from16 v0, v30

    if-ne v0, v3, :cond_f

    const/4 v3, 0x1

    goto/16 :goto_3

    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 1124
    .end local v10    # "arr$":[[B
    .end local v18    # "i$":I
    .end local v21    # "len$":I
    .end local v25    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v30    # "result":I
    :cond_10
    const/4 v3, -0x1

    if-ne v15, v3, :cond_12

    .line 1151
    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1155
    .local v20, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v11

    .line 1156
    .local v11, "componentName":Landroid/content/ComponentName;
    if-eqz v11, :cond_11

    .line 1158
    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1159
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Delivering SMS to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1167
    .end local v11    # "componentName":Landroid/content/ComponentName;
    :cond_11
    :goto_5
    const-string v3, "pdus"

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1168
    const-string v3, "format"

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    const-string v3, "simSlot"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSimSlot()I

    move-result v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1172
    const-string v3, "android.permission.RECEIVE_SMS"

    const/16 v4, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 1174
    const/4 v3, 0x1

    goto/16 :goto_3

    .line 1163
    .end local v20    # "intent":Landroid/content/Intent;
    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sms://localhost:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v32

    .line 1164
    .local v32, "uri":Landroid/net/Uri;
    new-instance v20, Landroid/content/Intent;

    const-string v3, "android.intent.action.DATA_SMS_RECEIVED"

    move-object/from16 v0, v20

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .restart local v20    # "intent":Landroid/content/Intent;
    goto :goto_5
.end method

.method protected setCarrierLockEnabled(Ljava/lang/String;)V
    .locals 11
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 2292
    const/4 v0, 0x0

    .line 2294
    .local v0, "bufW":Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v6, Ljava/io/File;

    const-string v8, "/efs/sms"

    invoke-direct {v6, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2296
    .local v6, "folder":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 2297
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v7

    .line 2299
    .local v7, "status":Z
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z

    .line 2300
    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setWritable(ZZ)Z

    .line 2301
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Ljava/io/File;->setExecutable(ZZ)Z

    .line 2302
    const-string v8, "InboundSmsHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "make folder /efs/sms  directory creation status: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    .end local v7    # "status":Z
    :cond_0
    new-instance v5, Ljava/io/File;

    const-string v8, "/efs/sms/sktcarrierlockmode"

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2306
    .local v5, "f":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 2307
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z

    .line 2308
    const-string v8, "InboundSmsHandler"

    const-string v9, "make /efs/sms/sktcarrierlockmode"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {v5, v8, v9}, Ljava/io/File;->setReadable(ZZ)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2318
    .end local v5    # "f":Ljava/io/File;
    .end local v6    # "folder":Ljava/io/File;
    :cond_1
    :goto_0
    :try_start_1
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/FileWriter;

    const-string v9, "/efs/sms/sktcarrierlockmode"

    invoke-direct {v8, v9}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 2319
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .local v1, "bufW":Ljava/io/BufferedWriter;
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 2320
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 2321
    const-string v8, "InboundSmsHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bufW.write + "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    move-object v0, v1

    .line 2342
    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    :goto_1
    return-void

    .line 2311
    :catch_0
    move-exception v4

    .line 2312
    .local v4, "ex":Ljava/io/FileNotFoundException;
    const-string v8, "InboundSmsHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2313
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 2314
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "InboundSmsHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2323
    .end local v2    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v4

    .line 2324
    .restart local v4    # "ex":Ljava/io/FileNotFoundException;
    :goto_2
    if-eqz v0, :cond_2

    .line 2326
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 2331
    :cond_2
    :goto_3
    const-string v8, "InboundSmsHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FileNotFoundException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2327
    :catch_3
    move-exception v3

    .line 2328
    .local v3, "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3

    .line 2332
    .end local v3    # "e1":Ljava/io/IOException;
    .end local v4    # "ex":Ljava/io/FileNotFoundException;
    :catch_4
    move-exception v2

    .line 2333
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_4
    if-eqz v0, :cond_3

    .line 2335
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    .line 2340
    :cond_3
    :goto_5
    const-string v8, "InboundSmsHandler"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2336
    :catch_5
    move-exception v3

    .line 2337
    .restart local v3    # "e1":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    .line 2332
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "e1":Ljava/io/IOException;
    .restart local v1    # "bufW":Ljava/io/BufferedWriter;
    :catch_6
    move-exception v2

    move-object v0, v1

    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 2323
    .end local v0    # "bufW":Ljava/io/BufferedWriter;
    .restart local v1    # "bufW":Ljava/io/BufferedWriter;
    :catch_7
    move-exception v4

    move-object v0, v1

    .end local v1    # "bufW":Ljava/io/BufferedWriter;
    .restart local v0    # "bufW":Ljava/io/BufferedWriter;
    goto :goto_2
.end method

.method protected storeLatestSmsInfo(Ljava/lang/String;JZ)V
    .locals 5
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timestamp"    # J
    .param p4, "iscdma"    # Z

    .prologue
    .line 2218
    const-string v2, "InboundSmsHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " Storing latest sms information:  for timestamp = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in preferences."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2222
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2223
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsAddress:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2224
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsTimestamp:Ljava/lang/String;

    invoke-interface {v0, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 2226
    if-eqz p4, :cond_0

    .line 2227
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsType:Ljava/lang/String;

    const-string v3, "3gpp2"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2232
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2233
    return-void

    .line 2229
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLatestSmsType:Ljava/lang/String;

    const-string v3, "3gpp"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method protected storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "timeStamp"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "isInbound"    # Z

    .prologue
    const/4 v0, 0x5

    .line 2378
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getDeviceInventory()Landroid/sec/enterprise/DeviceInventory;

    move-result-object v6

    .line 2379
    .local v6, "deviceInventory":Landroid/sec/enterprise/DeviceInventory;
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/sec/enterprise/PhoneRestrictionPolicy;

    move-result-object v7

    .line 2380
    .local v7, "phoneRestriction":Landroid/sec/enterprise/PhoneRestrictionPolicy;
    if-nez p4, :cond_0

    invoke-virtual {v7}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->isLimitNumberOfSmsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2381
    invoke-virtual {v7}, Landroid/sec/enterprise/PhoneRestrictionPolicy;->addNumberOfOutgoingSms()Z

    .line 2383
    :cond_0
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/sec/enterprise/DeviceInventory;->isSMSCaptureEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2384
    invoke-virtual {v6, p1, p2, p3, p4}, Landroid/sec/enterprise/DeviceInventory;->storeSMS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2387
    :cond_1
    const/4 v2, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Receiving sms succeeded."

    move v1, v0

    invoke-static/range {v0 .. v5}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    .line 2391
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 358
    const/4 v0, 0x7

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    .line 359
    return-void
.end method

.method protected updateVoicemailCount(I)V
    .locals 14
    .param p1, "unReadCount"    # I

    .prologue
    .line 2264
    const-string v3, "package"

    .line 2265
    .local v3, "PACKAGE_NAME":Ljava/lang/String;
    const-string v2, "class"

    .line 2266
    .local v2, "CLASS_NAME":Ljava/lang/String;
    const-string v0, "badgecount"

    .line 2267
    .local v0, "BADGECOUNT_NAME":Ljava/lang/String;
    const-string v5, "com.samsung.vvm"

    .line 2268
    .local v5, "VVM_PACKAGE":Ljava/lang/String;
    const-string v4, "com.samsung.vvm.vvmapp.VVMApplication"

    .line 2269
    .local v4, "VVM_LAUNCHER_CLASS":Ljava/lang/String;
    const-string v1, "content://com.sec.badge/apps"

    .line 2271
    .local v1, "BADGE_URI":Ljava/lang/String;
    const-string v11, "VZW"

    const-string v12, "OPEN"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v11, "true"

    const-string v12, "ro.HorizontalVVM"

    const-string v13, "false"

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 2274
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 2275
    .local v7, "contentResolver":Landroid/content/ContentResolver;
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 2276
    .local v9, "newValues":Landroid/content/ContentValues;
    const-string v11, "package"

    const-string v12, "com.samsung.vvm"

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2277
    const-string v11, "class"

    const-string v12, "com.samsung.vvm.vvmapp.VVMApplication"

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2278
    const-string v11, "badgecount"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2279
    const-string v10, "package=\'com.samsung.vvm\' AND class=\'com.samsung.vvm.vvmapp.VVMApplication\'"

    .line 2280
    .local v10, "where":Ljava/lang/String;
    const-string v11, "content://com.sec.badge/apps"

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 2281
    .local v6, "badgeUri":Landroid/net/Uri;
    const/4 v11, 0x0

    invoke-virtual {v7, v6, v9, v10, v11}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2282
    const-string v11, "InboundSmsHandler"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Updating Unread count badge: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2289
    .end local v6    # "badgeUri":Landroid/net/Uri;
    .end local v7    # "contentResolver":Landroid/content/ContentResolver;
    .end local v9    # "newValues":Landroid/content/ContentValues;
    .end local v10    # "where":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2283
    :catch_0
    move-exception v8

    .line 2285
    .local v8, "e":Ljava/lang/Exception;
    const-string v11, "InboundSmsHandler"

    const-string v12, "Excecption for upgrading Badge count"

    invoke-static {v11, v12}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: ContactsSecurity part::tamrylei::2015-05-26"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 721
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 722
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v3, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 723
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 724
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 725
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 726
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    aput-object p2, v1, v3

    .line 727
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 728
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x3

    aput-object p4, v1, v2

    .line 729
    const-string v1, "com.android.internal.telephony.InboundSmsHandler#dispatchIntent"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 730
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    :goto_0
    return-void

    .line 733
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->tos_org_dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method
