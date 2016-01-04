.class public Lcom/movial/ipphone/IPPhoneProxy;
.super Landroid/os/Handler;
.source "IPPhoneProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/Phone;


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x2710

.field private static final DELAY_BROADCAST_OPERATORNAME:I = 0x3e8

.field private static final DELAY_REBIND_IPSERVICE:I = 0x1388

.field private static final EVENT_BIND_TO_IPSERVICE:I = 0x5

.field private static final EVENT_BROADCAST_OPERATORNAME:I = 0x6

.field public static final EVENT_EMERGENCY_PREF_CHANGED:I = 0x7

.field private static final EVENT_RADIO_ON:I = 0x2

.field private static final EVENT_REQUEST_VOICE_RADIO_TECH_DONE:I = 0x3

.field private static final EVENT_RIL_CONNECTED:I = 0x4

.field private static final EVENT_UPDATE_PHONE_OBJECT:I = 0x8

.field private static final EVENT_VOICE_RADIO_TECH_CHANGED:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "IPPhoneProxy"

.field private static final TAG:Ljava/lang/String; = "IPPhoneProxy"

.field public static final lockForRadioTechnologyChange:Ljava/lang/Object;

.field private static mRegistered:Z


# instance fields
.field private final binded:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

.field private forceEmergency:Z

.field private mActivePhone:Lcom/android/internal/telephony/Phone;

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mIPPhone:Lcom/movial/ipphone/IPPhone;

.field private mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

.field private mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

.field private mIPStateListener:Lcom/movial/ipphone/IPStateListener;

.field protected mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

.field private mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

.field private mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOperatorName:Ljava/lang/String;

.field private mOutgoingPhone:Ljava/lang/String;

.field private mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

.field private mRealName:Ljava/lang/String;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResetModemOnRadioTechnologyChange:Z

.field private mRilVersion:I

