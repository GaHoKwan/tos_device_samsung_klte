.class public Landroid/view/animation/RotateAnimation3D;
.super Landroid/view/animation/Animation;
.source "RotateAnimation3D.java"


# static fields
.field static final LOG_ACTIVITY_ACTIVITY:Z


# instance fields
.field private count:I

.field private currAngle:F

.field private defaultConstInit:Z

.field private fadeFrom:F

.field private fadeTo:F

.field private fromAngle:F

.field private fromAngleDeg:F

.field private isAbsolute:Z

.field private mAxisXValue:F

.field private mAxisYValue:F

.field private mAxisZValue:F

.field private mPivotXMultiplier:I

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotYMultiplier:I

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mPivotZMultiplier:I

.field private mPivotZType:I

.field private mPivotZValue:F

.field private orientationAdjustment:I

.field private rotationString:Ljava/lang/String;

.field private sXPivotMultiplier:I

.field private sYPivotMultiplier:I

.field private sZPivotMultiplier:I

.field private toAngle:F

.field private toAngleDeg:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 147
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 39
    iput v1, p0, Landroid/view/animation/RotateAnimation3D;->fromAngleDeg:F

    iput v1, p0, Landroid/view/animation/RotateAnimation3D;->toAngleDeg:F

    .line 41
    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->fadeFrom:F

    .line 42
    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->fadeTo:F

    .line 44
    iput-boolean v0, p0, Landroid/view/animation/RotateAnimation3D;->isAbsolute:Z

    .line 45
    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->count:I

    .line 47
    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->mPivotXType:I

    .line 49
    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->mPivotYType:I

    .line 51
    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->mPivotZType:I

    .line 57
    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->mPivotXMultiplier:I

    .line 58
    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->mPivotYMultiplier:I

    .line 59
    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->mPivotZMultiplier:I

    .line 61
    iput v3, p0, Landroid/view/animation/RotateAnimation3D;->orientationAdjustment:I

    .line 63
    iput-boolean v0, p0, Landroid/view/animation/RotateAnimation3D;->defaultConstInit:Z

    .line 65
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->sXPivotMultiplier:I

    .line 67
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->sYPivotMultiplier:I

    .line 69
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->sZPivotMultiplier:I

    .line 76
    const-string v0, "ROTATION_"

    iput-object v0, p0, Landroid/view/animation/RotateAnimation3D;->rotationString:Ljava/lang/String;

    .line 148
    iput-boolean v3, p0, Landroid/view/animation/RotateAnimation3D;->defaultConstInit:Z

    .line 149
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 157
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    iput v6, p0, Landroid/view/animation/RotateAnimation3D;->fromAngleDeg:F

    iput v6, p0, Landroid/view/animation/RotateAnimation3D;->toAngleDeg:F

    .line 41
    iput v7, p0, Landroid/view/animation/RotateAnimation3D;->fadeFrom:F

    .line 42
    iput v7, p0, Landroid/view/animation/RotateAnimation3D;->fadeTo:F

    .line 44
    iput-boolean v5, p0, Landroid/view/animation/RotateAnimation3D;->isAbsolute:Z

    .line 45
    iput v5, p0, Landroid/view/animation/RotateAnimation3D;->count:I

    .line 47
    iput v5, p0, Landroid/view/animation/RotateAnimation3D;->mPivotXType:I

    .line 49
    iput v5, p0, Landroid/view/animation/RotateAnimation3D;->mPivotYType:I

    .line 51
    iput v5, p0, Landroid/view/animation/RotateAnimation3D;->mPivotZType:I

    .line 57
    iput v5, p0, Landroid/view/animation/RotateAnimation3D;->mPivotXMultiplier:I

    .line 58
    iput v5, p0, Landroid/view/animation/RotateAnimation3D;->mPivotYMultiplier:I

    .line 59
    iput v5, p0, Landroid/view/animation/RotateAnimation3D;->mPivotZMultiplier:I

    .line 61
    iput v9, p0, Landroid/view/animation/RotateAnimation3D;->orientationAdjustment:I

    .line 63
    iput-boolean v5, p0, Landroid/view/animation/RotateAnimation3D;->defaultConstInit:Z

    .line 65
    sget-object v2, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->sXPivotMultiplier:I

    .line 67
    sget-object v2, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->sYPivotMultiplier:I

    .line 69
    sget-object v2, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->sZPivotMultiplier:I

    .line 76
    const-string v2, "ROTATION_"

    iput-object v2, p0, Landroid/view/animation/RotateAnimation3D;->rotationString:Ljava/lang/String;

    .line 158
    iput-boolean v5, p0, Landroid/view/animation/RotateAnimation3D;->defaultConstInit:Z

    .line 159
    sget-object v2, Lcom/android/internal/R$styleable;->RotateAnimation3D:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 161
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 164
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->mPivotXType:I

    .line 165
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->mPivotXValue:F

    .line 167
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 170
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->mPivotYType:I

    .line 171
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->mPivotYValue:F

    .line 173
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 176
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->mPivotZType:I

    .line 177
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->mPivotZValue:F

    .line 179
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->mAxisXValue:F

    .line 184
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->mAxisYValue:F

    .line 189
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->mAxisZValue:F

    .line 194
    const-string v2, "GRaphics Rot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/animation/RotateAnimation3D;->mAxisXValue:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/animation/RotateAnimation3D;->mAxisYValue:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/animation/RotateAnimation3D;->mAxisZValue:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->mPivotXMultiplier:I

    .line 200
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->mPivotYMultiplier:I

    .line 203
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->mPivotZMultiplier:I

    .line 207
    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->fromAngleDeg:F

    .line 210
    invoke-virtual {v0, v9, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->toAngleDeg:F

    .line 213
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->fadeFrom:F

    .line 216
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->fadeTo:F

    .line 220
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/animation/RotateAnimation3D;->isAbsolute:Z

    .line 223
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 12
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 228
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v2

    sget v3, Landroid/view/animation/Transformation;->TYPE_MATRIX_3D:I

    or-int/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 230
    iget v2, p0, Landroid/view/animation/RotateAnimation3D;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/animation/RotateAnimation3D;->count:I

    .line 235
    iget-object v0, p2, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    .line 236
    .local v0, "transObj":Landroid/view/animation/ModelViewState;
    iget v2, p0, Landroid/view/animation/RotateAnimation3D;->fromAngleDeg:F

    iget v3, p0, Landroid/view/animation/RotateAnimation3D;->toAngleDeg:F

    iget v4, p0, Landroid/view/animation/RotateAnimation3D;->fromAngleDeg:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 238
    .local v1, "degrees":F
    iget v2, p0, Landroid/view/animation/RotateAnimation3D;->fadeFrom:F

    iget v3, p0, Landroid/view/animation/RotateAnimation3D;->fadeTo:F

    iget v4, p0, Landroid/view/animation/RotateAnimation3D;->fadeFrom:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v11, v2, v3

    .line 239
    .local v11, "alpha":F
    invoke-virtual {p2, v11}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 246
    iget v2, p0, Landroid/view/animation/RotateAnimation3D;->mAxisXValue:F

    iget v3, p0, Landroid/view/animation/RotateAnimation3D;->mAxisYValue:F

    iget v4, p0, Landroid/view/animation/RotateAnimation3D;->mAxisZValue:F

    iget v5, p0, Landroid/view/animation/RotateAnimation3D;->mPivotXValue:F

    iget v6, p0, Landroid/view/animation/RotateAnimation3D;->sXPivotMultiplier:I

    iget v7, p0, Landroid/view/animation/RotateAnimation3D;->mPivotYValue:F

    iget v8, p0, Landroid/view/animation/RotateAnimation3D;->sYPivotMultiplier:I

    iget v9, p0, Landroid/view/animation/RotateAnimation3D;->mPivotZValue:F

    iget v10, p0, Landroid/view/animation/RotateAnimation3D;->sZPivotMultiplier:I

    invoke-virtual/range {v0 .. v10}, Landroid/view/animation/ModelViewState;->setRotationAnimation(FFFFFIFIFI)V

    .line 249
    return-void
.end method

.method public final getFromAngleDeg()F
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/view/animation/RotateAnimation3D;->fromAngleDeg:F

    return v0
.end method

.method public final getToAngle()F
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Landroid/view/animation/RotateAnimation3D;->toAngleDeg:F

    return v0
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    const/4 v1, 0x1

    .line 255
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 256
    iget-boolean v0, p0, Landroid/view/animation/RotateAnimation3D;->defaultConstInit:Z

    if-nez v0, :cond_2

    .line 257
    iget v0, p0, Landroid/view/animation/RotateAnimation3D;->mPivotXMultiplier:I

    if-nez v0, :cond_3

    .line 259
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->sXPivotMultiplier:I

    .line 266
    :cond_0
    :goto_0
    iget v0, p0, Landroid/view/animation/RotateAnimation3D;->mPivotYMultiplier:I

    if-nez v0, :cond_4

    .line 268
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->sYPivotMultiplier:I

    .line 275
    :cond_1
    :goto_1
    iget v0, p0, Landroid/view/animation/RotateAnimation3D;->mPivotZMultiplier:I

    if-nez v0, :cond_5

    .line 277
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->sZPivotMultiplier:I

    .line 284
    :cond_2
    :goto_2
    return-void

    .line 261
    :cond_3
    iget v0, p0, Landroid/view/animation/RotateAnimation3D;->mPivotXMultiplier:I

    if-ne v0, v1, :cond_0

    .line 263
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->sXPivotMultiplier:I

    goto :goto_0

    .line 270
    :cond_4
    iget v0, p0, Landroid/view/animation/RotateAnimation3D;->mPivotYMultiplier:I

    if-ne v0, v1, :cond_1

    .line 272
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->sYPivotMultiplier:I

    goto :goto_1

    .line 279
    :cond_5
    iget v0, p0, Landroid/view/animation/RotateAnimation3D;->mPivotZMultiplier:I

    if-ne v0, v1, :cond_2

    .line 281
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation3D;->sZPivotMultiplier:I

    goto :goto_2
.end method

.method public final isAbsolute()Z
    .locals 1

    .prologue
    .line 123
    iget-boolean v0, p0, Landroid/view/animation/RotateAnimation3D;->isAbsolute:Z

    return v0
.end method

.method public setAbsolute(Z)V
    .locals 0
    .param p1, "bIsAbsolute"    # Z

    .prologue
    .line 134
    iput-boolean p1, p0, Landroid/view/animation/RotateAnimation3D;->isAbsolute:Z

    .line 135
    return-void
.end method

.method public setFadeValues(FF)V
    .locals 0
    .param p1, "from"    # F
    .param p2, "to"    # F

    .prologue
    .line 139
    iput p1, p0, Landroid/view/animation/RotateAnimation3D;->fadeFrom:F

    .line 140
    iput p2, p0, Landroid/view/animation/RotateAnimation3D;->fadeTo:F

    .line 141
    return-void
.end method

.method public setFinalAngle(F)Z
    .locals 1
    .param p1, "angleDeg"    # F

    .prologue
    .line 117
    iput p1, p0, Landroid/view/animation/RotateAnimation3D;->toAngleDeg:F

    .line 118
    const/4 v0, 0x1

    return v0
.end method

.method public setInitialAngle(F)Z
    .locals 1
    .param p1, "angleDeg"    # F

    .prologue
    .line 103
    iput p1, p0, Landroid/view/animation/RotateAnimation3D;->fromAngleDeg:F

    .line 104
    const/4 v0, 0x1

    return v0
.end method
