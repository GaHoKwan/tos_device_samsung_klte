.class public Landroid/view/animation/ScaleAnimation3D;
.super Landroid/view/animation/Animation;
.source "ScaleAnimation3D.java"


# static fields
.field static final LOG_ACTIVITY_ACTIVITY:Z


# instance fields
.field private defaultConstInit:Z

.field private fromScaleVector_xType:I

.field private fromScaleVector_xValue:F

.field private fromScaleVector_yType:I

.field private fromScaleVector_yValue:F

.field private fromScaleVector_zType:I

.field private fromScaleVector_zValue:F

.field private fromXDelta_Multiplier:I

.field private fromYDelta_Multiplier:I

.field private fromZDelta_Multiplier:I

.field private isAbsolute:Z

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

.field private toScaleVector_xType:I

.field private toScaleVector_xValue:F

.field private toScaleVector_yType:I

.field private toScaleVector_yValue:F

.field private toScaleVector_zType:I

.field private toScaleVector_zValue:F

.field private toXDelta_Multiplier:I

.field private toYDelta_Multiplier:I

.field private toZDelta_Multiplier:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 89
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 38
    iput-boolean v0, p0, Landroid/view/animation/ScaleAnimation3D;->isAbsolute:Z

    .line 58
    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->fromXDelta_Multiplier:I

    .line 59
    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->fromYDelta_Multiplier:I

    .line 60
    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->fromZDelta_Multiplier:I

    .line 61
    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->toXDelta_Multiplier:I

    .line 62
    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->toYDelta_Multiplier:I

    .line 63
    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->toZDelta_Multiplier:I

    .line 64
    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotXMultiplier:I

    .line 65
    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotYMultiplier:I

    .line 66
    iput v0, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotZMultiplier:I

    .line 68
    iput-boolean v0, p0, Landroid/view/animation/ScaleAnimation3D;->defaultConstInit:Z

    .line 70
    iput v1, p0, Landroid/view/animation/ScaleAnimation3D;->orientationAdjustment:I

    .line 90
    iput-boolean v1, p0, Landroid/view/animation/ScaleAnimation3D;->defaultConstInit:Z

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    iput-boolean v4, p0, Landroid/view/animation/ScaleAnimation3D;->isAbsolute:Z

    .line 58
    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->fromXDelta_Multiplier:I

    .line 59
    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->fromYDelta_Multiplier:I

    .line 60
    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->fromZDelta_Multiplier:I

    .line 61
    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->toXDelta_Multiplier:I

    .line 62
    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->toYDelta_Multiplier:I

    .line 63
    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->toZDelta_Multiplier:I

    .line 64
    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotXMultiplier:I

    .line 65
    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotYMultiplier:I

    .line 66
    iput v4, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotZMultiplier:I

    .line 68
    iput-boolean v4, p0, Landroid/view/animation/ScaleAnimation3D;->defaultConstInit:Z

    .line 70
    iput v5, p0, Landroid/view/animation/ScaleAnimation3D;->orientationAdjustment:I

    .line 95
    iput-boolean v4, p0, Landroid/view/animation/ScaleAnimation3D;->defaultConstInit:Z

    .line 96
    sget-object v2, Lcom/android/internal/R$styleable;->ScaleAnimation3D:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 99
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromScaleVector_xType:I

    .line 100
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation3D;->orientationAdjustment:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromScaleVector_xValue:F

    .line 101
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 103
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromScaleVector_yType:I

    .line 104
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation3D;->orientationAdjustment:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromScaleVector_yValue:F

    .line 105
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 107
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromScaleVector_zType:I

    .line 108
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromScaleVector_zValue:F

    .line 110
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 112
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toScaleVector_xType:I

    .line 113
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation3D;->orientationAdjustment:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toScaleVector_xValue:F

    .line 114
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 116
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toScaleVector_yType:I

    .line 117
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iget v3, p0, Landroid/view/animation/ScaleAnimation3D;->orientationAdjustment:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toScaleVector_yValue:F

    .line 118
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 120
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toScaleVector_zType:I

    .line 121
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toScaleVector_zValue:F

    .line 123
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 125
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotXType:I

    .line 126
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotXValue:F

    .line 128
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 130
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotYType:I

    .line 131
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotYValue:F

    .line 133
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 135
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotZType:I

    .line 136
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotZValue:F

    .line 138
    const/16 v2, 0xa

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotXMultiplier:I

    .line 139
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotYMultiplier:I

    .line 140
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->mPivotZMultiplier:I

    .line 141
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromXDelta_Multiplier:I

    .line 142
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromYDelta_Multiplier:I

    .line 143
    const/16 v2, 0xf

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->fromZDelta_Multiplier:I

    .line 144
    const/16 v2, 0x10

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toXDelta_Multiplier:I

    .line 145
    const/16 v2, 0x11

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toYDelta_Multiplier:I

    .line 146
    const/16 v2, 0x12

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Landroid/view/animation/ScaleAnimation3D;->toZDelta_Multiplier:I

    .line 148
    const/16 v2, 0x9

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Landroid/view/animation/ScaleAnimation3D;->isAbsolute:Z

    .line 149
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 150
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 4
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 159
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v2

    sget v3, Landroid/view/animation/Transformation;->TYPE_MATRIX_3D:I

    or-int/2addr v2, v3

    invoke-virtual {p2, v2}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 161
    iget-object v1, p2, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    .line 163
    .local v1, "transObj":Landroid/view/animation/ModelViewState;
    move v0, p1

    .line 164
    .local v0, "fraction":F
    return-void
.end method

.method public final isAbsolute()Z
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Landroid/view/animation/ScaleAnimation3D;->isAbsolute:Z

    return v0
.end method

.method public setAbsolute(Z)V
    .locals 0
    .param p1, "bIsAbsolute"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Landroid/view/animation/ScaleAnimation3D;->isAbsolute:Z

    .line 84
    return-void
.end method
