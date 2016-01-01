.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;
.super Ljava/lang/Object;
.source "CurrentPositionRequestRunner.java"

# interfaces
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ICurrentPositionRequest;
.implements Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/ISensorHubRequestParser;
.implements Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    }
.end annotation


# instance fields
.field private final mCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

.field private mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

.field private mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-direct {v0, p1, p2, p0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/manager/ICurrrentPositionObserver;)V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    .line 168
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    .line 169
    return-void
.end method


# virtual methods
.method public getPosition()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    return-object v0
.end method

.method public final getRequestType()I
    .locals 1

    .prologue
    .line 180
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->REQUEST_CURRENT_POSITION:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;

    iget-byte v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$REQUEST_DATA;->value:B

    return v0
.end method

.method public final notifyObserver(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V
    .locals 1
    .param p1, "position"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    .prologue
    .line 282
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    invoke-interface {v0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;->updatePosition(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V

    .line 285
    :cond_0
    return-void
.end method

.method public final parse([BI)I
    .locals 4
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    .line 192
    move v1, p2

    .line 194
    .local v1, "tmpNext":I
    array-length v3, p1

    sub-int/2addr v3, v1

    add-int/lit8 v3, v3, -0x1

    if-gez v3, :cond_0

    .line 195
    sget-object v3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 196
    const/4 v2, -0x1

    .line 202
    :goto_0
    return v2

    .line 199
    :cond_0
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "tmpNext":I
    .local v2, "tmpNext":I
    aget-byte v0, p1, v1

    .line 200
    .local v0, "duration":I
    iget-object v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mCurrentPosition:Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;

    invoke-virtual {v3, v0}, Landroid/hardware/contextaware/utilbundle/CaCurrentPositionManager;->enable(I)V

    move v1, v2

    .line 202
    .end local v2    # "tmpNext":I
    .restart local v1    # "tmpNext":I
    goto :goto_0
.end method

.method public final registerObserver(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;)V
    .locals 0
    .param p1, "observer"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    .prologue
    .line 255
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    .line 256
    return-void
.end method

.method public final unregisterObserver()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mListener:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ICurrentPositionRequestObserver;

    .line 268
    return-void
.end method

.method public final updateCurrentPosition(I[IDDDDFFI)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "utcTime"    # [I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "distance"    # D
    .param p11, "speed"    # F
    .param p12, "accuracy"    # F
    .param p13, "satelliteCount"    # I

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", latitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3, p4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", longitude: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p5, p6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 221
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->type:I
    invoke-static {v0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$002(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)I

    .line 222
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->utcTime:[I
    invoke-static {v0, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$102(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;[I)[I

    .line 223
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->latitude:D
    invoke-static {v0, p3, p4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$202(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D

    .line 224
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->longitude:D
    invoke-static {v0, p5, p6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$302(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D

    .line 225
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->altitude:D
    invoke-static {v0, p7, p8}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$402(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D

    .line 226
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->distance:D
    invoke-static {v0, p9, p10}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$502(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;D)D

    .line 227
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->speed:F
    invoke-static {v0, p11}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$602(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)F

    .line 228
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->accuracy:F
    invoke-static {v0, p12}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$702(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;F)F

    .line 229
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    # setter for: Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->satelliteCount:I
    invoke-static {v0, p13}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;->access$802(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;I)I

    .line 231
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->mPosition:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;

    invoke-virtual {p0, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner;->notifyObserver(Landroid/hardware/contextaware/dataprovider/sensorhubprovider/request/builtin/CurrentPositionRequestRunner$Position;)V

    .line 232
    return-void
.end method
