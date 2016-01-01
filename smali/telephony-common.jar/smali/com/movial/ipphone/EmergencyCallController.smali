.class public Lcom/movial/ipphone/EmergencyCallController;
.super Ljava/lang/Object;
.source "EmergencyCallController.java"


# static fields
.field private static final EMERGENCY_DELAYED_IMS_REGISTRATION:I = 0x2bf20

.field private static final EVENT_CALLSTATE_CHANGED:I = 0x1

.field private static final EVENT_CALL_DISCONNECT:I = 0x2

.field private static final EVENT_CS_EMERGENCY_TIMEOUT:I = 0x3

.field private static final EVENT_DELAYED_IMS_REGISTRATION:I = 0x5

.field private static final EVENT_PHONE_STATE_CHANGED:I = 0x4

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x6

.field private static final TAG:Ljava/lang/String; = "EmergencyCallController"


# instance fields
.field private cachedEmergencyNumber:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEmergencyCallPref:I

.field private mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;

.field private mEmergencyTimeoutCanceled:Z

.field private mGsmRadioState:I

.field private mHandler:Landroid/os/Handler;

.field private mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryEmergencyIMSRegistration:Z

.field private mSuccessfulGsmEmergency:Z

.field private mTemporaryWFCOff:Z


# direct methods
.method public constructor <init>(Lcom/movial/ipphone/IPPhoneProxy;Lcom/android/internal/telephony/Phone;)V
    .locals 5
    .param p1, "ipphoneproxy"    # Lcom/movial/ipphone/IPPhoneProxy;
    .param p2, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v3, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyTimeoutCanceled:Z

    .line 82
    iput-boolean v3, p0, Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z

    .line 83
    iput-boolean v3, p0, Lcom/movial/ipphone/EmergencyCallController;->mRetryEmergencyIMSRegistration:Z

    .line 84
    iput-boolean v3, p0, Lcom/movial/ipphone/EmergencyCallController;->mTemporaryWFCOff:Z

    .line 85
    const-string v1, "911"

    iput-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->cachedEmergencyNumber:Ljava/lang/String;

    .line 87
    sget-object v1, Lcom/movial/ipphone/IPUtils$EmergencyState;->NOT_INITIALIZED:Lcom/movial/ipphone/IPUtils$EmergencyState;

    iput-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 88
    const/4 v1, 0x1

    iput v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyCallPref:I

    .line 90
    const/4 v1, 0x3

    iput v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mGsmRadioState:I

    .line 91
    new-instance v1, Lcom/movial/ipphone/EmergencyCallController$1;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/EmergencyCallController$1;-><init>(Lcom/movial/ipphone/EmergencyCallController;)V

    iput-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 105
    new-instance v1, Lcom/movial/ipphone/EmergencyCallController$2;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/EmergencyCallController$2;-><init>(Lcom/movial/ipphone/EmergencyCallController;)V

    iput-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;

    .line 235
    new-instance v1, Lcom/movial/ipphone/EmergencyCallController$3;

    invoke-direct {v1, p0}, Lcom/movial/ipphone/EmergencyCallController$3;-><init>(Lcom/movial/ipphone/EmergencyCallController;)V

    iput-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 260
    iput-object p1, p0, Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;

    .line 261
    iput-object p2, p0, Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 262
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;

    .line 265
    iget-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ECM"

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "CELL_ONLY"

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 267
    iget-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ECM"

    invoke-static {v1, v2, v3}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 271
    iget-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 272
    iget-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x6

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 274
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 275
    .local v0, "intentfilter":Landroid/content/IntentFilter;
    const-string v1, "com.movial.ims_emergency_fail"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v1, "com.movial.ims_emergency_start"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/movial/ipphone/EmergencyCallController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/movial/ipphone/EmergencyCallController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 280
    return-void
.end method

