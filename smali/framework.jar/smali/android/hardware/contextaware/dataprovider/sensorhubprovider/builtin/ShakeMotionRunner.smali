.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ShakeMotionRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "ShakeMotionRunner.java"


# static fields
.field private static final DEFAULT_SHAKE_DURATION:I = 0x320

.field private static final DEFAULT_SHAKE_STRENGTH:I = 0x2


# instance fields
.field private mShakeDuration:I

.field private mShakeStrength:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 1
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 41
    const/4 v0, 0x2

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ShakeMotionRunner;->mShakeStrength:I

    .line 44
    const/16 v0, 0x320

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ShakeMotionRunner;->mShakeDuration:I

    .line 59
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 190
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 191
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 192
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 179
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 180
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 181
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 166
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 167
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 168
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_SHAKE_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 91
    const/4 v2, 0x3

    new-array v1, v2, [B

    .line 92
    .local v1, "packet":[B
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ShakeMotionRunner;->mShakeStrength:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 93
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ShakeMotionRunner;->mShakeDuration:I

    invoke-static {v2, v5}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 94
    .local v0, "data":[B
    aget-byte v2, v0, v3

    aput-byte v2, v1, v4

    .line 95
    aget-byte v2, v0, v4

    aput-byte v2, v1, v5

    .line 97
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 203
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ShakeMotionRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 204
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0xd

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 142
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 154
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 6
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
    const/4 v4, 0x0

    .line 109
    const/4 v0, 0x1

    .line 110
    .local v0, "result":Z
    const/16 v3, 0xe

    if-ne p1, v3, :cond_2

    .line 111
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 113
    .local v2, "shakeStrength":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Strength = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ShakeMotionRunner;->mShakeStrength:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 114
    if-lez v2, :cond_0

    const/4 v3, 0x5

    if-le v2, v3, :cond_1

    .line 115
    :cond_0
    const-string v3, "range error of shake strength (range : 1~5)"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    move v3, v4

    .line 131
    .end local v2    # "shakeStrength":I
    :goto_0
    return v3

    .line 118
    .restart local v2    # "shakeStrength":I
    :cond_1
    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ShakeMotionRunner;->mShakeStrength:I

    .end local v2    # "shakeStrength":I
    :goto_1
    move v3, v0

    .line 131
    goto :goto_0

    .line 119
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/16 v3, 0xf

    if-ne p1, v3, :cond_5

    .line 120
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 122
    .local v1, "shakeDuration":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Duration = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ShakeMotionRunner;->mShakeDuration:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 123
    if-lez v1, :cond_3

    const/16 v3, 0x1388

    if-le v1, v3, :cond_4

    .line 124
    :cond_3
    const-string v3, "range error of shake duration (range : 1~5000)"

    invoke-static {v3}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    move v3, v4

    .line 125
    goto :goto_0

    .line 127
    :cond_4
    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ShakeMotionRunner;->mShakeDuration:I

    goto :goto_1

    .line 129
    .end local v1    # "shakeDuration":I
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method
