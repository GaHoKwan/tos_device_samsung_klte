.class final Lcom/android/server/power/DisplayPowerRequest;
.super Ljava/lang/Object;
.source "DisplayPowerRequest.java"


# static fields
.field public static final SCREEN_STATE_BRIGHT:I = 0x2

.field public static final SCREEN_STATE_DIM:I = 0x1

.field public static final SCREEN_STATE_OFF:I


# instance fields
.field public autoBrightnessForEbookOnly:Z

.field public autoBrightnessLowerLimit:I

.field public autoBrightnessUpperLimit:I

.field public blockScreenOn:Z

.field public forceLcdBacklightOffEnabled:Z

.field public isAlpmMode:Z

.field public lastGoToSleepReason:I

.field public masterBrightnessAdjustment:I

.field public masterBrightnessAdjustmentValidRangeMax:I

.field public masterBrightnessAdjustmentValidRangeMin:I

.field public maxBrightness:I

.field public minBrightness:I

.field public screenAutoBrightnessAdjustment:F

.field public screenBrightness:I

.field public screenState:I

.field public useAutoBrightness:Z

.field public useProximitySensor:Z

.field public useSystemPowerSaveMode:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0xff

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    .line 72
    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    .line 73
    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    .line 76
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->isAlpmMode:Z

    .line 83
    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    .line 84
    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    .line 87
    iput v1, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    .line 88
    iput v1, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    .line 89
    iput v2, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    .line 93
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    .line 96
    iput v1, p0, Lcom/android/server/power/DisplayPowerRequest;->lastGoToSleepReason:I

    .line 101
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    .line 102
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    .line 103
    iput v2, p0, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 105
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    .line 106
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    .line 107
    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/DisplayPowerRequest;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/power/DisplayPowerRequest;

    .prologue
    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    .line 72
    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    .line 73
    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    .line 76
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 80
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->isAlpmMode:Z

    .line 83
    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    .line 84
    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    .line 87
    iput v1, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    .line 88
    iput v1, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    .line 89
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    .line 93
    iput-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    .line 96
    iput v1, p0, Lcom/android/server/power/DisplayPowerRequest;->lastGoToSleepReason:I

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/server/power/DisplayPowerRequest;->copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V

    .line 111
    return-void
.end method


# virtual methods
.method public copyFrom(Lcom/android/server/power/DisplayPowerRequest;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/power/DisplayPowerRequest;

    .prologue
    .line 114
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    .line 115
    iget-boolean v0, p1, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    .line 116
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    .line 117
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    .line 118
    iget-boolean v0, p1, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    .line 119
    iget-boolean v0, p1, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    .line 121
    iget-boolean v0, p1, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    .line 122
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    .line 123
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    .line 124
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    .line 125
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    .line 127
    iget-boolean v0, p1, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    .line 130
    iget-boolean v0, p1, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    .line 134
    iget-boolean v0, p1, Lcom/android/server/power/DisplayPowerRequest;->isAlpmMode:Z

    iput-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->isAlpmMode:Z

    .line 138
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->lastGoToSleepReason:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->lastGoToSleepReason:I

    .line 142
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    .line 143
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    .line 144
    iget v0, p1, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    iput v0, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    .line 147
    return-void
.end method

.method public equals(Lcom/android/server/power/DisplayPowerRequest;)Z
    .locals 2
    .param p1, "other"    # Lcom/android/server/power/DisplayPowerRequest;

    .prologue
    .line 156
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    iget-boolean v1, p1, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    iget-boolean v1, p1, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    iget-boolean v1, p1, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    iget-boolean v1, p1, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    iget-boolean v1, p1, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    iget-boolean v1, p1, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/power/DisplayPowerRequest;->isAlpmMode:Z

    iget-boolean v1, p1, Lcom/android/server/power/DisplayPowerRequest;->isAlpmMode:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/power/DisplayPowerRequest;->lastGoToSleepReason:I

    iget v1, p1, Lcom/android/server/power/DisplayPowerRequest;->lastGoToSleepReason:I

    if-ne v0, v1, :cond_0

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
    .line 151
    instance-of v0, p1, Lcom/android/server/power/DisplayPowerRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/power/DisplayPowerRequest;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/power/DisplayPowerRequest;->equals(Lcom/android/server/power/DisplayPowerRequest;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "screenState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->screenState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useProximitySensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useProximitySensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->screenBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", screenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->screenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useAutoBrightness:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", blockScreenOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->blockScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useSystemPowerSaveMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->useSystemPowerSaveMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoBrightnessLowerLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessLowerLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoBrightnessUpperLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessUpperLimit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->maxBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", minBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->minBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoBrightnessForEbookOnly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->autoBrightnessForEbookOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", forceLcdBacklightOffEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->forceLcdBacklightOffEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAlpmMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/power/DisplayPowerRequest;->isAlpmMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", masterBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustment:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", masterBrightnessAdjustmentValidRangeMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", masterBrightnessAdjustmentValidRangeMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->masterBrightnessAdjustmentValidRangeMax:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lastGoToSleepReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/DisplayPowerRequest;->lastGoToSleepReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
