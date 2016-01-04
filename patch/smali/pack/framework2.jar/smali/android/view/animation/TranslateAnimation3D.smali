.class public Landroid/view/animation/TranslateAnimation3D;
.super Landroid/view/animation/Animation;
.source "TranslateAnimation3D.java"


# instance fields
.field private final LOG_ANIMATION:Z

.field private currXRatio:F

.field private currYRatio:F

.field private currZRatio:F

.field private defaultConstInit:Z

.field private fromMoveVector_xType:I

.field private fromMoveVector_xValue:F

.field private fromMoveVector_yType:I

.field private fromMoveVector_yValue:F

.field private fromMoveVector_zType:I

.field private fromMoveVector_zValue:F

.field private fromXDelta_Multiplier:I

.field private fromXRatio:F

.field private fromYDelta_Multiplier:I

.field private fromYRatio:F

.field private fromZDelta_Multiplier:I

.field private fromZRatio:F

.field private isAbsolute:Z

.field private mFromAlpha:F

.field private mToAlpha:F

.field private sXDelta_Multiplier:I

.field private sYDelta_Multiplier:I

.field private sZDelta_Multiplier:I

.field private toMoveVector_xType:I

.field private toMoveVector_xValue:F

.field private toMoveVector_yType:I

.field private toMoveVector_yValue:F

.field private toMoveVector_zType:I

.field private toMoveVector_zValue:F

.field private toXDelta_Multiplier:I

.field private toXRatio:F

.field private toYDelta_Multiplier:I

.field private toYRatio:F

.field private toZDelta_Multiplier:I

.field private toZRatio:F

