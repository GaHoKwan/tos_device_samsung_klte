.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "AbnormalShockRunner.java"


# static fields
.field private static final DEFAULT_SHOCK_DURATION:I = 0xc8

.field private static final DEFAULT_SHOCK_STRENGTH:I = 0x3


# instance fields
.field private mDuration:I

.field private mStrength:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 46
    const/4 v0, 0x3

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->mStrength:I

    .line 49
    const/16 v0, 0xc8

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->mDuration:I

    .line 64
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 256
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 257
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 258
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 245
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 246
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 247
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 232
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 233
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 234
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ABNORMAL_SHOCK:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "UserStatus"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 96
    const/4 v2, 0x3

    new-array v1, v2, [B

    .line 97
    .local v1, "packet":[B
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->mStrength:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 98
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->mDuration:I

    invoke-static {v2, v5}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 99
    .local v0, "data":[B
    aget-byte v2, v0, v3

    aput-byte v2, v1, v4

    .line 100
    aget-byte v2, v0, v4

    aput-byte v2, v1, v5

    .line 102
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 270
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 85
    const/16 v0, 0x26

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 208
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 220
    return-object p0
.end method

.method public final parse([BI)I
    .locals 9
    .param p1, "packet"    # [B
    .param p2, "next"    # I

    .prologue
    const/4 v8, 0x0

    .line 177
    move v3, p2

    .line 179
    .local v3, "tmpNext":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v6

    aget-object v0, v6, v8

    .line 182
    .local v0, "name":Ljava/lang/String;
    array-length v6, p1

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x2

    if-gez v6, :cond_0

    .line 183
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->ERROR_PACKET_LOST:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubErrors;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 184
    const/4 v6, -0x1

    .line 197
    :goto_0
    return v6

    .line 187
    :cond_0
    const/4 v6, 0x2

    new-array v2, v6, [B

    fill-array-data v2, :array_0

    .line 188
    .local v2, "stat":[B
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "tmpNext":I
    .local v4, "tmpNext":I
    aget-byte v6, p1, v3

    aput-byte v6, v2, v8

    .line 189
    const/4 v6, 0x1

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "tmpNext":I
    .restart local v3    # "tmpNext":I
    aget-byte v7, p1, v4

    aput-byte v7, v2, v6

    .line 190
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 191
    .local v5, "wrapped":Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    .line 193
    .local v1, "num":S
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getContextBean()Landroid/hardware/contextaware/manager/ContextBean;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Landroid/hardware/contextaware/manager/ContextBean;->putContext(Ljava/lang/String;I)V

    .line 195
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->notifyObserver()V

    move v6, v3

    .line 197
    goto :goto_0

    .line 187
    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 8
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 126
    const/4 v2, 0x1

    .line 127
    .local v2, "result":Z
    const/16 v4, 0x2c

    if-ne p1, v4, :cond_2

    .line 128
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 130
    .local v3, "strength":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Strength = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 132
    if-lez v3, :cond_0

    const/4 v4, 0x5

    if-le v3, v4, :cond_1

    .line 133
    :cond_0
    const-string v4, "range error of abnormal shock strength (range : 1~5)"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    move v4, v5

    .line 165
    .end local v3    # "strength":I
    :goto_0
    return v4

    .line 137
    .restart local v3    # "strength":I
    :cond_1
    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->mStrength:I

    .end local v3    # "strength":I
    :goto_1
    move v4, v2

    .line 165
    goto :goto_0

    .line 138
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/16 v4, 0x2d

    if-ne p1, v4, :cond_5

    .line 140
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 142
    .local v1, "duration":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 144
    if-lez v1, :cond_3

    const/16 v4, 0x1388

    if-le v1, v4, :cond_4

    .line 145
    :cond_3
    const-string v4, "range error of abnormal shock duration (range : 1~5000)"

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    move v4, v5

    .line 147
    goto :goto_0

    .line 149
    :cond_4
    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->mDuration:I

    goto :goto_1

    .line 150
    .end local v1    # "duration":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_5
    const/16 v4, 0x2e

    if-ne p1, v4, :cond_6

    .line 152
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 154
    .local v0, "action":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "User action = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 157
    const/16 v4, 0x17

    const/16 v5, 0x26

    invoke-static {v0, v7}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v6

    invoke-virtual {p0, v4, v5, v7, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/AbnormalShockRunner;->sendPropertyValueToSensorHub(BBB[B)Z

    move-result v2

    .line 162
    goto :goto_1

    .line 163
    .end local v0    # "action":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method
