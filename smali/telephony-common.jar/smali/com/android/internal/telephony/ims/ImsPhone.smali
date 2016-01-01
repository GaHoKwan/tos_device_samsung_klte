.class public Lcom/android/internal/telephony/ims/ImsPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "ImsPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;
    }
.end annotation


# static fields
.field public static final CANCEL_ECM_TIMER:I = 0x1

.field private static final DEBUG:Z = true

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x24

.field protected static final EVENT_SMS_FORMAT:I = 0x1

.field protected static final EVENT_WFC_SS_COMPLETE:I = 0x26

.field private static final IMS_PS_DOMAIN:Ljava/lang/String; = "persist.radio.domain.ps"

.field private static final LOG_TAG:Ljava/lang/String; = "IMSPhone"

.field static final MAX_CONNECTIONS:I = 0x7

.field static final MAX_CONNECTIONS_PER_CALL:I = 0x5

.field private static final PROPERTY_IMS_REGISTERED:Ljava/lang/String; = "persist.radio.ims.reg"

.field public static final RESTART_ECM_TIMER:I = 0x0

.field private static final RIL_IMS_STATUS_LIMITED_MODE_REG:I = 0x2

.field private static final RIL_IMS_STATUS_NOT_REGISTERED:I = 0x0

.field private static final RIL_IMS_STATUS_NOT_REGISTERED_E911:I = 0x3

.field private static final RIL_IMS_STATUS_REGISTERED:I = 0x1

.field private static final RIL_IMS_STATUS_REGISTERED_E911:I = 0x4

.field private static final RIL_SMS_OVER_IP_FORMAT_3GPP:I = 0x1

.field private static final RIL_SMS_OVER_IP_FORMAT_3GPP2:I = 0x2

.field private static final RIL_SMS_OVER_IP_FORMAT_UNKNOWN:I

.field public static final mFormatUri:Landroid/net/Uri;


# instance fields
.field private mFeature:I

.field protected mFormatObserver:Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkType:I

.field public mPostDialHandler:Landroid/os/Registrant;

.field private mRegState:I

.field protected mResolver:Landroid/content/ContentResolver;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSmsFormat:Ljava/lang/String;

.field mWfcSupplimentaryServiceHelper:Lcom/android/internal/telephony/ims/WfcSupplimentaryServiceHelper;

.field private sPhoneNotifier:Lcom/android/internal/telephony/PhoneNotifier;