.method static synthetic access$000(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;

    return-object v0
.end method

.method static synthetic access$002(Lcom/movial/ipphone/EmergencyCallController;Lcom/movial/ipphone/IPUtils$EmergencyState;)Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;
    .param p1, "x1"    # Lcom/movial/ipphone/IPUtils$EmergencyState;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/movial/ipphone/EmergencyCallController;)Lcom/movial/ipphone/IPPhoneProxy;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mIPPhoneProxy:Lcom/movial/ipphone/IPPhoneProxy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/movial/ipphone/EmergencyCallController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/movial/ipphone/EmergencyCallController;)I
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;

    .prologue
    .line 66
    iget v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mGsmRadioState:I

    return v0
.end method

.method static synthetic access$1102(Lcom/movial/ipphone/EmergencyCallController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/movial/ipphone/EmergencyCallController;->mGsmRadioState:I

    return p1
.end method

.method static synthetic access$200(Lcom/movial/ipphone/EmergencyCallController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyTimeoutCanceled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/movial/ipphone/EmergencyCallController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyTimeoutCanceled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/movial/ipphone/EmergencyCallController;)I
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;

    .prologue
    .line 66
    iget v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyCallPref:I

    return v0
.end method

.method static synthetic access$400(Lcom/movial/ipphone/EmergencyCallController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/movial/ipphone/EmergencyCallController;->cachedEmergencyNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/movial/ipphone/EmergencyCallController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/movial/ipphone/EmergencyCallController;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$700(Lcom/movial/ipphone/EmergencyCallController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z

    return v0
.end method

.method static synthetic access$702(Lcom/movial/ipphone/EmergencyCallController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z

    return p1
.end method

.method static synthetic access$800(Lcom/movial/ipphone/EmergencyCallController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mTemporaryWFCOff:Z

    return v0
.end method

.method static synthetic access$802(Lcom/movial/ipphone/EmergencyCallController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/movial/ipphone/EmergencyCallController;->mTemporaryWFCOff:Z

    return p1
.end method

.method static synthetic access$900(Lcom/movial/ipphone/EmergencyCallController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mRetryEmergencyIMSRegistration:Z

    return v0
.end method

.method static synthetic access$902(Lcom/movial/ipphone/EmergencyCallController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/movial/ipphone/EmergencyCallController;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/movial/ipphone/EmergencyCallController;->mRetryEmergencyIMSRegistration:Z

    return p1
.end method


# virtual methods
.method protected getEmergencyPreference()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyCallPref:I

    return v0
.end method

.method protected getEmergencyState()Lcom/movial/ipphone/IPUtils$EmergencyState;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;

    return-object v0
.end method

.method protected notifyForceEmergencyModeChanged(Z)V
    .locals 3
    .param p1, "force"    # Z

    .prologue
    .line 283
    const-string v0, "EmergencyCallController"

    const-string v1, "notifyForceEmergencyModeChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    if-nez p1, :cond_1

    .line 285
    iget-boolean v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mSuccessfulGsmEmergency:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "CELL_ONLY"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/movial/ipphone/IPPhoneSettings;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 286
    :cond_0
    iget v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyCallPref:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/movial/ipphone/IPUtils$EmergencyState;->IDLE:Lcom/movial/ipphone/IPUtils$EmergencyState;

    iput-object v0, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 288
    :cond_1
    return-void
.end method

.method protected setEmergencyPreference(I)V
    .locals 0
    .param p1, "pref"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyCallPref:I

    .line 319
    return-void
.end method

.method protected setEmergencyState(Lcom/movial/ipphone/IPUtils$EmergencyState;)V
    .locals 0
    .param p1, "state"    # Lcom/movial/ipphone/IPUtils$EmergencyState;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 327
    return-void
.end method

.method protected transitToDialingState(Ljava/lang/String;)V
    .locals 5
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/movial/ipphone/EmergencyCallController;->cachedEmergencyNumber:Ljava/lang/String;

    .line 293
    iget-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;

    sget-object v2, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_TURNING_ON_RADIO:Lcom/movial/ipphone/IPUtils$EmergencyState;

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyCallPref:I

    if-nez v1, :cond_0

    .line 294
    const-string v1, "EmergencyCallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "transitToDialingState, Radio state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/movial/ipphone/EmergencyCallController;->mGsmRadioState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mGsmRadioState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 297
    const-string v1, "gsm.ecc.timeout"

    const/16 v2, 0x1770

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 303
    .local v0, "timeout":I
    :goto_0
    const-string v1, "EmergencyCallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Emergency timeout after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msecs"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyTimeoutCanceled:Z

    .line 305
    iget-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/movial/ipphone/EmergencyCallController;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 308
    .end local v0    # "timeout":I
    :cond_0
    iget-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;

    sget-object v2, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_TURNING_ON_RADIO:Lcom/movial/ipphone/IPUtils$EmergencyState;

    if-ne v1, v2, :cond_2

    sget-object v1, Lcom/movial/ipphone/IPUtils$EmergencyState;->CS_CALL_DIALING:Lcom/movial/ipphone/IPUtils$EmergencyState;

    :goto_1
    iput-object v1, p0, Lcom/movial/ipphone/EmergencyCallController;->mEmergencyState:Lcom/movial/ipphone/IPUtils$EmergencyState;

    .line 310
    return-void

    .line 300
    :cond_1
    const/16 v0, 0x64

    .restart local v0    # "timeout":I
    goto :goto_0

    .line 308
    .end local v0    # "timeout":I
    :cond_2
    sget-object v1, Lcom/movial/ipphone/IPUtils$EmergencyState;->IMS_CALL_DIALING:Lcom/movial/ipphone/IPUtils$EmergencyState;

    goto :goto_1
.end method
