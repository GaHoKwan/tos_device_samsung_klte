.class public abstract Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.super Landroid/hardware/contextaware/dataprovider/DataProvider;
.source "SensorHubProvider.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubCmdProtocol;
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubRequest;


# static fields
.field public static final I2C_COMM_ERROR:I = -0x5

.field public static final NOT_RECEIVE_ACK:I = -0xb


# instance fields
.field private mFaultDetectionResult:I

.field private final mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/hardware/contextaware/dataprovider/DataProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    return-void
.end method


# virtual methods
.method protected final addRequestParser(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1
    .param p1, "parser"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    .prologue
    .line 420
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 421
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_0
    return-void
.end method

.method protected final checkFaultDetectionResult()Z
    .locals 2

    .prologue
    .line 398
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 131
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 132
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->clear()V

    .line 133
    return-void
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToUnregisterLib()[B

    move-result-object v0

    .line 114
    .local v0, "dataPacket":[B
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 116
    :cond_0
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForDisable()B

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0
.end method

.method protected final disableForRestore()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 95
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getDataPacketToRegisterLib()[B

    move-result-object v0

    .line 96
    .local v0, "dataPacket":[B
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v1

    if-ltz v1, :cond_0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-gtz v1, :cond_1

    .line 98
    :cond_0
    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_CMD_PACKET_CREATION_FAULT:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v1

    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 104
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstructionForEnable()B

    move-result v1

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getInstLibType()B

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0
.end method

.method protected final enableForRestore()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Action"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getDataPacketToRegisterLib()[B
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method protected getDataPacketToUnregisterLib()[B
    .locals 1

    .prologue
    .line 235
    const/4 v0, 0x2

    new-array v0, v0, [B

    return-object v0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 380
    const/4 v0, 0x1

    .line 382
    .local v0, "result":I
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->checkFaultDetectionResult()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 388
    :goto_0
    iget v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    invoke-static {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getFaultDetectionResult(ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    return-object v1

    .line 385
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected abstract getInstLibType()B
.end method

.method protected abstract getInstructionForDisable()B
.end method

.method protected abstract getInstructionForEnable()B
.end method

.method protected final initializeManager()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public parse([BI)I
    .locals 6
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 197
    move v2, p2

    .line 199
    .local v2, "tmpNext":I
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 201
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    array-length v4, p1

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_1

    .line 202
    :cond_0
    const/4 v3, -0x1

    .line 210
    :goto_0
    return v3

    .line 205
    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "tmpNext":I
    .local v3, "tmpNext":I
    aget-byte v0, p1, v2

    .line 206
    .local v0, "data":I
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 208
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/DataProvider;->notifyObserver()V

    move v2, v3

    .line 210
    .end local v3    # "tmpNext":I
    .restart local v2    # "tmpNext":I
    goto :goto_0
.end method

.method public final parseForRequestType([BI)I
    .locals 7
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v5, -0x1

    .line 317
    move v3, p2

    .line 319
    .local v3, "tmpNext":I
    array-length v6, p1

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_0

    .line 320
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 340
    :goto_0
    return v5

    .line 324
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v2, p1, v3

    .line 326
    .local v2, "requestType":I
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v6, :cond_1

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 327
    :cond_1
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_EMPTY_REQUEST_LIST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v6

    invoke-static {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v3, v4

    .line 330
    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    goto :goto_0

    .line 333
    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_2
    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    .line 334
    .local v1, "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;
    invoke-interface {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->getRequestType()I

    move-result v5

    if-ne v2, v5, :cond_3

    .line 335
    invoke-interface {v1, p1, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;->parse([BI)I

    move-result v3

    .end local v1    # "parser":Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;
    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    :goto_1
    move v5, v3

    .line 340
    goto :goto_0

    .end local v3    # "tmpNext":I
    .restart local v4    # "tmpNext":I
    :cond_4
    move v3, v4

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    goto :goto_1
.end method

.method public final pause()V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method protected final removeRequestParser(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;)V
    .locals 1
    .param p1, "parser"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;

    .prologue
    .line 433
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mRequestParserList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 436
    :cond_0
    return-void
.end method

.method protected final reset()V
    .locals 0

    .prologue
    .line 368
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    .line 369
    return-void
.end method

.method public final resume()V
    .locals 0

    .prologue
    .line 359
    return-void
.end method

.method public final sendCmdToSensorHub(BB[B)V
    .locals 3
    .param p1, "inst"    # B
    .param p2, "type"    # B
    .param p3, "data"    # [B

    .prologue
    .line 184
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    const/4 v2, 0x1

    aput-byte p2, v1, v2

    invoke-virtual {v0, p3, v1}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mFaultDetectionResult:I

    .line 186
    return-void
.end method

.method protected final sendCommonValueToSensorHub(B[B)Z
    .locals 6
    .param p1, "type"    # B
    .param p2, "data"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 249
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [B

    const/16 v5, -0x3f

    aput-byte v5, v4, v1

    aput-byte p1, v4, v2

    invoke-virtual {v3, p2, v4}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 251
    .local v0, "result":I
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 252
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 256
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected final sendPropertyValueToSensorHub(BBB[B)Z
    .locals 6
    .param p1, "category"    # B
    .param p2, "libType"    # B
    .param p3, "dataType"    # B
    .param p4, "data"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 298
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [B

    const/16 v5, -0x3f

    aput-byte v5, v4, v1

    aput-byte p1, v4, v2

    const/4 v5, 0x2

    aput-byte p2, v4, v5

    const/4 v5, 0x3

    aput-byte p3, v4, v5

    invoke-virtual {v3, p4, v4}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 301
    .local v0, "result":I
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 302
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 306
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected final sendPropertyValueToSensorHub(BB[B)Z
    .locals 6
    .param p1, "libType"    # B
    .param p2, "dataType"    # B
    .param p3, "data"    # [B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 272
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->getInstance()Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [B

    const/16 v5, -0x3f

    aput-byte v5, v4, v1

    aput-byte p1, v4, v2

    const/4 v5, 0x2

    aput-byte p2, v4, v5

    invoke-virtual {v3, p3, v4}, Landroid/hardware/contextaware/utilbundle/SensorHubCommManager;->sendCmdToSensorHub([B[B)I

    move-result v0

    .line 275
    .local v0, "result":I
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->SUCCESS:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getCode()I

    move-result v3

    if-eq v0, v3, :cond_0

    .line 276
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 280
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method protected final terminateManager()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method