.field private translateString:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 108
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 36
    iput-boolean v1, p0, Landroid/view/animation/TranslateAnimation3D;->LOG_ANIMATION:Z

    .line 37
    iput-boolean v1, p0, Landroid/view/animation/TranslateAnimation3D;->isAbsolute:Z

    .line 54
    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->fromXDelta_Multiplier:I

    .line 55
    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->fromYDelta_Multiplier:I

    .line 56
    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->fromZDelta_Multiplier:I

    .line 57
    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->toXDelta_Multiplier:I

    .line 58
    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->toYDelta_Multiplier:I

    .line 59
    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->toZDelta_Multiplier:I

    .line 61
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    .line 63
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    .line 65
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    .line 78
    iput-boolean v1, p0, Landroid/view/animation/TranslateAnimation3D;->defaultConstInit:Z

    .line 79
    const-string v0, "TRANSLATION_"

    iput-object v0, p0, Landroid/view/animation/TranslateAnimation3D;->translateString:Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/TranslateAnimation3D;->defaultConstInit:Z

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-boolean v3, p0, Landroid/view/animation/TranslateAnimation3D;->LOG_ANIMATION:Z

    .line 37
    iput-boolean v3, p0, Landroid/view/animation/TranslateAnimation3D;->isAbsolute:Z

    .line 54
    iput v3, p0, Landroid/view/animation/TranslateAnimation3D;->fromXDelta_Multiplier:I

    .line 55
    iput v3, p0, Landroid/view/animation/TranslateAnimation3D;->fromYDelta_Multiplier:I

    .line 56
    iput v3, p0, Landroid/view/animation/TranslateAnimation3D;->fromZDelta_Multiplier:I

    .line 57
    iput v3, p0, Landroid/view/animation/TranslateAnimation3D;->toXDelta_Multiplier:I

    .line 58
    iput v3, p0, Landroid/view/animation/TranslateAnimation3D;->toYDelta_Multiplier:I

    .line 59
    iput v3, p0, Landroid/view/animation/TranslateAnimation3D;->toZDelta_Multiplier:I

    .line 61
    sget-object v2, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    .line 63
    sget-object v2, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    .line 65
    sget-object v2, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    .line 78
    iput-boolean v3, p0, Landroid/view/animation/TranslateAnimation3D;->defaultConstInit:Z

    .line 79
    const-string v2, "TRANSLATION_"

    iput-object v2, p0, Landroid/view/animation/TranslateAnimation3D;->translateString:Ljava/lang/String;

    .line 115
    iput-boolean v3, p0, Landroid/view/animation/TranslateAnimation3D;->defaultConstInit:Z

    .line 116
    sget-object v2, Lcom/android/internal/R$styleable;->TranslateAnimation3D:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 118
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 121
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_xType:I

    .line 122
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_xValue:F

    .line 123
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 126
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_yType:I

    .line 127
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_yValue:F

    .line 128
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 131
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_zType:I

    .line 132
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_zValue:F

    .line 134
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 137
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_xType:I

    .line 138
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_xValue:F

    .line 139
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 142
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_yType:I

    .line 143
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_yValue:F

    .line 144
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 147
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_zType:I

    .line 148
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_zValue:F

    .line 150
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromXDelta_Multiplier:I

    .line 153
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromYDelta_Multiplier:I

    .line 156
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->fromZDelta_Multiplier:I

    .line 159
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toXDelta_Multiplier:I

    .line 162
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toYDelta_Multiplier:I

    .line 165
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->toZDelta_Multiplier:I

    .line 175
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->mFromAlpha:F

    .line 179
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p0, Landroid/view/animation/TranslateAnimation3D;->mToAlpha:F

    .line 183
    const/16 v2, 0x8

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/animation/TranslateAnimation3D;->isAbsolute:Z

    .line 187
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 188
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 192
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v1

    sget v2, Landroid/view/animation/Transformation;->TYPE_MATRIX_3D:I

    or-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 195
    iget-object v0, p2, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    .line 196
    .local v0, "transObj":Landroid/view/animation/ModelViewState;
    if-nez v0, :cond_0

    .line 210
    :goto_0
    return-void

    .line 198
    :cond_0
    iget v1, p0, Landroid/view/animation/TranslateAnimation3D;->fromXRatio:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation3D;->toXRatio:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation3D;->fromXRatio:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->currXRatio:F

    .line 199
    iget v1, p0, Landroid/view/animation/TranslateAnimation3D;->fromYRatio:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation3D;->toYRatio:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation3D;->fromYRatio:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->currYRatio:F

    .line 200
    iget v1, p0, Landroid/view/animation/TranslateAnimation3D;->fromZRatio:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation3D;->toZRatio:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation3D;->fromZRatio:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    iput v1, p0, Landroid/view/animation/TranslateAnimation3D;->currZRatio:F

    .line 203
    iget v1, p0, Landroid/view/animation/TranslateAnimation3D;->currXRatio:F

    iget v2, p0, Landroid/view/animation/TranslateAnimation3D;->currYRatio:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation3D;->currZRatio:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    iget v5, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    iget v6, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    invoke-virtual/range {v0 .. v6}, Landroid/view/animation/ModelViewState;->setTranslationAnim(FFFIII)V

    .line 206
    iget v7, p0, Landroid/view/animation/TranslateAnimation3D;->mFromAlpha:F

    .line 207
    .local v7, "alpha":F
    const/4 v8, 0x0

    .line 208
    .local v8, "changedAlpha":F
    iget v1, p0, Landroid/view/animation/TranslateAnimation3D;->mToAlpha:F

    sub-float/2addr v1, v7

    mul-float/2addr v1, p1

    add-float v8, v7, v1

    .line 209
    invoke-virtual {p2, v8}, Landroid/view/animation/Transformation;->setAlpha(F)V

    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    const/4 v1, 0x1

    .line 216
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 217
    iget-boolean v0, p0, Landroid/view/animation/TranslateAnimation3D;->defaultConstInit:Z

    if-nez v0, :cond_6

    .line 219
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_xValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromXRatio:F

    .line 220
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_yValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromYRatio:F

    .line 221
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_zValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromZRatio:F

    .line 223
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_xValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->toXRatio:F

    .line 224
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_yValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->toYRatio:F

    .line 225
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toMoveVector_zValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->toZRatio:F

    .line 227
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromXDelta_Multiplier:I

    if-nez v0, :cond_7

    .line 229
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    .line 237
    :cond_0
    :goto_0
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromYDelta_Multiplier:I

    if-nez v0, :cond_8

    .line 239
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    .line 240
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_zValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromZRatio:F

    .line 247
    :cond_1
    :goto_1
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromZDelta_Multiplier:I

    if-nez v0, :cond_9

    .line 249
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    .line 256
    :cond_2
    :goto_2
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toXDelta_Multiplier:I

    if-nez v0, :cond_a

    .line 257
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    .line 264
    :cond_3
    :goto_3
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toYDelta_Multiplier:I

    if-nez v0, :cond_4

    .line 265
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    .line 267
    :cond_4
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toYDelta_Multiplier:I

    if-ne v0, v1, :cond_5

    .line 268
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    .line 271
    :cond_5
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toZDelta_Multiplier:I

    if-nez v0, :cond_b

    .line 272
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Width:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    .line 278
    :cond_6
    :goto_4
    return-void

    .line 231
    :cond_7
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromXDelta_Multiplier:I

    if-ne v0, v1, :cond_0

    .line 233
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    .line 234
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromMoveVector_yValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromYRatio:F

    goto :goto_0

    .line 243
    :cond_8
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromYDelta_Multiplier:I

    if-ne v0, v1, :cond_1

    .line 244
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sYDelta_Multiplier:I

    goto :goto_1

    .line 251
    :cond_9
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->fromZDelta_Multiplier:I

    if-ne v0, v1, :cond_2

    .line 253
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    goto :goto_2

    .line 259
    :cond_a
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toXDelta_Multiplier:I

    if-ne v0, v1, :cond_3

    .line 261
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sXDelta_Multiplier:I

    goto :goto_3

    .line 274
    :cond_b
    iget v0, p0, Landroid/view/animation/TranslateAnimation3D;->toZDelta_Multiplier:I

    if-ne v0, v1, :cond_6

    .line 275
    sget-object v0, Landroid/view/animation/SmgAnimation$Ratio;->Height:Landroid/view/animation/SmgAnimation$Ratio;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation3D;->sZDelta_Multiplier:I

    goto :goto_4
.end method

.method public final isAbsolute()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Landroid/view/animation/TranslateAnimation3D;->isAbsolute:Z

    return v0
.end method

.method public setAbsolute(Z)V
    .locals 0
    .param p1, "bIsAbsolute"    # Z

    .prologue
    .line 94
    iput-boolean p1, p0, Landroid/view/animation/TranslateAnimation3D;->isAbsolute:Z

    .line 95
    return-void
.end method

.method public setAlphaAnimation(FF)V
    .locals 0
    .param p1, "fromAlpha"    # F
    .param p2, "toAlpha"    # F

    .prologue
    .line 99
    iput p1, p0, Landroid/view/animation/TranslateAnimation3D;->mFromAlpha:F

    .line 100
    iput p2, p0, Landroid/view/animation/TranslateAnimation3D;->mToAlpha:F

    .line 101
    return-void
.end method
