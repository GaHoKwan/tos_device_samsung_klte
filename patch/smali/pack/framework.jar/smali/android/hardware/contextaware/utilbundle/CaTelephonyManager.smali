.class public Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;
.super Ljava/lang/Object;
.source "CaTelephonyManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# static fields
.field private static final CALL_STATE_ACTIVE:B = -0x27t

.field private static final CALL_STATE_IDLE:B = -0x28t

.field private static volatile instance:Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;


# instance fields
.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager$1;-><init>(Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;I)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->sendCallStatusToSensorHub(I)V

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->instance:Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->instance:Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->instance:Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    .line 52
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->instance:Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;

    return-object v0

    .line 52
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private sendCallStatusToSensorHub(I)V
    .locals 5
    .param p1, "status"    # I

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 127
    new-array v0, v4, [B

    .line 128
    .local v0, "dataPacket":[B
    int-to-byte v2, p1

    aput-byte v2, v0, v3

    .line 129
    const/4 v2, 0x1

    aput-byte v3, v0, v2

    .line 131
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v2

    new-array v3, v4, [B

    fill-array-data v3, :array_0

    invoke-virtual {v2, v0, v3}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v1

    .line 135
    .local v1, "result":I
    sget-object v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 136
    invoke-static {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 138
    :cond_0
    return-void

    .line 131
    nop

    :array_0
    .array-data 1
        -0x4ct
        0x11t
    .end array-data
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    if-nez p1, :cond_0

    .line 67
    const-string v0, "Context is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 83
    :goto_0
    return-void

    .line 71
    :cond_0
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 74
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_1

    .line 75
    const-string v0, "mTelephonyManager is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0
.end method

.method public final terminateManager()V
    .locals 3

    .prologue
    .line 93
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaTelephonyManager;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 97
    :cond_0
    return-void
.end method
