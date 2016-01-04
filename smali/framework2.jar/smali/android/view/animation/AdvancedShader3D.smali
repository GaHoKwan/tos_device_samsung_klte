.class public Landroid/view/animation/AdvancedShader3D;
.super Landroid/view/animation/Animation;
.source "AdvancedShader3D.java"


# instance fields
.field private defaultConstInit:Z

.field private mShaderEffect:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/AdvancedShader3D;->defaultConstInit:Z

    .line 19
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/AdvancedShader3D;->defaultConstInit:Z

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    iput-boolean v2, p0, Landroid/view/animation/AdvancedShader3D;->defaultConstInit:Z

    .line 25
    iput-boolean v2, p0, Landroid/view/animation/AdvancedShader3D;->defaultConstInit:Z

    .line 35
    sget-object v1, Lcom/android/internal/R$styleable;->AdvancedShader3D:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 38
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AdvancedShader3D;->mShaderEffect:F

    .line 42
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 43
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 48
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v1

    sget v2, Landroid/view/animation/Transformation;->TYPE_MATRIX_3D:I

    or-int/2addr v1, v2

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 56
    iget-object v0, p2, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    .line 57
    .local v0, "transObj":Landroid/view/animation/ModelViewState;
    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_0
    iget v1, p0, Landroid/view/animation/AdvancedShader3D;->mShaderEffect:F

    invoke-virtual {v0, v1}, Landroid/view/animation/ModelViewState;->setShaderAnim(F)V

    goto :goto_0
.end method