.field private mRingingCall:Lcom/android/internal/telephony/Call;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 131
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/movial/ipphone/IPPhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    sput-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Lcom/android/internal/telephony/IccSmsInterfaceManager;)V
    .locals 9
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;
    .param p4, "iccSmsInterfaceManager"    # Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 176
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 150
    iput-boolean v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    .line 173
    iput-boolean v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    .line 487
    new-instance v1, Lcom/movial/ipphone/IPPhoneProxy$1;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhoneProxy$1;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 517
    new-instance v1, Lcom/movial/ipphone/IPPhoneProxy$2;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/movial/ipphone/IPPhoneProxy$2;-><init>(Lcom/movial/ipphone/IPPhoneProxy;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mObserver:Landroid/database/ContentObserver;

    .line 528
    new-instance v1, Lcom/movial/ipphone/IPPhoneProxy$3;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhoneProxy$3;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    .line 557
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 558
    new-instance v1, Ljava/util/concurrent/CyclicBarrier;

    invoke-direct {v1, v7}, Ljava/util/concurrent/CyclicBarrier;-><init>(I)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    .line 559
    new-instance v1, Lcom/movial/ipphone/IPPhoneProxy$4;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/IPPhoneProxy$4;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    .line 177
    const-string v1, "IPPhoneProxy"

    invoke-static {v1}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 179
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 180
    new-instance v1, Lcom/movial/ipphone/IPPhone;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, v2, p2, p3}, Lcom/movial/ipphone/IPPhone;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    .line 182
    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    invoke-direct {p0, v1}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    .line 184
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    invoke-static {v1, v2, v6}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/movial/ipphone/IPPhoneSettings;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "CELL_ONLY"

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 190
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "GBA_INIT"

    invoke-static {v1, v2, v4}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 195
    iput-object p4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    .line 197
    new-instance v2, Lcom/movial/ipphone/IPSMSDispatcher;

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v4, v1, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    iget-object v5, v1, Lcom/android/internal/telephony/PhoneBase;->mSmsUsageMonitor:Lcom/android/internal/telephony/SmsUsageMonitor;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->getSMSDispatcher()Lcom/android/internal/telephony/SMSDispatcher;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/ImsSMSDispatcher;

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/movial/ipphone/IPSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

    .line 199
    new-instance v1, Lcom/movial/ipphone/EmergencyCallController;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v1, p0, v2}, Lcom/movial/ipphone/EmergencyCallController;-><init>(Lcom/movial/ipphone/IPPhoneProxy;Lcom/android/internal/telephony/Phone;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    .line 207
    new-instance v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    .line 209
    new-instance v1, Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    .line 210
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 212
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForRilConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 213
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v7, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 214
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForVoiceRadioTechChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.movial.gba_initialized"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    const-string v1, "com.movial.ACTION_TERMINATE_STACK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 220
    const-string v1, "com.movial.ACTION_REREAD_ISIM"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 221
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 224
    new-instance v2, Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-direct {v2, v3, v4, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    .line 225
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v6, :cond_2

    .line 227
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 231
    :cond_1
    :goto_0
    return-void

    .line 228
    :cond_2
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v7, :cond_1

    .line 229
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->unbindService(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/movial/ipphone/IPPhoneProxy;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->updateNetworkName(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IIPRegistry;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/movial/ipphone/IPPhoneProxy;Lcom/movial/ipphone/IIPRegistry;)Lcom/movial/ipphone/IIPRegistry;
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Lcom/movial/ipphone/IIPRegistry;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/movial/ipphone/IPPhoneProxy;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/movial/ipphone/IPPhoneProxy;)Ljava/util/concurrent/CyclicBarrier;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPStateListener:Lcom/movial/ipphone/IPStateListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindToIPRegistry()V

    return-void
.end method

.method static synthetic access$200(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    return-void
.end method

.method static synthetic access$300(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/IPPhone;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    return-object v0
.end method

.method static synthetic access$400(Lcom/movial/ipphone/IPPhoneProxy;)Lcom/movial/ipphone/EmergencyCallController;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->setIPSMSDispatcher(Z)V

    return-void
.end method

.method static synthetic access$600()Z
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return v0
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 130
    sput-boolean p0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return p0
.end method

.method static synthetic access$700(Lcom/movial/ipphone/IPPhoneProxy;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p1, "x1"    # Z

    .prologue
    .line 130
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/movial/ipphone/IPPhoneProxy;)V
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/IPPhoneProxy;

    .prologue
    .line 130
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->broadcastOperatorName()V

    return-void
.end method

.method static synthetic access$900(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 130
    invoke-static {p0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private bindService()V
    .locals 4

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 634
    :goto_0
    return-void

    .line 628
    :cond_0
    new-instance v0, Lcom/movial/ipphone/IPPhoneProxy$5;

    invoke-direct {v0, p0}, Lcom/movial/ipphone/IPPhoneProxy$5;-><init>(Lcom/movial/ipphone/IPPhoneProxy;)V

    .line 633
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private bindToIPRegistry()V
    .locals 6

    .prologue
    .line 599
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    monitor-enter v3

    .line 600
    :try_start_0
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_0

    .line 601
    const-string v2, "IPPhoneProxy"

    const-string v4, "bindToIPRegistry"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    invoke-virtual {v2}, Ljava/util/concurrent/CyclicBarrier;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/movial/ipphone/IIPRegistry;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 605
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.movial.ipservice"

    const-string v4, "com.movial.ipservice.IPService"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 606
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v2, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 607
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->waitConnectionResponse()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 612
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 613
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "IPPhoneProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bindService FAILED. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 612
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private broadcastOperatorName()V
    .locals 0

    .prologue
    .line 1743
    return-void
.end method

.method private deleteAndCreatePhone(I)V
    .locals 4
    .param p1, "newVoiceRadioTech"    # I

    .prologue
    .line 417
    const-string v1, "Unknown"

    .line 418
    .local v1, "outgoingPhoneName":Ljava/lang/String;
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 420
    .local v0, "oldPhone":Lcom/android/internal/telephony/Phone;
    if-eqz v0, :cond_0

    move-object v2, v0

    .line 421
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v1

    .line 424
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Switching Voice Phone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " >>> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "GSM"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 427
    if-eqz v0, :cond_1

    .line 428
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/CallManager;->unregisterPhone(Lcom/android/internal/telephony/Phone;)V

    .line 429
    const-string v2, "Disposing old phone.."

    invoke-static {v2}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 430
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->dispose()V

    .line 440
    :cond_1
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 441
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getCdmaPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 446
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 447
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->removeReferences()V

    .line 450
    :cond_3
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v2, :cond_4

    .line 451
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 454
    :cond_4
    const/4 v0, 0x0

    .line 455
    return-void

    .line 424
    :cond_5
    const-string v2, "CDMA"

    goto :goto_0

    .line 442
    :cond_6
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 443
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getGsmPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iput-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    goto :goto_1
.end method

.method public static getRegister()Z
    .locals 1

    .prologue
    .line 1912
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 3
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 318
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 326
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 322
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneProxy] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method

.method private phoneObjectUpdater(I)V
    .locals 8
    .param p1, "newVoiceRadioTech"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 330
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 332
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_2

    .line 334
    const/16 v3, 0xe

    if-ne p1, v3, :cond_0

    .line 335
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0036

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 337
    .local v2, "volteReplacementRat":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: volteReplacementRat="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 338
    if-eqz v2, :cond_0

    .line 339
    move p1, v2

    .line 343
    .end local v2    # "volteReplacementRat":I
    :cond_0
    iget v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRilVersion:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getLteOnCdmaMode()I

    move-result v3

    if-ne v3, v6, :cond_3

    .line 348
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v7, :cond_1

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: LTE ON CDMA property is set. Use CDMA Phone newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 412
    :goto_0
    return-void

    .line 354
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: LTE ON CDMA property is set. Switch to CDMALTEPhone newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 357
    const/4 p1, 0x6

    .line 373
    :cond_2
    if-nez p1, :cond_6

    .line 376
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: Unknown rat ignore,  newVoiceRadioTech=Unknown. mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 360
    :cond_3
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-eq v3, v7, :cond_5

    :cond_4
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    if-ne v3, v6, :cond_2

    .line 365
    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phoneObjectUpdater: No change ignore, newVoiceRadioTech="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mActivePhone="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 381
    :cond_6
    const/4 v1, 0x0

    .line 382
    .local v1, "oldPowerState":Z
    iget-boolean v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v3, :cond_7

    .line 383
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 384
    const/4 v1, 0x1

    .line 385
    const-string v3, "phoneObjectUpdater: Setting Radio Power to Off"

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 386
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 390
    :cond_7
    invoke-direct {p0, p1}, Lcom/movial/ipphone/IPPhoneProxy;->deleteAndCreatePhone(I)V

    .line 392
    iget-boolean v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mResetModemOnRadioTechnologyChange:Z

    if-eqz v3, :cond_8

    if-eqz v1, :cond_8

    .line 393
    const-string v3, "phoneObjectUpdater: Resetting Radio"

    invoke-static {v3}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 394
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3, v1, v5}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    .line 398
    :cond_8
    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V

    .line 399
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccPhoneBookInterfaceManagerProxy:Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManagerProxy;->setmIccPhoneBookInterfaceManager(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    .line 401
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mPhoneSubInfoProxy:Lcom/android/internal/telephony/PhoneSubInfoProxy;

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->setmPhoneSubInfo(Lcom/android/internal/telephony/PhoneSubInfo;)V

    .line 403
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    check-cast v3, Lcom/android/internal/telephony/PhoneBase;

    iget-object v3, v3, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 404
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setVoiceRadioTech(I)V

    .line 407
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 409
    const-string v3, "phoneName"

    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 410
    const/4 v3, -0x1

    invoke-static {v0, v5, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private setCall(Z)V
    .locals 4
    .param p1, "result"    # Z

    .prologue
    .line 459
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 460
    .local v0, "f":Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 461
    .local v1, "g":Lcom/android/internal/telephony/Call;
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 463
    .local v2, "r":Lcom/android/internal/telephony/Call;
    if-eqz p1, :cond_0

    .line 464
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 465
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 466
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v3}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 473
    :goto_0
    const/4 v0, 0x0

    .line 474
    const/4 v1, 0x0

    .line 475
    const/4 v2, 0x0

    .line 476
    return-void

    .line 468
    :cond_0
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 469
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 470
    iget-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    iput-object v3, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    goto :goto_0
.end method

.method private setIPSMSDispatcher(Z)V
    .locals 3
    .param p1, "result"    # Z

    .prologue
    .line 479
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIPSMSDispatcher "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    if-eqz p1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPSMSDispatcher:Lcom/movial/ipphone/IPSMSDispatcher;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setIPSMSDispatcher(Lcom/android/internal/telephony/SMSDispatcher;)V

    .line 485
    :goto_0
    return-void

    .line 483
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccSmsInterfaceManager;->setIPSMSDispatcher(Lcom/android/internal/telephony/SMSDispatcher;)V

    goto :goto_0
.end method

.method private unbindService(Z)V
    .locals 4
    .param p1, "restart"    # Z

    .prologue
    const/4 v3, 0x0

    .line 637
    const-string v0, "IPPhoneProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unbindService. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 641
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPRegistry:Lcom/movial/ipphone/IIPRegistry;

    .line 642
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->binded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 644
    sput-boolean v3, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    .line 645
    invoke-direct {p0, v3}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    .line 648
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->unbindService()V

    .line 650
    if-eqz p1, :cond_1

    .line 651
    const/4 v0, 0x5

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 652
    :cond_1
    return-void
.end method

.method private updateNetworkName(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 1704
    const-string v5, "showSpn"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 1705
    .local v3, "showSpn":Z
    const-string v5, "spn"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1706
    .local v4, "spn":Ljava/lang/String;
    const-string v5, "showPlmn"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 1707
    .local v2, "showPlmn":Z
    const-string v5, "plmn"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1709
    .local v1, "plmn":Ljava/lang/String;
    const-string v5, "com.movial.IMS_WIFICALL"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1710
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_6

    const-string v5, "1"

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "null"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_8

    const-string v5, "1"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string v5, "null"

    :goto_3
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRealName:Ljava/lang/String;

    .line 1713
    :cond_0
    const-string v0, ""

    .line 1714
    .local v0, "name":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1715
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_a

    const-string v5, "1"

    :goto_4
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "null"

    .end local v4    # "spn":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v2, :cond_b

    const-string v5, "1"

    :goto_5
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v1, "null"

    .end local v1    # "plmn":Ljava/lang/String;
    :cond_3
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1718
    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 1719
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1720
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mOperatorName:Ljava/lang/String;

    .line 1723
    :cond_5
    :goto_6
    return-void

    .line 1710
    .end local v0    # "name":Ljava/lang/String;
    .restart local v1    # "plmn":Ljava/lang/String;
    .restart local v4    # "spn":Ljava/lang/String;
    :cond_6
    const-string v5, "0"

    goto/16 :goto_0

    :cond_7
    move-object v5, v4

    goto/16 :goto_1

    :cond_8
    const-string v5, "0"

    goto/16 :goto_2

    :cond_9
    move-object v5, v1

    goto :goto_3

    .line 1715
    .restart local v0    # "name":Ljava/lang/String;
    :cond_a
    const-string v5, "0"

    goto :goto_4

    .end local v4    # "spn":Ljava/lang/String;
    :cond_b
    const-string v5, "0"

    goto :goto_5

    .line 1721
    .end local v1    # "plmn":Ljava/lang/String;
    :cond_c
    const-string v5, "com.movial.IMS_WIFICALL"

    invoke-virtual {p1, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1722
    const/4 v5, 0x6

    const-wide/16 v6, 0x3e8

    invoke-virtual {p0, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_6
.end method

.method private waitConnectionResponse()V
    .locals 5

    .prologue
    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->cyclicBarrier:Ljava/util/concurrent/CyclicBarrier;

    const-wide/16 v2, 0x2710

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/CyclicBarrier;->await(JLjava/util/concurrent/TimeUnit;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v0

    .line 619
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "IPPhoneProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "waitConnectionResponse FAILED. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method


# virtual methods
.method public IsDomesticRoaming()Z
    .locals 1

    .prologue
    .line 1839
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsDomesticRoaming()Z

    move-result v0

    return v0
.end method

.method public IsInternationalRoaming()Z
    .locals 1

    .prologue
    .line 1835
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->IsInternationalRoaming()Z

    move-result v0

    return v0
.end method

.method public SimSlotActivation(Z)V
    .locals 0
    .param p1, "activation"    # Z

    .prologue
    .line 1936
    return-void
.end method

.method public SimSlotOnOff(I)V
    .locals 0
    .param p1, "on"    # I

    .prologue
    .line 2047
    return-void
.end method

.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 935
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->acceptCall()V

    .line 937
    :goto_0
    return-void

    .line 936
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    goto :goto_0
.end method

.method public acceptCall(I)V
    .locals 1
    .param p1, "callType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 939
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->acceptCall()V

    .line 941
    :goto_0
    return-void

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    goto :goto_0
.end method

.method public acceptConnectionTypeChange(Lcom/android/internal/telephony/Connection;Ljava/util/Map;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Connection;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 992
    .local p2, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1464
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->activateCellBroadcastSms(ILandroid/os/Message;)V

    .line 1465
    return-void
.end method

.method public addUserToConfCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1887
    const/4 v0, 0x0

    return-object v0
.end method

.method public akaAuthenticate([B[BLandroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1687
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->akaAuthenticate([B[BLandroid/os/Message;)V

    .line 1688
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 1035
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->canConference()Z

    move-result v0

    .line 1036
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    goto :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 1055
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->canTransfer()Z

    move-result v0

    .line 1056
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1819
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    .line 1820
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newPwdAgain"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1828
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    .line 1829
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;
    .param p2, "conn"    # Lcom/android/internal/telephony/Connection;
    .param p3, "newCallType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            "Lcom/android/internal/telephony/Connection;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 981
    .local p4, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->clearDisconnected()V

    .line 1066
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 1067
    return-void
.end method

.method public conference()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1040
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->conference()V

    .line 1042
    :goto_0
    return-void

    .line 1041
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1111
    const/4 v0, 0x0

    .line 1112
    .local v0, "info":Lcom/android/internal/telephony/UUSInfo;
    invoke-virtual {p0, p1, v0}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "CallType"    # I
    .param p3, "CallDomain"    # I
    .param p4, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1130
    const/4 v0, 0x0

    .line 1131
    .local v0, "info":Lcom/android/internal/telephony/UUSInfo;
    invoke-virtual {p0, p1, v0}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "CallType"    # I
    .param p3, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1117
    const/4 v0, 0x0

    .line 1118
    .local v0, "info":Lcom/android/internal/telephony/UUSInfo;
    invoke-virtual {p0, p1, v0}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/Call$CallType;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "callType"    # Lcom/android/internal/telephony/Call$CallType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1124
    const/4 v0, 0x0

    .line 1125
    .local v0, "info":Lcom/android/internal/telephony/UUSInfo;
    invoke-virtual {p0, p1, v0}, Lcom/movial/ipphone/IPPhoneProxy;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 3
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1095
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    .line 1096
    .local v0, "isEmergencyCall":Z
    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    if-eqz v1, :cond_1

    .line 1097
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/EmergencyCallController;->transitToDialingState(Ljava/lang/String;)V

    .line 1100
    :cond_1
    sget-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v1, :cond_2

    .line 1101
    const-string v1, "IPPhoneProxy"

    const-string v2, "ims call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/IPPhone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 1106
    :goto_0
    return-object v1

    .line 1105
    :cond_2
    const-string v1, "IPPhoneProxy"

    const-string v2, "gsm call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    goto :goto_0
.end method

.method public dialConferenceCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1883
    const/4 v0, 0x0

    return-object v0
.end method

.method public dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1771
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1772
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->dialVideoCall(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 1366
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableDnsCheck(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 708
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableDnsCheck(Z)V

    .line 709
    return-void
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1328
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1329
    return-void
.end method

.method public dispose()V
    .locals 1

    .prologue
    .line 1649
    const-string v0, "dispose"

    invoke-static {v0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 1650
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 1651
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForVoiceRadioTechChanged(Landroid/os/Handler;)V

    .line 1652
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForRilConnected(Landroid/os/Handler;)V

    .line 1655
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 1362
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->enableEnhancedVoicePrivacy(ZLandroid/os/Message;)V

    .line 1047
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1325
    return-void
.end method

.method public exitEmergencyCallbackMode()V
    .locals 1

    .prologue
    .line 1514
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->exitEmergencyCallbackMode()V

    .line 1516
    :goto_0
    return-void

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->exitEmergencyCallbackMode()V

    goto :goto_0
.end method

.method public explicitCallTransfer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1060
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->explicitCallTransfer()V

    .line 1062
    :goto_0
    return-void

    .line 1061
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    goto :goto_0
.end method

.method public gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1691
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V

    .line 1692
    return-void
.end method

.method public gbaAuthenticateNaf([BLandroid/os/Message;)V
    .locals 1
    .param p1, "nafId"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1695
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->gbaAuthenticateNaf([BLandroid/os/Message;)V

    .line 1696
    return-void
.end method

.method public getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 737
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getActiveApnHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 733
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getActivePhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 673
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getAllCellInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1262
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getBand(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1951
    return-void
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1780
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 1781
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V

    .line 1782
    return-void
.end method

.method public getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1789
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1790
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->getCallBarringOption(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1791
    return-void
.end method

.method public getCallDomain(Lcom/android/internal/telephony/Call;)I
    .locals 1
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 963
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallDomain(Lcom/android/internal/telephony/Call;)I

    move-result v0

    return v0
.end method

.method public getCallForwardingIndicator()Z
    .locals 1

    .prologue
    .line 1167
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCallForwardingIndicator()Z

    move-result v0

    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1217
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    .line 1219
    :goto_0
    return-void

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "dialingNumber"    # Ljava/lang/String;
    .param p3, "serviceClass"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1226
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    .line 1227
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILjava/lang/String;ILandroid/os/Message;)V

    .line 1228
    return-void
.end method

.method public getCallType(Lcom/android/internal/telephony/Call;)I
    .locals 1
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 951
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallType(Lcom/android/internal/telephony/Call;)I

    move-result v0

    return v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1251
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->getCallWaiting(Landroid/os/Message;)V

    .line 1253
    :goto_0
    return-void

    .line 1252
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getCatService()Lcom/android/internal/telephony/cat/CatService;
    .locals 1

    .prologue
    .line 1923
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaCurrIdd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1907
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1491
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1496
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1176
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getCellBroadcastSmsConfig(Landroid/os/Message;)V

    .line 1470
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 666
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataCallList(Landroid/os/Message;)V

    .line 1317
    return-void
.end method

.method public getDataConnectionState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 696
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    return-object v0
.end method

.method public getDataDunEnabled()Z
    .locals 1

    .prologue
    .line 2080
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1354
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1404
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDeviceSvn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDualSimSlotActivationState()Z
    .locals 1

    .prologue
    .line 2043
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDualSimSlotActivationState()Z

    move-result v0

    return v0
.end method

.method public getDunDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 2072
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    return-object v0
.end method

.method public getDunDataRxBarLevel()I
    .locals 1

    .prologue
    .line 2088
    const/4 v0, 0x0

    return v0
.end method

.method public getDunDataState()I
    .locals 1

    .prologue
    .line 2096
    const/4 v0, 0x0

    return v0
.end method

.method public getDunDataTxBarLevel()I
    .locals 1

    .prologue
    .line 2092
    const/4 v0, 0x0

    return v0
.end method

.method public getDunNetworkType()I
    .locals 1

    .prologue
    .line 2076
    const/4 v0, 0x0

    return v0
.end method

.method public getEmergencyCallPowerState()Z
    .locals 1

    .prologue
    .line 1758
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 1759
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getDesiredPowerState()Z

    move-result v0

    .line 1761
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getEmergencyPreference()I
    .locals 1

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0}, Lcom/movial/ipphone/EmergencyCallController;->getEmergencyPreference()I

    move-result v0

    return v0
.end method

.method public getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 1

    .prologue
    .line 1750
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0}, Lcom/movial/ipphone/EmergencyCallController;->getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;

    move-result-object v0

    return-object v0
.end method

.method public getEnhancedVoicePrivacy(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 1052
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFDNavailable()Z
    .locals 1

    .prologue
    .line 1850
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getFDNavailable()Z

    move-result v0

    return v0
.end method

.method public getForceEmergencyMode()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    return v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 1867
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccCard()Lcom/android/internal/telephony/IccCard;
    .locals 1

    .prologue
    .line 931
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1449
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;

    move-result-object v0

    return-object v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 1

    .prologue
    .line 927
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccCardProxy:Lcom/android/internal/telephony/uicc/IccCardProxy;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccRecordsLoaded()Z

    move-result v0

    return v0
.end method

.method public getIccSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccSmsInterfaceManager()Lcom/android/internal/telephony/IccSmsInterfaceManager;
    .locals 1

    .prologue
    .line 1445
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIccSmsInterfaceManager:Lcom/android/internal/telephony/IccSmsInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImei()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImeiInCDMAGSMPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImeiInCDMAGSMPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1086
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getImsForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getImsRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;
    .locals 1

    .prologue
    .line 1612
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIsimRecords()Lcom/android/internal/telephony/uicc/IsimRecords;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1190
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1171
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberType(I)Ljava/lang/String;
    .locals 1
    .param p1, "SimType"    # I

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLine1NumberType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkCapabilities(Ljava/lang/String;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 741
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getLinkProperties(Ljava/lang/String;)Landroid/net/LinkProperties;

    move-result-object v0

    return-object v0
.end method

.method public getLockNetworkInfos(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 2018
    return-void
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 1624
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMeid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessageWaitingIndicator()Z
    .locals 1

    .prologue
    .line 1162
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMessageWaitingIndicator()Z

    move-result v0

    return v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMsisdn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1298
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getMute()Z

    move-result v0

    .line 1299
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    goto :goto_0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getNeighboringCids(Landroid/os/Message;)V

    .line 1285
    return-void
.end method

.method public getOCSGLAvailable()Z
    .locals 2

    .prologue
    .line 1960
    const-string v0, "IPPhoneProxy"

    const-string v1, "Not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    const/4 v0, 0x0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1239
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 1241
    :goto_0
    return-void

    .line 1240
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public getPSISMSCavailable()Z
    .locals 1

    .prologue
    .line 2021
    const/4 v0, 0x0

    return v0
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 823
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    .line 824
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getPhoneIndex()I
    .locals 1

    .prologue
    .line 1904
    const/4 v0, 0x0

    return v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 725
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 0
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1856
    return-void
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 1281
    return-void
.end method

.method public getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I
    .locals 1
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1016
    const/4 v0, 0x0

    return v0
.end method

.method public getProvisioningData()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 2037
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getProvisioningData()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPsismsc()[B
    .locals 1

    .prologue
    .line 2025
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPsismsc()[B

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRingingCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSMSPavailable()Z

    move-result v0

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 1638
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSMSavailable()Z

    move-result v0

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 656
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 657
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    goto :goto_0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method public getSimSlot()I
    .locals 1

    .prologue
    .line 1967
    const/4 v0, 0x0

    return v0
.end method

.method public getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;
    .locals 1

    .prologue
    .line 1384
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    return-object v0
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1670
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSktImsiM()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1678
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSktIrm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmscAddress(Landroid/os/Message;)V
    .locals 1
    .param p1, "result"    # Landroid/os/Message;

    .prologue
    .line 1482
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1483
    return-void
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1918
    const/4 v0, 0x0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 3

    .prologue
    .line 716
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 717
    .local v0, "mGsm":Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v2, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v2}, Lcom/movial/ipphone/IPPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    .line 719
    .local v1, "mIP":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_1

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 721
    :goto_0
    return-object v2

    .line 720
    :cond_1
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v1, v2, :cond_3

    :cond_2
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 721
    :cond_3
    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1412
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberIdType(I)Ljava/lang/String;
    .locals 1
    .param p1, "SimType"    # I

    .prologue
    .line 2066
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getSubscriberIdType(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitTestMode()Z
    .locals 1

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUnitTestMode()Z

    move-result v0

    return v0
.end method

.method public getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;
    .locals 1

    .prologue
    .line 1845
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getUsimServiceTable()Lcom/android/internal/telephony/uicc/UsimServiceTable;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1207
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1203
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 1
    .param p1, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1139
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 255
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 256
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 310
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error! This handler was not registered for this message type. Message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/movial/ipphone/IPPhoneProxy;->loge(Ljava/lang/String;)V

    .line 314
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 315
    return-void

    .line 259
    :pswitch_0
    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v5, 0x3

    invoke-virtual {p0, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getVoiceRadioTechnology(Landroid/os/Message;)V

    goto :goto_0

    .line 264
    :pswitch_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 265
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRilVersion:I

    goto :goto_0

    .line 267
    :cond_0
    const-string v4, "Unexpected exception on EVENT_RIL_CONNECTED"

    invoke-static {v4}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 268
    const/4 v4, -0x1

    iput v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mRilVersion:I

    goto :goto_0

    .line 274
    :pswitch_2
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const-string v3, "EVENT_VOICE_RADIO_TECH_CHANGED"

    .line 277
    .local v3, "what":Ljava/lang/String;
    :goto_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 278
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    array-length v4, v4

    if-eqz v4, :cond_2

    .line 279
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    const/4 v5, 0x0

    aget v2, v4, v5

    .line 280
    .local v2, "newVoiceTech":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": newVoiceTech="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhoneProxy;->phoneObjectUpdater(I)V

    goto :goto_0

    .line 274
    .end local v2    # "newVoiceTech":I
    .end local v3    # "what":Ljava/lang/String;
    :cond_1
    const-string v3, "EVENT_REQUEST_VOICE_RADIO_TECH_DONE"

    goto :goto_1

    .line 283
    .restart local v3    # "what":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": has no tech!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/movial/ipphone/IPPhoneProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 286
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/movial/ipphone/IPPhoneProxy;->loge(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 291
    .end local v3    # "what":Ljava/lang/String;
    :pswitch_3
    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Lcom/movial/ipphone/IPPhoneProxy;->phoneObjectUpdater(I)V

    goto/16 :goto_0

    .line 295
    :pswitch_4
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 296
    .local v1, "emergencyCallPref":I
    iget-object v4, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v4, v1}, Lcom/movial/ipphone/EmergencyCallController;->setEmergencyPreference(I)V

    .line 297
    const-string v4, "IPPhoneProxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update mEmergencyCallPref to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 301
    .end local v1    # "emergencyCallPref":I
    :pswitch_5
    const-string v4, "IPPhoneProxy"

    const-string v5, "EVENT_BIND_TO_IPSERVICE"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->bindService()V

    goto/16 :goto_0

    .line 306
    :pswitch_6
    invoke-direct {p0}, Lcom/movial/ipphone/IPPhoneProxy;->broadcastOperatorName()V

    goto/16 :goto_0

    .line 256
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1135
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->handlePinMmi(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasIsim()Z
    .locals 1

    .prologue
    .line 1683
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->hasIsim()Z

    move-result v0

    return v0
.end method

.method public holdCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1030
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->switchHoldingAndActive()V

    .line 1032
    :goto_0
    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([BLandroid/os/Message;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .line 1309
    return-void
.end method

.method public invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1312
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    .line 1313
    return-void
.end method

.method public isCspPlmnEnabled()Z
    .locals 1

    .prologue
    .line 1608
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isCspPlmnEnabled()Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 2

    .prologue
    .line 1396
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    const-string v1, "default"

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDataConnectivityPossible(Ljava/lang/String;)Z
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isDnsCheckDisabled()Z
    .locals 1

    .prologue
    .line 712
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v0

    return v0
.end method

.method public isMMICode(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 1941
    const/4 v0, 0x0

    return v0
.end method

.method public isMinInfoReady()Z
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isMinInfoReady()Z

    move-result v0

    return v0
.end method

.method public isOtaSpNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialStr"    # Ljava/lang/String;

    .prologue
    .line 1524
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 1

    .prologue
    .line 1519
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->needsOtaServiceProvisioning()Z

    move-result v0

    return v0
.end method

.method public notifyDataActivity()V
    .locals 1

    .prologue
    .line 1478
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->notifyDataActivity()V

    .line 1479
    return-void
.end method

.method public notifyDunDataActivity()V
    .locals 0

    .prologue
    .line 2105
    return-void
.end method

.method public notifyDunDataConnection()V
    .locals 0

    .prologue
    .line 2101
    return-void
.end method

.method public queryAvailableBandMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1350
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryAvailableBandMode(Landroid/os/Message;)V

    .line 1351
    return-void
.end method

.method public queryCdmaRoamingPreference(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1370
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 1371
    return-void
.end method

.method public queryTTYMode(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1460
    return-void
.end method

.method public registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1582
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerFoT53ClirlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1583
    return-void
.end method

.method public registerForAvpUpgradeFailure(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 974
    return-void
.end method

.method public registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1529
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1530
    return-void
.end method

.method public registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 880
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 881
    return-void
.end method

.method public registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 794
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 795
    return-void
.end method

.method public registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1549
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForDisplayInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1550
    return-void
.end method

.method public registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 899
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 900
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForEcmTimerReset(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 901
    return-void
.end method

.method public registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 870
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOff(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 871
    return-void
.end method

.method public registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 860
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForInCallVoicePrivacyOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 861
    return-void
.end method

.method public registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 783
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 784
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForIncomingRing(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 785
    return-void
.end method

.method public registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForLineControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1575
    return-void
.end method

.method public registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 813
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 814
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 815
    return-void
.end method

.method public registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 804
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 805
    return-void
.end method

.method public registerForModifyCallRequest(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 968
    return-void
.end method

.method public registerForNewIMSCall(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1875
    return-void
.end method

.method public registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 773
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 774
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 775
    return-void
.end method

.method public registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1558
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1559
    return-void
.end method

.method public registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 763
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 764
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 765
    return-void
.end method

.method public registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRedirectedNumberInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1567
    return-void
.end method

.method public registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 919
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForResendIncallMute(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 920
    return-void
.end method

.method public registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 909
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 910
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->registerForRingbackTone(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 911
    return-void
.end method

.method public registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 833
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 834
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 835
    return-void
.end method

.method public registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1539
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSignalInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1540
    return-void
.end method

.method public registerForSrvccHandOver(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1894
    return-void
.end method

.method public registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 890
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSubscriptionInfoReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 891
    return-void
.end method

.method public registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 851
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 852
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 843
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 844
    return-void
.end method

.method public registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForT53AudioControlInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1591
    return-void
.end method

.method public registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 753
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 754
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->registerForUnknownConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 755
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1020
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->rejectCall()V

    .line 1022
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    goto :goto_0
.end method

.method public rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1000
    return-void
.end method

.method public removeReferences()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 1659
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    .line 1660
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    .line 1661
    iput-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    .line 1662
    return-void
.end method

.method public requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1616
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->requestIsimAuthentication(Ljava/lang/String;Landroid/os/Message;)V

    .line 1617
    return-void
.end method

.method public selectBand(ILandroid/os/Message;)V
    .locals 0
    .param p1, "band"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1948
    return-void
.end method

.method public selectCsg(Landroid/os/Message;)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1955
    const-string v0, "IPPhoneProxy"

    const-string v1, "selectCsg: not possible"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1269
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1270
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "operatorAlphaLong"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 1273
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1274
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1510
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 1511
    return-void
.end method

.method public sendDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 1143
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->sendDtmf(C)V

    .line 1145
    :goto_0
    return-void

    .line 1144
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    .line 828
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->sendUssdResponse(Ljava/lang/String;)V

    .line 830
    :goto_0
    return-void

    .line 829
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendUssdResponse(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1340
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setBandMode(ILandroid/os/Message;)V

    .line 1341
    return-void
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 6
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1810
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result v0

    .line 1811
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1799
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/movial/ipphone/IPPhone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    .line 1800
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v0

    goto :goto_0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 0
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1982
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1234
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/movial/ipphone/IPPhone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    .line 1236
    :goto_0
    return-void

    .line 1235
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/Phone;->setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1256
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->setCallWaiting(ZLandroid/os/Message;)V

    .line 1258
    :goto_0
    return-void

    .line 1257
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCallWaiting(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public setCdmaRoamingPreference(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaRoamingType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 1376
    return-void
.end method

.method public setCdmaSubscription(ILandroid/os/Message;)V
    .locals 1
    .param p1, "cdmaSubscriptionType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCdmaSubscription(ILandroid/os/Message;)V

    .line 1381
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1474
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setCellBroadcastSmsConfig([ILandroid/os/Message;)V

    .line 1475
    return-void
.end method

.method public setCellInfoListRate(I)V
    .locals 1
    .param p1, "rateInMillis"    # I

    .prologue
    .line 688
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setCellInfoListRate(I)V

    .line 689
    return-void
.end method

.method public setDataDunEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2085
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1358
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    .line 1359
    return-void
.end method

.method public setEchoSuppressionEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1304
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setEchoSuppressionEnabled(Z)V

    .line 1305
    return-void
.end method

.method public setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V
    .locals 1
    .param p1, "state"    # Lcom/movial/ipphone/IPUtils$EmergencyState;

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/EmergencyCallController;->setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V

    .line 1755
    return-void
.end method

.method public setForceEmergencyMode(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 234
    const-string v1, "IPPhoneProxy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setForceEmergencyMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {p0}, Lcom/movial/ipphone/IPPhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "CELL_ONLY"

    invoke-static {v1, v4, v2}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 236
    if-nez p1, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    .line 237
    if-nez p1, :cond_3

    :goto_1
    invoke-direct {p0, v2}, Lcom/movial/ipphone/IPPhoneProxy;->setCall(Z)V

    .line 240
    :cond_0
    iget-boolean v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    if-eq p1, v1, :cond_1

    .line 241
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.movial.force_emergency_changed"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "force"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 243
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    iget-object v1, p0, Lcom/movial/ipphone/IPPhoneProxy;->mEmergencyCallController:Lcom/movial/ipphone/EmergencyCallController;

    invoke-virtual {v1, p1}, Lcom/movial/ipphone/EmergencyCallController;->notifyForceEmergencyModeChanged(Z)V

    .line 246
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iput-boolean p1, p0, Lcom/movial/ipphone/IPPhoneProxy;->forceEmergency:Z

    .line 247
    return-void

    :cond_2
    move v1, v3

    .line 236
    goto :goto_0

    :cond_3
    move v2, v3

    .line 237
    goto :goto_1
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1700
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1701
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1195
    return-void
.end method

.method public setLteBandMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "bandMode"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1345
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setLteBandMode(ILandroid/os/Message;)V

    .line 1346
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .param p1, "muted"    # Z

    .prologue
    .line 1293
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->setMute(Z)V

    .line 1295
    :goto_0
    return-void

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1265
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1266
    return-void
.end method

.method public setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1598
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1599
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->setOnEcbModeExitResponse(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1600
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1289
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2, p3}, Lcom/movial/ipphone/IPPhone;->setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1290
    return-void
.end method

.method public setOnUnsolOemHookExtApp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2006
    return-void
.end method

.method public setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1988
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1245
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1, p2}, Lcom/movial/ipphone/IPPhone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    .line 1248
    :goto_0
    return-void

    .line 1246
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setOutgoingCallerIdDisplay(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "mode"    # I
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 1862
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 1
    .param p1, "networkType"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1276
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1277
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 1159
    return-void
.end method

.method public setRadioPowerOnNow()V
    .locals 0

    .prologue
    .line 1974
    return-void
.end method

.method public setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 1486
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1487
    return-void
.end method

.method public setTTYMode(ILandroid/os/Message;)V
    .locals 1
    .param p1, "ttyMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1454
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 1455
    return-void
.end method

.method public setTransmitPower(ILandroid/os/Message;)V
    .locals 1
    .param p1, "powerLevel"    # I
    .param p2, "onCompleted"    # Landroid/os/Message;

    .prologue
    .line 1766
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mCommandsInterface:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setTransmitPower(ILandroid/os/Message;)V

    .line 1767
    return-void
.end method

.method public setUnitTestMode(Z)V
    .locals 1
    .param p1, "f"    # Z

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setUnitTestMode(Z)V

    .line 1333
    return-void
.end method

.method public setVoiceDomainPref(ILandroid/os/Message;)V
    .locals 0
    .param p1, "on"    # I
    .param p2, "result"    # Landroid/os/Message;

    .prologue
    .line 2111
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/Phone;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1213
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 0
    .param p1, "line"    # I
    .param p2, "countWaiting"    # I

    .prologue
    .line 2000
    return-void
.end method

.method public startDtmf(C)V
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 1148
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->startDtmf(C)V

    .line 1150
    :goto_0
    return-void

    .line 1149
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_0
.end method

.method public startGlobalNetworkSearchTimer()V
    .locals 0

    .prologue
    .line 2050
    return-void
.end method

.method public startGlobalNoSvcChkTimer()V
    .locals 0

    .prologue
    .line 2056
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 1153
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->stopDtmf()V

    .line 1155
    :goto_0
    return-void

    .line 1154
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    goto :goto_0
.end method

.method public stopGlobalNetworkSearchTimer()V
    .locals 0

    .prologue
    .line 2053
    return-void
.end method

.method public stopGlobalNoSvcChkTimer()V
    .locals 0

    .prologue
    .line 2059
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 1025
    sget-boolean v0, Lcom/movial/ipphone/IPPhoneProxy;->mRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0}, Lcom/movial/ipphone/IPPhone;->switchHoldingAndActive()V

    .line 1027
    :goto_0
    return-void

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    goto :goto_0
.end method

.method public unSetOnUnsolOemHookExtApp(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 2012
    return-void
.end method

.method public unSetOnUnsolOemHookRaw(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1994
    return-void
.end method

.method public unregisterForAvpUpgradeFailure(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 977
    return-void
.end method

.method public unregisterForCallWaiting(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1535
    return-void
.end method

.method public unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 886
    return-void
.end method

.method public unregisterForDisconnect(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 798
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 799
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 800
    return-void
.end method

.method public unregisterForDisplayInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1554
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForDisplayInfo(Landroid/os/Handler;)V

    .line 1555
    return-void
.end method

.method public unregisterForEcmTimerReset(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 904
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 905
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForEcmTimerReset(Landroid/os/Handler;)V

    .line 906
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 875
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOff(Landroid/os/Handler;)V

    .line 876
    return-void
.end method

.method public unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 865
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForInCallVoicePrivacyOn(Landroid/os/Handler;)V

    .line 866
    return-void
.end method

.method public unregisterForIncomingRing(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 789
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForIncomingRing(Landroid/os/Handler;)V

    .line 790
    return-void
.end method

.method public unregisterForLineControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1578
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForLineControlInfo(Landroid/os/Handler;)V

    .line 1579
    return-void
.end method

.method public unregisterForMmiComplete(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 819
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 820
    return-void
.end method

.method public unregisterForMmiInitiate(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 808
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 809
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 810
    return-void
.end method

.method public unregisterForModifyCallRequest(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 971
    return-void
.end method

.method public unregisterForNewIMSCall(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1878
    return-void
.end method

.method public unregisterForNewRingingConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 778
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 779
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 780
    return-void
.end method

.method public unregisterForNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForNumberInfo(Landroid/os/Handler;)V

    .line 1563
    return-void
.end method

.method public unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 768
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 769
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 770
    return-void
.end method

.method public unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1570
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRedirectedNumberInfo(Landroid/os/Handler;)V

    .line 1571
    return-void
.end method

.method public unregisterForResendIncallMute(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForResendIncallMute(Landroid/os/Handler;)V

    .line 924
    return-void
.end method

.method public unregisterForRingbackTone(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 914
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 915
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unregisterForRingbackTone(Landroid/os/Handler;)V

    .line 916
    return-void
.end method

.method public unregisterForServiceStateChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 838
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 839
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 840
    return-void
.end method

.method public unregisterForSignalInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSignalInfo(Landroid/os/Handler;)V

    .line 1545
    return-void
.end method

.method public unregisterForSrvccHandOver(Landroid/os/Handler;)V
    .locals 0
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1898
    return-void
.end method

.method public unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 895
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSubscriptionInfoReady(Landroid/os/Handler;)V

    .line 896
    return-void
.end method

.method public unregisterForSuppServiceFailed(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 855
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 856
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForSuppServiceNotification(Landroid/os/Handler;)V

    .line 848
    return-void
.end method

.method public unregisterForT53AudioControlInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53AudioControlInfo(Landroid/os/Handler;)V

    .line 1595
    return-void
.end method

.method public unregisterForT53ClirInfo(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1586
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForT53ClirInfo(Landroid/os/Handler;)V

    .line 1587
    return-void
.end method

.method public unregisterForUnknownConnection(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 758
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 759
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->unregisterForUnknownConnection(Landroid/os/Handler;)V

    .line 760
    return-void
.end method

.method public unsetOnEcbModeExitResponse(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 1603
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1604
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mIPPhone:Lcom/movial/ipphone/IPPhone;

    invoke-virtual {v0, p1}, Lcom/movial/ipphone/IPPhone;->unsetOnEcbModeExitResponse(Landroid/os/Handler;)V

    .line 1605
    return-void
.end method

.method public updatePhoneObject(I)V
    .locals 3
    .param p1, "voiceRadioTech"    # I

    .prologue
    .line 682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePhoneObject: radioTechnology="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/movial/ipphone/IPPhoneProxy;->logd(Ljava/lang/String;)V

    .line 683
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 684
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1320
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 1321
    return-void
.end method

.method public writeDataToEF(I[B)V
    .locals 1
    .param p1, "efid"    # I
    .param p2, "data"    # [B

    .prologue
    .line 2032
    iget-object v0, p0, Lcom/movial/ipphone/IPPhoneProxy;->mActivePhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/Phone;->writeDataToEF(I[B)V

    .line 2033
    return-void
.end method
