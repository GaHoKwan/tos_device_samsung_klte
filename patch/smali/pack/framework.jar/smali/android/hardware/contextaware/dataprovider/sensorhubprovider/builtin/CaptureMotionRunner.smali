.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;
.source "CaptureMotionRunner.java"


# instance fields
.field private final DEFAULT_IN_SAMPLING_NUM:I

.field private final DEFAULT_ORIENTATION_MAXIMUM_ANGLE:I

.field private final DEFAULT_ORIENTATION_MINIMUM_ANGLE:I

.field private final DEFAULT_OUT_SAMPLING_NUM:I

.field private final DEFAULT_TILT_MAXIMUM_ANGLE:I

.field private final DEFAULT_TILT_MINIMUM_ANGLE:I

.field private mInSamplingNum:I

.field private mOrientatonMaximumAngle:I

.field private mOrientatonMinimumAngle:I

.field private mOutSamplingNum:I

.field private mTiltMaximumAngle:I

.field private mTiltMinimumAngle:I


# direct methods
.method public constructor <init>(ILandroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V
    .locals 6
    .param p1, "version"    # I
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "observable"    # Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;

    .prologue
    const/16 v5, 0x50

    const/16 v4, 0x1e

    const/4 v3, 0x5

    const/4 v2, 0x1

    const/16 v1, -0xa

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;-><init>(ILandroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubResetObservable;)V

    .line 35
    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->DEFAULT_TILT_MINIMUM_ANGLE:I

    .line 38
    iput v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->DEFAULT_TILT_MAXIMUM_ANGLE:I

    .line 41
    iput v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->DEFAULT_ORIENTATION_MINIMUM_ANGLE:I

    .line 44
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->DEFAULT_ORIENTATION_MAXIMUM_ANGLE:I

    .line 47
    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->DEFAULT_IN_SAMPLING_NUM:I

    .line 50
    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->DEFAULT_OUT_SAMPLING_NUM:I

    .line 53
    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mTiltMinimumAngle:I

    .line 56
    iput v4, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mTiltMaximumAngle:I

    .line 59
    iput v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mOrientatonMinimumAngle:I

    .line 62
    const/16 v0, 0x64

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mOrientatonMaximumAngle:I

    .line 65
    iput v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mInSamplingNum:I

    .line 68
    iput v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mOutSamplingNum:I

    .line 83
    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .prologue
    .line 228
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 229
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->clear()V

    .line 230
    return-void
.end method

.method public final disable()V
    .locals 0

    .prologue
    .line 217
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 218
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->disable()V

    .line 219
    return-void
.end method

.method public final enable()V
    .locals 0

    .prologue
    .line 204
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 205
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->enable()V

    .line 206
    return-void
.end method

.method public final getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_CAPTURE_MOTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final getDataPacketToRegisterLib()[B
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 114
    const/16 v2, 0xa

    new-array v1, v2, [B

    .line 115
    .local v1, "packet":[B
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mTiltMinimumAngle:I

    invoke-static {v2, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 116
    .local v0, "data":[B
    aget-byte v2, v0, v4

    aput-byte v2, v1, v4

    .line 117
    aget-byte v2, v0, v5

    aput-byte v2, v1, v5

    .line 118
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mTiltMaximumAngle:I

    invoke-static {v2, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 119
    aget-byte v2, v0, v4

    aput-byte v2, v1, v6

    .line 120
    const/4 v2, 0x3

    aget-byte v3, v0, v5

    aput-byte v3, v1, v2

    .line 121
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mOrientatonMinimumAngle:I

    invoke-static {v2, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 122
    const/4 v2, 0x4

    aget-byte v3, v0, v4

    aput-byte v3, v1, v2

    .line 123
    const/4 v2, 0x5

    aget-byte v3, v0, v5

    aput-byte v3, v1, v2

    .line 124
    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mOrientatonMaximumAngle:I

    invoke-static {v2, v6}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 125
    const/4 v2, 0x6

    aget-byte v3, v0, v4

    aput-byte v3, v1, v2

    .line 126
    const/4 v2, 0x7

    aget-byte v3, v0, v5

    aput-byte v3, v1, v2

    .line 127
    const/16 v2, 0x8

    iget v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mInSamplingNum:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 128
    const/16 v2, 0x9

    iget v3, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mOutSamplingNum:I

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    .line 129
    return-object v1
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 241
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->checkFaultDetectionResult()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 242
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/LibTypeProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected final getInstLibType()B
    .locals 1

    .prologue
    .line 104
    const/16 v0, 0x27

    return v0
.end method

.method protected final getPowerObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 180
    return-object p0
.end method

.method protected final getPowerResetObserver()Landroid/hardware/contextaware/manager/ISensorHubResetObserver;
    .locals 0

    .prologue
    .line 192
    return-object p0
.end method

.method public final setPropertyValue(ILjava/lang/Object;)Z
    .locals 3
    .param p1, "property"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .line 141
    .local p2, "value":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    .line 142
    .local v0, "result":Z
    const/16 v1, 0x25

    if-ne p1, v1, :cond_0

    .line 143
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mTiltMinimumAngle:I

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retention Time = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mTiltMinimumAngle:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    .line 169
    :goto_0
    return v0

    .line 146
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    const/16 v1, 0x26

    if-ne p1, v1, :cond_1

    .line 147
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mTiltMaximumAngle:I

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Minimum Angle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mTiltMaximumAngle:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 150
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_1
    const/16 v1, 0x27

    if-ne p1, v1, :cond_2

    .line 151
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mOrientatonMinimumAngle:I

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Maximum Angle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mOrientatonMinimumAngle:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 154
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_2
    const/16 v1, 0x28

    if-ne p1, v1, :cond_3

    .line 155
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mOrientatonMaximumAngle:I

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving Thrs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mOrientatonMaximumAngle:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_3
    const/16 v1, 0x29

    if-ne p1, v1, :cond_4

    .line 159
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mInSamplingNum:I

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In Sampling Num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mInSamplingNum:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_4
    const/16 v1, 0x2a

    if-ne p1, v1, :cond_5

    .line 163
    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2    # "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mOutSamplingNum:I

    .line 165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Out Sampling Num = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/CaptureMotionRunner;->mOutSamplingNum:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 167
    .restart local p2    # "value":Ljava/lang/Object;, "TE;"
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_0
.end method