.field private state:Lcom/android/internal/telephony/PhoneConstants$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const-string v0, "content://com.example.HiddenMenuContentProvider/IMSSETTINGSData"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/ims/ImsPhone;->mFormatUri:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cm"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "notifier"    # Lcom/android/internal/telephony/PhoneNotifier;

    .prologue
    .line 150
    const-string v1, "IMS"

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    .line 114
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 116
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mNetworkType:I

    .line 118
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:I

    .line 126
    const-string v1, "unknown"

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:Ljava/lang/String;

    .line 183
    new-instance v1, Lcom/android/internal/telephony/ims/ImsPhone$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/ims/ImsPhone$1;-><init>(Lcom/android/internal/telephony/ims/ImsPhone;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    iput-object p3, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    .line 153
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mLooper:Landroid/os/Looper;

    .line 154
    iput-object p2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 156
    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    .line 157
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOutOfService()V

    .line 159
    new-instance v1, Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;

    invoke-direct {v1, p0, p0}, Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;-><init>(Lcom/android/internal/telephony/ims/ImsPhone;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mFormatObserver:Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;

    .line 160
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/ims/ImsPhone;->mFormatUri:Landroid/net/Uri;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mFormatObserver:Lcom/android/internal/telephony/ims/ImsPhone$FormatChangeObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mResolver:Landroid/content/ContentResolver;

    .line 164
    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-interface {p2, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsRegistrationStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 171
    const-string v1, "KOR"

    const-string v2, "USA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 173
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 177
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/ims/ImsPhone;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsPhone;

    .prologue
    .line 94
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/ims/ImsPhone;)Landroid/telephony/ServiceState;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/ims/ImsPhone;

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method private static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 2

    .prologue
    .line 142
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 143
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v1, v0, Lcom/android/internal/telephony/PhoneProxy;

    if-eqz v1, :cond_0

    .line 144
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 146
    .end local v0    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_0
    return-object v0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    .line 1186
    const/4 v0, 0x0

    .line 1188
    .local v0, "isAirplaneMode":Z
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1189
    const/4 v0, 0x1

    .line 1192
    :cond_0
    return v0
.end method

.method private isPSDomain()Z
    .locals 2

    .prologue
    .line 665
    const-string v0, "persist.radio.domain.ps"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private logUnexpectedMethodCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 1177
    const-string v0, "IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() is not supported by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhoneName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    return-void
.end method

.method private setSmsFormat(I)V
    .locals 5
    .param p1, "smsFormat"    # I

    .prologue
    const/4 v4, 0x1

    .line 199
    const-string v1, "IMSPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSmsFormat: mRegState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " smsFormat "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 203
    .local v0, "oldSmsFormat":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_4

    .line 205
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v1, :cond_3

    .line 206
    const-string v1, "3gpp2"

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:Ljava/lang/String;

    .line 215
    :cond_1
    :goto_0
    if-ne p1, v4, :cond_5

    .line 216
    const-string v1, "3gpp"

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:Ljava/lang/String;

    .line 224
    :cond_2
    :goto_1
    return-void

    .line 207
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_1

    .line 208
    const-string v1, "3gpp"

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:Ljava/lang/String;

    goto :goto_0

    .line 210
    :cond_4
    iget v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:I

    if-ne v1, v4, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getSmsOverImsFormat()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:Ljava/lang/String;

    goto :goto_0

    .line 217
    :cond_5
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 218
    const-string v1, "3gpp2"

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSmsFormat:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public SimSlotOnOff(I)V
    .locals 1
    .param p1, "on"    # I

    .prologue
    .line 1296
    const-string v0, "SimSlotOnOff"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1297
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
    .line 342
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->acceptCall()V

    .line 343
    return-void
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
    .line 338
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->acceptCall(I)V

    .line 339
    return-void
.end method

.method public acceptConnectionTypeChange(Lcom/android/internal/telephony/Connection;Ljava/util/Map;)V
    .locals 2
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
    .line 621
    .local p2, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_2

    .line 622
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 623
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/gsm/GsmConnection;->acceptConnectionTypeChange(Ljava/util/Map;)V

    .line 632
    :goto_0
    return-void

    .line 624
    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 625
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1, p2}, Lcom/android/internal/telephony/cdma/CdmaConnection;->acceptConnectionTypeChange(Ljava/util/Map;)V

    goto :goto_0

    .line 627
    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string v0, "acceptConnectionTypeChange"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    goto :goto_0

    .line 630
    :cond_2
    const-string v0, "IMSPhone"

    const-string v1, "connection is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 1
    .param p1, "activate"    # I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1119
    const-string v0, "activateCellBroadcastSms"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1120
    return-void
.end method

.method public akaAuthenticate([B[BLandroid/os/Message;)V
    .locals 0
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1272
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1273
    :cond_0
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 468
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 354
    const-string v2, "ro.telephony.disable-call"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    .local v0, "disableCall":Ljava/lang/String;
    const-string v2, "IMSPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): disableCall = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const-string v2, "true"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return v1

    .line 360
    :cond_1
    const-string v2, "IMSPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): ringingCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v2, "IMSPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): foregndCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const-string v2, "IMSPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canDial(): backgndCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 472
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1017
    const-string v0, "changeBarringPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1018
    const/4 v0, 0x0

    return v0
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "newPwdAgain"    # Ljava/lang/String;
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1025
    const-string v0, "changeBarringPassword"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1026
    const/4 v0, 0x0

    return v0
.end method

.method public changeConnectionType(Landroid/os/Message;Lcom/android/internal/telephony/Connection;ILjava/util/Map;)V
    .locals 2
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
    .line 606
    .local p4, "newExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    .line 607
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 608
    check-cast p2, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p2    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/internal/telephony/gsm/GsmConnection;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    .line 617
    :goto_0
    return-void

    .line 609
    .restart local p2    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 610
    check-cast p2, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p2    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/internal/telephony/cdma/CdmaConnection;->changeConnectionType(Landroid/os/Message;ILjava/util/Map;)V

    goto :goto_0

    .line 612
    .restart local p2    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string v0, "changeConnectionType"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    goto :goto_0

    .line 615
    :cond_2
    const-string v0, "IMSPhone"

    const-string v1, "connection is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 518
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 519
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
    .line 464
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->conference()V

    .line 465
    return-void
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
    .line 371
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Dial with dialstring not supported for ImsPhone"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dial(Ljava/lang/String;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "callType"    # I
    .param p3, "domain"    # I
    .param p4, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 408
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;I[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "callType"    # I
    .param p3, "extras"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 414
    const/4 v1, 0x3

    .line 416
    .local v1, "domain":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->canDial()Z

    move-result v2

    if-nez v2, :cond_0

    .line 417
    new-instance v2, Lcom/android/internal/telephony/CallStateException;

    const-string v3, "Cannot dial IMS call in current state"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 420
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->isPSDomain()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 421
    const/4 v1, 0x2

    .line 424
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1, p3}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;II[Ljava/lang/String;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 425
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 2
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "uusInfo"    # Lcom/android/internal/telephony/UUSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 377
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "Dial with uusinfo not supported for ImsPhone"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public disableDataConnectivity()Z
    .locals 2

    .prologue
    .line 1209
    const-string v0, "IMSPhone"

    const-string v1, "not needed for IMS phone disableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    const/4 v0, 0x0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1055
    const-string v0, "disableLocationUpdates"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1056
    return-void
.end method

.method public disconnectCauseFromCode(I)Lcom/android/internal/telephony/Connection$DisconnectCause;
    .locals 2
    .param p1, "causeCode"    # I

    .prologue
    .line 716
    sparse-switch p1, :sswitch_data_0

    .line 737
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 738
    .local v0, "serviceState":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 739
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->POWER_OFF:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 746
    .end local v0    # "serviceState":I
    :goto_0
    return-object v1

    .line 723
    :sswitch_0
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 725
    :sswitch_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 727
    :sswitch_2
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 729
    :sswitch_3
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 731
    :sswitch_4
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 733
    :sswitch_5
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 740
    .restart local v0    # "serviceState":I
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 742
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 743
    :cond_2
    const/16 v1, 0x10

    if-ne p1, v1, :cond_3

    .line 744
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 746
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    goto :goto_0

    .line 716
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x11 -> :sswitch_5
        0x22 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2c -> :sswitch_0
        0x31 -> :sswitch_0
        0x3a -> :sswitch_0
        0x44 -> :sswitch_1
        0xf0 -> :sswitch_2
        0xf1 -> :sswitch_3
    .end sparse-switch
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 181
    return-void
.end method

.method public enableDataConnectivity()Z
    .locals 2

    .prologue
    .line 1200
    const-string v0, "IMSPhone"

    const-string v1, "not needed for IMS phone enableDataConnectivity"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    const/4 v0, 0x0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1050
    const-string v0, "enableLocationUpdates"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1051
    return-void
.end method

.method public equals(Lcom/android/internal/telephony/Phone;)Z
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 311
    if-ne p1, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 301
    if-ne p1, p0, :cond_0

    .line 302
    const/4 v0, 0x1

    .line 303
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 476
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->explicitCallTransfer()V

    .line 477
    return-void
.end method

.method public gbaAuthenticateBootstrap([B[BLandroid/os/Message;)V
    .locals 0
    .param p1, "rand"    # [B
    .param p2, "autn"    # [B
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1276
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1277
    :cond_0
    return-void
.end method

.method public gbaAuthenticateNaf([BLandroid/os/Message;)V
    .locals 0
    .param p1, "nafId"    # [B
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1280
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1281
    :cond_0
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 953
    const-string v0, "getAvailableNetworks"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 954
    return-void
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 597
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 992
    const-string v0, "getCallBarringOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 993
    return-void
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 931
    const-string v0, "getCallForwardingOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 932
    return-void
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 574
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 575
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 576
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1124
    const-string v0, "getCellBroadcastSmsConfig"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1125
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 758
    const-string v0, "getCellLocation"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 759
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 768
    const-string v0, "getDataActivityState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 769
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1041
    const-string v0, "getDataCallList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 1
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    .line 763
    const-string v0, "getDataConnectionState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 764
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataDunEnabled()Z
    .locals 2

    .prologue
    .line 438
    const-string v0, "IMSPhone"

    const-string v1, "Not yet implement getDataOnDunEnabled() in JB 4.3"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1060
    const-string v0, "getDataRoamingEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1061
    const/4 v0, 0x0

    return v0
.end method

.method public getDataServiceState()I
    .locals 1

    .prologue
    .line 682
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataServiceState()I

    move-result v0

    return v0
.end method

.method public getDcnAddress()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 899
    const/4 v7, 0x0

    .line 901
    .local v7, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "mDcnNumber"

    aput-object v0, v2, v1

    .line 904
    .local v2, "reqField":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/ims/ImsPhone;->mFormatUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 905
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 906
    .local v8, "count":I
    if-lez v8, :cond_1

    .line 907
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 908
    const-string v0, "IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Domain Change Address : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 918
    .local v6, "address":Ljava/lang/String;
    if-eqz v7, :cond_0

    .end local v6    # "address":Ljava/lang/String;
    .end local v8    # "count":I
    :goto_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 916
    :cond_0
    return-object v6

    .line 912
    .restart local v8    # "count":I
    :cond_1
    :try_start_1
    const-string v0, "IMSPhone"

    const-string v1, "Cursor < 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    const-string v6, "4437501000"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    if-eqz v7, :cond_0

    goto :goto_0

    .line 915
    .end local v8    # "count":I
    :catch_0
    move-exception v9

    .line 916
    .local v9, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v6, "4437501000"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 918
    if-eqz v7, :cond_0

    goto :goto_0

    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1071
    const-string v0, "getDeviceId"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1072
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1077
    const-string v0, "getDeviceSvn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1078
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDualSimSlotActivationState()Z
    .locals 1

    .prologue
    .line 1315
    const-string v0, "getDualSimSlotActivationState"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1316
    const/4 v0, 0x0

    return v0
.end method

.method public getDunDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 1

    .prologue
    .line 430
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    return-object v0
.end method

.method public getDunNetworkType()I
    .locals 1

    .prologue
    .line 434
    const/4 v0, 0x0

    return v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1089
    const-string v0, "getEsn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1090
    const/4 v0, 0x0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 593
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getFormatPreference()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 1221
    const/4 v6, 0x0

    .line 1223
    .local v6, "c":Landroid/database/Cursor;
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "mSmsFormat"

    aput-object v0, v2, v1

    .line 1227
    .local v2, "reqField":[Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/internal/telephony/ims/ImsPhone;->mFormatUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1228
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1229
    .local v7, "count":I
    if-lez v7, :cond_3

    .line 1230
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1231
    const-string v0, "IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Changed Sms Format : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1232
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1234
    .local v9, "smsFormat":Ljava/lang/String;
    const-string v0, "3GPP"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1235
    const-string v9, "3gpp"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1249
    :goto_0
    if-eqz v6, :cond_0

    .end local v7    # "count":I
    .end local v9    # "smsFormat":Ljava/lang/String;
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1247
    :cond_0
    return-object v9

    .line 1236
    .restart local v7    # "count":I
    .restart local v9    # "smsFormat":Ljava/lang/String;
    :cond_1
    :try_start_1
    const-string v0, "3GPP2"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1237
    const-string v9, "3gpp2"

    goto :goto_0

    .line 1239
    :cond_2
    const-string v9, "unknown"

    goto :goto_0

    .line 1243
    .end local v9    # "smsFormat":Ljava/lang/String;
    :cond_3
    const-string v0, "IMSPhone"

    const-string v1, "Cursor < 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    const-string v9, "unknown"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1249
    if-eqz v6, :cond_0

    goto :goto_1

    .line 1246
    .end local v7    # "count":I
    :catch_0
    move-exception v8

    .line 1247
    .local v8, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v9, "unknown"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1249
    if-eqz v6, :cond_0

    goto :goto_1

    .end local v8    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1216
    const-string v0, "IMSPhone"

    const-string v1, "not needed for IMS phone getGroupIdLevel1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "ID"    # Ljava/lang/String;

    .prologue
    .line 815
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->getHandsetInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1113
    const-string v0, "getIccPhoneBookInterfaceManager"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1101
    const-string v0, "getImei"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1102
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImeiInCDMAGSMPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 809
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getImeiInCDMAGSMPhone()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsRegisteredFeature()I
    .locals 1

    .prologue
    .line 678
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mFeature:I

    return v0
.end method

.method public getImsRegisteredNetworkType()I
    .locals 1

    .prologue
    .line 674
    iget v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mNetworkType:I

    return v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 876
    const-string v0, "getLine1AlphaTag"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 877
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 870
    const-string v0, "getLine1Number"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 871
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLine1NumberType(I)Ljava/lang/String;
    .locals 1
    .param p1, "SimType"    # I

    .prologue
    .line 1286
    const-string v0, "getLine1NumberType"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1287
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMdnavailable()Z
    .locals 1

    .prologue
    .line 783
    const-string v0, "getMdnavailable"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    const-string v0, "getMeid"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1096
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 788
    const-string v0, "getMsisdnavailable"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 789
    const/4 v0, 0x0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 589
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 1031
    const-string v0, "getNeighboringCids"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1032
    return-void
.end method

.method public getOCSGLAvailable()Z
    .locals 1

    .prologue
    .line 795
    const-string v0, "getOCSGLAvailable"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 796
    const/4 v0, 0x0

    return v0
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 563
    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 564
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 565
    return-void
.end method

.method public getPSISMSCavailable()Z
    .locals 1

    .prologue
    .line 831
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPSISMSCavailable()Z

    move-result v0

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
    .line 778
    const-string v0, "getPendingMmiCodes"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 779
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    const-string v0, "IMS"

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1107
    const-string v0, "getPhoneSubInfo"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x5

    return v0
.end method

.method public getPostDialHandler()Landroid/os/Registrant;
    .locals 1

    .prologue
    .line 1134
    const-string v0, "getPostDialHandler"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1135
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferredNetworkList(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 978
    const-string v0, "getPreferredNetworkList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 979
    return-void
.end method

.method public getProposedConnectionType(Lcom/android/internal/telephony/Connection;)I
    .locals 3
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 649
    if-eqz p1, :cond_2

    .line 650
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 651
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->getProposedConnectionType()I

    move-result v0

    .line 660
    :goto_0
    return v0

    .line 652
    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 653
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->getProposedConnectionType()I

    move-result v0

    goto :goto_0

    .line 655
    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string v1, "rejectConnectionTypeChange"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_2
    const-string v1, "IMSPhone"

    const-string v2, "connection is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPsismsc()[B
    .locals 1

    .prologue
    .line 1169
    const-string v0, "getPsismsc"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1170
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 601
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    return-object v0
.end method

.method public getSMSPavailable()Z
    .locals 1

    .prologue
    .line 826
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSMSPavailable()Z

    move-result v0

    return v0
.end method

.method public getSMSavailable()Z
    .locals 1

    .prologue
    .line 821
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSMSavailable()Z

    move-result v0

    return v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 669
    invoke-direct {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->isAirplaneModeOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .prologue
    .line 773
    const-string v0, "getSignalStrength"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 774
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSktImsiM()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1157
    const-string v0, "getSktImsiM"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSktIrm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1152
    const-string v0, "getSktIrm"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1153
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSmsOverImsFormat()Ljava/lang/String;
    .locals 3

    .prologue
    .line 315
    const-string v0, "vzw"

    .line 317
    .local v0, "format":Ljava/lang/String;
    const-string v1, "3gpp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    const-string v1, "3gpp"

    .line 331
    :goto_0
    return-object v1

    .line 319
    :cond_0
    const-string v1, "3gpp2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 320
    const-string v1, "3gpp2"

    goto :goto_0

    .line 321
    :cond_1
    const-string v1, "vzw"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getFormatPreference()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 325
    :cond_2
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/telephony/cdma/CDMALTEPhone;

    if-eqz v1, :cond_3

    .line 326
    const-string v1, "3gpp2"

    goto :goto_0

    .line 327
    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    instance-of v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v1, :cond_4

    .line 328
    const-string v1, "3gpp"

    goto :goto_0

    .line 330
    :cond_4
    const-string v1, "IMSPhone"

    const-string v2, "getSmsOverImsFormat(): No LTE-capable phone should access this."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    const-string v1, "unknown"

    goto :goto_0
.end method

.method public getSponImsi()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getSponImsi()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1083
    const-string v0, "getSubscriberId"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1084
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSubscriberIdType(I)Ljava/lang/String;
    .locals 1
    .param p1, "SimType"    # I

    .prologue
    .line 1291
    const-string v0, "getSubscriberIdType"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1292
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 894
    const-string v0, "getVoiceMailAlphaTag"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 895
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 888
    const-string v0, "getVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 889
    const/4 v0, 0x0

    return-object v0
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
    .line 859
    const-string v0, "handleInCallMmiCommands"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 860
    const/4 v0, 0x0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 227
    const-string v10, "IMSPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Received event:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p1, Landroid/os/Message;->what:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v10, p1, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 295
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    .line 297
    :goto_0
    return-void

    .line 233
    :sswitch_0
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/ims/ImsPhone;->setSmsFormat(I)V

    goto :goto_0

    .line 236
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 237
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_3

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v10, :cond_3

    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    check-cast v10, [I

    array-length v10, v10

    const/4 v11, 0x1

    if-lt v10, v11, :cond_3

    .line 239
    iget-object v10, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [I

    move-object v8, v10

    check-cast v8, [I

    .line 243
    .local v8, "responseArray":[I
    const/4 v10, 0x0

    aget v7, v8, v10

    .line 244
    .local v7, "regState":I
    const/4 v10, 0x1

    aget v3, v8, v10

    .line 245
    .local v3, "feature":I
    const/4 v10, 0x2

    aget v6, v8, v10

    .line 246
    .local v6, "networkType":I
    const/4 v10, 0x3

    aget v2, v8, v10

    .line 247
    .local v2, "ecmp":I
    const/4 v10, 0x4

    aget v9, v8, v10

    .line 249
    .local v9, "smsFormat":I
    const-string v10, "IMSPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IMS reg state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " feature: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " networkType: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " ecmp: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " smsFormat: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iput v7, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mRegState:I

    .line 253
    iput v3, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mFeature:I

    .line 260
    if-nez v7, :cond_1

    .line 261
    iget-object v10, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 262
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mNetworkType:I

    .line 271
    :cond_0
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.ECMP_STATE_CHANGED"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v4, "intent":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 273
    const-string v10, "ECMP_STATE"

    const/4 v11, 0x3

    aget v11, v8, v11

    invoke-virtual {v4, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 274
    iget-object v10, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 263
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v10, 0x1

    if-ne v7, v10, :cond_2

    .line 264
    iget-object v10, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 265
    iput v6, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mNetworkType:I

    goto :goto_1

    .line 266
    :cond_2
    const/4 v10, 0x3

    if-ne v7, v10, :cond_0

    .line 267
    iget-object v10, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mServiceState:Landroid/telephony/ServiceState;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 268
    const/4 v10, -0x1

    iput v10, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mNetworkType:I

    goto :goto_1

    .line 276
    .end local v2    # "ecmp":I
    .end local v3    # "feature":I
    .end local v6    # "networkType":I
    .end local v7    # "regState":I
    .end local v8    # "responseArray":[I
    .end local v9    # "smsFormat":I
    :cond_3
    const-string v10, "IMSPhone"

    const-string v11, "IMS State query failed!"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 281
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 282
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 283
    .local v5, "mmi":Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_4

    .line 284
    const-string v10, "IMSPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "WFC_SS failed. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_4
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isCfIconUpdateRequired()Z

    move-result v10

    if-eqz v10, :cond_5

    iget-object v10, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v10, :cond_5

    .line 287
    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCfIconStatus()Z

    move-result v1

    .line 288
    .local v1, "cffEnabled":Z
    const-string v10, "IMSPhone"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Cf Set with cffEnabled :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->setVoiceCallForwardingFlag(Z)V

    .line 291
    .end local v1    # "cffEnabled":Z
    :cond_5
    invoke-virtual {v5, p1, v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 231
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x24 -> :sswitch_1
        0x26 -> :sswitch_2
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 852
    const-string v0, "handlePinMmi"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public handleTimerInEmergencyCallbackMode(I)V
    .locals 2
    .param p1, "action"    # I

    .prologue
    .line 752
    const-string v0, "IMSPhone"

    const-string v1, "handleTimerInEmergencyCallbackMode, unsupported for this phone"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return-void
.end method

.method public hasIsim()Z
    .locals 1

    .prologue
    .line 1164
    const-string v0, "hasIsim"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1165
    const/4 v0, 0x0

    return v0
.end method

.method public holdCall()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 457
    const-string v0, "IMSPhone"

    const-string v1, " ~~~~~~  switch fg and bg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-class v1, Lcom/android/internal/telephony/ims/ImsPhone;

    monitor-enter v1

    .line 459
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 460
    monitor-exit v1

    .line 461
    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .param p1, "cn"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 699
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 700
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    .prologue
    .line 708
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 709
    return-void
.end method

.method public notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 484
    return-void
.end method

.method public notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 514
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 515
    return-void
.end method

.method public notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .param p1, "code"    # Lcom/android/internal/telephony/Phone$SuppService;

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 488
    return-void
.end method

.method public notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 704
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 1

    .prologue
    .line 1140
    const-string v0, "onUpdateIccAvailability"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1141
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 842
    const-string v0, "registerForSuppServiceNotification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 843
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
    .line 346
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->rejectCall()V

    .line 347
    return-void
.end method

.method public rejectConnectionTypeChange(Lcom/android/internal/telephony/Connection;)V
    .locals 2
    .param p1, "conn"    # Lcom/android/internal/telephony/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 635
    if-eqz p1, :cond_2

    .line 636
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 637
    check-cast p1, Lcom/android/internal/telephony/gsm/GsmConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmConnection;->rejectConnectionTypeChange()V

    .line 646
    :goto_0
    return-void

    .line 638
    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 639
    check-cast p1, Lcom/android/internal/telephony/cdma/CdmaConnection;

    .end local p1    # "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CdmaConnection;->rejectConnectionTypeChange()V

    goto :goto_0

    .line 641
    .restart local p1    # "conn":Lcom/android/internal/telephony/Connection;
    :cond_1
    const-string v0, "rejectConnectionTypeChange"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_2
    const-string v0, "IMSPhone"

    const-string v1, "connection is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public selectCsg(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 973
    const-string v0, "selectCsg"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 974
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 1
    .param p1, "network"    # Lcom/android/internal/telephony/OperatorInfo;
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 963
    const-string v0, "selectNetworkManually"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 964
    return-void
.end method

.method public selectNetworkManually(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "operatorNumeric"    # Ljava/lang/String;
    .param p2, "operatorAlphaLong"    # Ljava/lang/String;
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    .line 968
    const-string v0, "selectNetworkManually"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 969
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V
    .locals 5
    .param p1, "dtmfString"    # Ljava/lang/String;
    .param p2, "on"    # I
    .param p3, "off"    # I
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 546
    const/4 v0, 0x1

    .line 547
    .local v0, "check":Z
    const/4 v1, 0x0

    .local v1, "itr":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 548
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v2

    if-nez v2, :cond_2

    .line 549
    const-string v2, "IMSPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BurstDtmf invalid character \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v0, 0x0

    .line 556
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 557
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 559
    :cond_1
    return-void

    .line 547
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public sendDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 522
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 523
    const-string v0, "IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 525
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 526
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 1
    .param p1, "ussdMessge"    # Ljava/lang/String;

    .prologue
    .line 836
    const-string v0, "sendUssdResponse"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 837
    return-void
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;ILandroid/os/Message;)Z
    .locals 1
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1009
    const-string v0, "setCallBarringOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1010
    const/4 v0, 0x0

    return v0
.end method

.method public setCallBarringOption(ZLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 1
    .param p1, "cbAction"    # Z
    .param p2, "commandInterfacecbFlavour"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1000
    const-string v0, "setCallBarringOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1001
    const/4 v0, 0x0

    return v0
.end method

.method public setCallForwardingOption(IILjava/lang/String;IILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFAction"    # I
    .param p2, "commandInterfaceCFReason"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "serviceClass"    # I
    .param p6, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 948
    const-string v0, "setCallForwardingOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 949
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCFReason"    # I
    .param p2, "commandInterfaceCFAction"    # I
    .param p3, "dialingNumber"    # Ljava/lang/String;
    .param p4, "timerSeconds"    # I
    .param p5, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 938
    const-string v0, "setCallForwardingOption"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 939
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 579
    const-string v0, "setCallWaiting"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 580
    return-void
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 1
    .param p1, "configValuesArray"    # [I
    .param p2, "response"    # Landroid/os/Message;

    .prologue
    .line 1130
    const-string v0, "setCellBroadcastSmsConfig"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1131
    return-void
.end method

.method public setDataDunEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 444
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1066
    const-string v0, "setDataRoamingEnabled"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1067
    return-void
.end method

.method public setGbaBootstrappingParams([BLjava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 0
    .param p1, "rand"    # [B
    .param p2, "btid"    # Ljava/lang/String;
    .param p3, "keyLifetime"    # Ljava/lang/String;
    .param p4, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 1146
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    .line 1147
    :cond_0
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 883
    const-string v0, "setLine1Number"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 884
    return-void
.end method

.method public setMute(Z)V
    .locals 2
    .param p1, "muted"    # Z

    .prologue
    .line 583
    const-class v1, Lcom/android/internal/telephony/ims/ImsPhone;

    monitor-enter v1

    .line 584
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->setMute(Z)V

    .line 585
    monitor-exit v1

    .line 586
    return-void

    .line 585
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 1
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    .line 958
    const-string v0, "setNetworkSelectionModeAutomatic"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 959
    return-void
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1036
    const-string v0, "setOnPostDialCharacter"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1037
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 1
    .param p1, "commandInterfaceCLIRMode"    # I
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x0

    .line 569
    invoke-static {p2, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 570
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 571
    return-void
.end method

.method public setPreferredNetworkList(ILjava/lang/String;Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "operator"    # Ljava/lang/String;
    .param p3, "plmn"    # Ljava/lang/String;
    .param p4, "gsmAct"    # I
    .param p5, "gsmCompactAct"    # I
    .param p6, "utranAct"    # I
    .param p7, "mode"    # I
    .param p8, "response"    # Landroid/os/Message;

    .prologue
    .line 985
    const-string v0, "setPreferredNetworkList"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 986
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .param p1, "power"    # Z

    .prologue
    .line 865
    const-string v0, "setRadioPower"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 866
    return-void
.end method

.method public setRadioPowerOnNow()V
    .locals 0

    .prologue
    .line 1182
    return-void
.end method

.method public setState(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 0
    .param p1, "newState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 690
    iput-object p1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 691
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "voiceMailNumber"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 925
    const-string v0, "setVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 926
    return-void
.end method

.method public startDtmf(C)V
    .locals 3
    .param p1, "c"    # C

    .prologue
    .line 532
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 533
    const-string v0, "IMSPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :goto_0
    return-void

    .line 536
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_0
.end method

.method public startGlobalNetworkSearchTimer()V
    .locals 1

    .prologue
    .line 1300
    const-string v0, "startGlobalNetworkSearchTimer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1301
    return-void
.end method

.method public startGlobalNoSvcChkTimer()V
    .locals 1

    .prologue
    .line 1308
    const-string v0, "startGlobalNoSvcChkTimer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1309
    return-void
.end method

.method public stopDtmf()V
    .locals 1

    .prologue
    .line 541
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    .line 542
    return-void
.end method

.method public stopGlobalNetworkSearchTimer()V
    .locals 1

    .prologue
    .line 1304
    const-string v0, "stopGlobalNetworkSearchTimer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1305
    return-void
.end method

.method public stopGlobalNoSvcChkTimer()V
    .locals 1

    .prologue
    .line 1312
    const-string v0, "stopGlobalNoSvcChkTimer"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1313
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 449
    const-string v0, "IMSPhone"

    const-string v1, " ~~~~~~  switch fg and bg"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    const-class v1, Lcom/android/internal/telephony/ims/ImsPhone;

    monitor-enter v1

    .line 451
    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/ims/ImsPhone;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    .line 452
    monitor-exit v1

    .line 453
    return-void

    .line 452
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 847
    const-string v0, "unregisterForSuppServiceNotification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 848
    return-void
.end method

.method updatePhoneState()V
    .locals 4

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 493
    .local v0, "oldState":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 501
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v0, :cond_0

    .line 502
    const-string v1, "IMSPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ^^^ new phone state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->notifyPhoneStateChanged()V

    .line 505
    :cond_0
    return-void

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/ims/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 496
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0

    .line 498
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v1, p0, Lcom/android/internal/telephony/ims/ImsPhone;->state:Lcom/android/internal/telephony/PhoneConstants$State;

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1046
    const-string v0, "updateServiceLocation"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ims/ImsPhone;->logUnexpectedMethodCall(Ljava/lang/String;)V

    .line 1047
    return-void
.end method
