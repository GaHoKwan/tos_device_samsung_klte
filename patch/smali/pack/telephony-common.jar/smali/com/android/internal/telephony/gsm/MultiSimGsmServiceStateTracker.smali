.class Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;
.super Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;
.source "MultiSimGsmServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;,
        Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$Lock;
    }
.end annotation


# static fields
.field static final DBG:Z = true

.field private static final EVENT_FORWARDING_GET_COMPLETED:I = 0x407

.field private static final EVENT_GET_CFIS_DONE:I = 0x406

.field static final INTENT_ACTION_CANCEL_POWER_ON_DELAY:Ljava/lang/String; = "android.intent.action.CANCEL_POWER_ON_DELAY"

.field static final INTENT_ACTION_CANCEL_POWER_ON_TIMER:Ljava/lang/String; = "android.intent.action.CANCEL_POWER_ON_TIMER"

.field static final LOG_TAG:Ljava/lang/String; = "GsmSST"

.field private static final MCCMNC_CODES_CFIS_SIMERROR:[Ljava/lang/String;

.field private static isCmccSIM:Z

.field private static setModeFlag:Z

.field private static useSlot2Data:Z


# instance fields
.field private final BCM_EVENT_SIM_ABSENT:I

.field private final BCM_EVENT_SIM_LOCK:I

.field private final BCM_EVENT_SIM_NETWORKLOCK:I

.field private StartQueryCallForwardStatus:Z

.field private mHasPostedRadioPowerOnTimer:Z

.field private mLastRadioPowerOnTimer:Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$RadioPowerTimer;

.field private mLocaleChanged:Z

.field private final mLock:Ljava/lang/Object;

.field private mMasterSimMode:Z

.field private mPhoneOnMode:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreviousAirplanemode:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTempIntent:Landroid/content/Intent;

.field mccmnc_final:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 152
    sput-boolean v3, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    .line 153
    sput-boolean v2, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z

    .line 154
    sput-boolean v2, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->useSlot2Data:Z

    .line 159
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "46000"

    aput-object v1, v0, v2

    const-string v1, "46001"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "46002"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "46003"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "46005"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "46006"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "46007"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->MCCMNC_CODES_CFIS_SIMERROR:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .param p1, "phone"    # Lcom/android/internal/telephony/gsm/GSMPhone;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 211
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    .line 131
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreviousAirplanemode:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneOnMode:Z

    .line 144
    iput v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->BCM_EVENT_SIM_ABSENT:I

    .line 145
    iput v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->BCM_EVENT_SIM_NETWORKLOCK:I

    .line 146
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->BCM_EVENT_SIM_LOCK:I

    .line 147
    new-instance v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$Lock;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$Lock;-><init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLock:Ljava/lang/Object;

    .line 148
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mLocaleChanged:Z

    .line 150
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mMasterSimMode:Z

    .line 157
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mccmnc_final:Ljava/lang/String;

    .line 162
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->StartQueryCallForwardStatus:Z

    .line 170
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mHasPostedRadioPowerOnTimer:Z

    .line 171
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 179
    new-instance v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 325
    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 126
    sput-boolean p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 126
    sget-boolean v0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->useSlot2Data:Z

    return v0
.end method

.method private checkMasterSlot()I
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 1292
    const-string v8, "gsm.sim.operator.numeric"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1293
    .local v3, "slot1Sim":Ljava/lang/String;
    const-string v8, "gsm.sim.operator.numeric2"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1294
    .local v4, "slot2Sim":Ljava/lang/String;
    const-string v8, "persist.sys.dataprefer.simid"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1295
    .local v0, "dataPrefer":Ljava/lang/String;
    const-string v8, "gsm.sim.state2"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1296
    .local v5, "slot2StateCheck":Ljava/lang/String;
    const-string v8, "ril.MSIMM"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1297
    .local v1, "msimm":Ljava/lang/String;
    const-string v8, "ro.csc.sales_code"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1300
    .local v2, "salesCode":Ljava/lang/String;
    const-string v8, "0"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-string v8, "ABSENT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    sget-boolean v8, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    if-eqz v8, :cond_2

    .line 1301
    sput-boolean v7, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    .line 1305
    :goto_0
    const-string v8, "0"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "ABSENT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "CHM"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "CHC"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1306
    :cond_0
    if-eqz v3, :cond_3

    const-string v8, "46000"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "46002"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "46008"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "46008"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1307
    :cond_1
    const-string v8, "[MultiSim] CMCC model, Slot1 use CMCC SIM"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1308
    sput-boolean v7, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z

    .line 1309
    const-string v7, "persist.radio.dsds.msimm"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1325
    :goto_1
    return v6

    .line 1303
    :cond_2
    sput-boolean v6, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    goto :goto_0

    .line 1311
    :cond_3
    if-eqz v4, :cond_5

    const-string v8, "46000"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "46002"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "46008"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "46008"

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1312
    :cond_4
    const-string v6, "[MultiSim] CMCC model, Slot2 use CMCC SIM"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1313
    sput-boolean v7, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z

    .line 1314
    const-string v6, "persist.radio.dsds.msimm"

    const-string v8, "false"

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 1315
    goto :goto_1

    .line 1318
    :cond_5
    const-string v8, "persist.radio.dsds.iscmcc"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    const-string v8, "0"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "1"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "ABSENT"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 1320
    const-string v6, "[MultiSim] Insert 2 Sim using slot2 data"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1321
    sput-boolean v7, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->useSlot2Data:Z

    move v6, v7

    .line 1322
    goto :goto_1

    .line 1324
    :cond_6
    const-string v7, "[MultiSim] Using default master slot"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method protected clearPowerOnTimer()V
    .locals 0

    .prologue
    .line 1165
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 334
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 338
    invoke-super {p0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    .line 417
    return-void
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 0
    .param p1, "what"    # I
    .param p2, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 910
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->handlePollStateResult(ILandroid/os/AsyncResult;)V

    .line 1153
    return-void
.end method

.method protected isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z
    .locals 1
    .param p1, "gsmRoaming"    # Z
    .param p2, "s"    # Landroid/telephony/ServiceState;

    .prologue
    .line 1185
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v0

    return v0
.end method

.method protected setPowerStateToDesired()V
    .locals 0

    .prologue
    .line 421
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setPowerStateToDesired()V

    .line 604
    return-void
.end method

.method protected setPrefNetTypeForMultiSim()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 1236
    const-string v4, "ro.csc.sales_code"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1237
    .local v3, "salesCode":Ljava/lang/String;
    const-string v4, "ril.MSIMM"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1238
    .local v1, "msimm":Ljava/lang/String;
    const-string v4, "persist.radio.dsds.msimm"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1239
    .local v2, "networkModeFlag":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->checkMasterSlot()I

    move-result v0

    .line 1240
    .local v0, "masterSlot":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MultiSim] Master slot : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Current Slot : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSimSlot()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1242
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MultiSim] networkModeFlag : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", useSlot2Data : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->useSlot2Data:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isCmccSIM : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1243
    const-string v4, "false"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->useSlot2Data:Z

    if-nez v4, :cond_0

    sget-boolean v4, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->isCmccSIM:Z

    if-eqz v4, :cond_2

    .line 1244
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[MultiSim] CurentNetworkType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreferredNetworkType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1246
    iget v4, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreferredNetworkType:I

    if-eq v4, v8, :cond_4

    iget v4, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreferredNetworkType:I

    if-eq v4, v7, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSimSlot()I

    move-result v4

    if-ne v0, v4, :cond_4

    .line 1248
    const-string v4, "[MultiSim] Set master slot network mode to W/G or T/G"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1249
    const-string v4, "CHM"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "CHC"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1250
    :cond_1
    iput v8, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1254
    :goto_0
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;

    invoke-direct {v5, p0, v1}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker$4;-><init>(Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1289
    :cond_2
    :goto_1
    return-void

    .line 1252
    :cond_3
    iput v7, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreferredNetworkType:I

    goto :goto_0

    .line 1281
    :cond_4
    iget v4, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreferredNetworkType:I

    if-eq v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSimSlot()I

    move-result v4

    if-eq v0, v4, :cond_2

    .line 1282
    const-string v4, "[MultiSim] Set slave slot network mode to Gsm only"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1283
    iput v6, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreferredNetworkType:I

    .line 1284
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget v5, p0, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->mPreferredNetworkType:I

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1285
    const/4 v4, 0x0

    sput-boolean v4, Lcom/android/internal/telephony/gsm/MultiSimGsmServiceStateTracker;->setModeFlag:Z

    goto :goto_1
.end method

.method public setRadioPowerOnNow()V
    .locals 0

    .prologue
    .line 1173
    return-void
.end method

.method protected updateSpnDisplay()V
    .locals 0

    .prologue
    .line 626
    invoke-super {p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->updateSpnDisplay()V

    .line 903
    return-void
.end method
