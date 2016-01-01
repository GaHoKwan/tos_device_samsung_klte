.class public Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;
.super Ljava/lang/Object;
.source "SensorHubCommManager.java"

# interfaces
.implements Landroid/hardware/contextaware/utilbundle/IUtilManager;


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;


# instance fields
.field private mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs generatePacket([B[B)[B
    .locals 9
    .param p1, "data"    # [B
    .param p2, "headerData"    # [B

    .prologue
    .line 163
    array-length v1, p2

    .line 164
    .local v1, "headerLength":I
    const/4 v8, 0x2

    if-lt v1, v8, :cond_0

    const/4 v8, 0x4

    if-le v1, v8, :cond_2

    .line 165
    :cond_0
    const/4 v7, 0x0

    .line 178
    :cond_1
    return-object v7

    .line 168
    :cond_2
    const/4 v4, 0x0

    .line 169
    .local v4, "index":I
    array-length v8, p1

    add-int/2addr v8, v1

    new-array v7, v8, [B

    .line 171
    .local v7, "packet":[B
    move-object v0, p2

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v5, v4

    .end local v4    # "index":I
    .local v5, "index":I
    :goto_0
    if-ge v3, v6, :cond_3

    aget-byte v2, v0, v3

    .line 172
    .local v2, "i":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aput-byte v2, v7, v5

    .line 171
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_0

    .line 174
    .end local v2    # "i":B
    :cond_3
    move-object v0, p1

    array-length v6, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_1

    aget-byte v2, v0, v3

    .line 175
    .restart local v2    # "i":B
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "index":I
    .restart local v4    # "index":I
    aput-byte v2, v7, v5

    .line 174
    add-int/lit8 v3, v3, 0x1

    move v5, v4

    .end local v4    # "index":I
    .restart local v5    # "index":I
    goto :goto_1
.end method

.method public static getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;
    .locals 2

    .prologue
    .line 42
    sget-object v0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->instance:Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    if-nez v0, :cond_1

    .line 43
    const-class v1, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    monitor-enter v1

    .line 44
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->instance:Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->instance:Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    .line 47
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->instance:Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getSensorHubManager()Landroid/hardware/sensorhub/SensorHubManager;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    return-object v0
.end method

.method private setSensorHubManager(Landroid/hardware/sensorhub/SensorHubManager;)V
    .locals 0
    .param p1, "manager"    # Landroid/hardware/sensorhub/SensorHubManager;

    .prologue
    .line 188
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    .line 189
    return-void
.end method


# virtual methods
.method public final initializeManager(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 62
    const-string v0, "Context is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    const-string v0, "sensorhub"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sensorhub/SensorHubManager;

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->setSensorHubManager(Landroid/hardware/sensorhub/SensorHubManager;)V

    .line 69
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Landroid/hardware/sensorhub/SensorHubManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 70
    const-string v0, "mSensorHubManager is null."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final varargs sendCmdToSensorHub([B[B)I
    .locals 5
    .param p1, "data"    # [B
    .param p2, "headerData"    # [B

    .prologue
    .line 128
    array-length v0, p2

    .line 129
    .local v0, "headerLength":I
    const/4 v4, 0x2

    if-lt v0, v4, :cond_0

    const/4 v4, 0x4

    if-le v0, v4, :cond_2

    .line 130
    :cond_0
    sget-object v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_HEADER_LENGTH:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    .line 150
    :cond_1
    :goto_0
    return v2

    .line 133
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->generatePacket([B[B)[B

    move-result-object v1

    .line 134
    .local v1, "packet":[B
    if-eqz v1, :cond_3

    array-length v4, v1

    if-gtz v4, :cond_4

    .line 135
    :cond_3
    sget-object v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_GENERATION_FAIL:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v2

    goto :goto_0

    .line 138
    :cond_4
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->byteArrToString([B)Ljava/lang/String;

    move-result-object v3

    .line 139
    .local v3, "str":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 140
    :cond_5
    const-string v4, "Packet is null"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    .line 145
    :goto_1
    array-length v4, v1

    invoke-virtual {p0, v4, v1}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendPacketToSensorHub(I[B)I

    move-result v2

    .line 146
    .local v2, "result":I
    sget-object v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v4

    if-eq v2, v4, :cond_1

    .line 147
    invoke-static {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    .end local v2    # "result":I
    :cond_6
    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final sendPacketToSensorHub(I[B)I
    .locals 4
    .param p1, "len"    # I
    .param p2, "packet"    # [B

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Landroid/hardware/sensorhub/SensorHubManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 98
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_SENSOR_HUB_MANAGER_NULL_EXEPTION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    .line 115
    :goto_0
    return v0

    .line 102
    :cond_0
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Landroid/hardware/sensorhub/SensorHubManager;

    move-result-object v1

    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getSensorHubManager()Landroid/hardware/sensorhub/SensorHubManager;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/hardware/sensorhub/SensorHubManager;->getDefaultSensorHub(I)Landroid/hardware/sensorhub/SensorHub;

    move-result-object v2

    invoke-virtual {v1, v2, p1, p2}, Landroid/hardware/sensorhub/SensorHubManager;->SendSensorHubData(Landroid/hardware/sensorhub/SensorHub;I[B)I

    move-result v0

    .line 105
    .local v0, "result":I
    if-lez v0, :cond_1

    .line 106
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0

    .line 107
    :cond_1
    const/4 v1, -0x5

    if-ne v0, v1, :cond_2

    .line 108
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_I2C_COMM:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0

    .line 109
    :cond_2
    const/16 v1, -0xb

    if-ne v0, v1, :cond_3

    .line 110
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_NOT_RECEIVE_ACK:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0

    .line 112
    :cond_3
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_SENSOR_HUB_MANAGER_FAULT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v0

    goto :goto_0
.end method

.method public final terminateManager()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->setSensorHubManager(Landroid/hardware/sensorhub/SensorHubManager;)V

    .line 85
    return-void
.end method

.method public final varargs testGeneratePacket([B[B)[B
    .locals 1
    .param p1, "data"    # [B
    .param p2, "headerData"    # [B
    .annotation runtime Landroid/test/FlakyTest;
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0, p1, p2}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->generatePacket([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public final testGetSensorHubManager()Landroid/hardware/sensorhub/SensorHubManager;
    .locals 1
    .annotation runtime Landroid/test/FlakyTest;
    .end annotation

    .prologue
    .line 222
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->mSensorHubManager:Landroid/hardware/sensorhub/SensorHubManager;

    return-object v0
.end method
