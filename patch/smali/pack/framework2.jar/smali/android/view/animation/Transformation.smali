.class public Landroid/view/animation/Transformation;
.super Ljava/lang/Object;
.source "Transformation.java"


# static fields
.field public static final TYPE_ALPHA:I = 0x1

.field public static final TYPE_BOTH:I = 0x3

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MATRIX:I = 0x2

.field public static TYPE_MATRIX_3D:I


# instance fields
.field protected mAlpha:F

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mMatrix44F:Landroid/view/animation/ModelViewState;

.field protected mTransformationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x4

    sput v0, Landroid/view/animation/Transformation;->TYPE_MATRIX_3D:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->clear()V

    .line 64
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    .line 77
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 78
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 81
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    if-nez v0, :cond_1

    .line 82
    new-instance v0, Landroid/view/animation/ModelViewState;

    invoke-direct {v0}, Landroid/view/animation/ModelViewState;-><init>()V

    iput-object v0, p0, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    .line 87
    :goto_1
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    invoke-virtual {v0}, Landroid/view/animation/ModelViewState;->reset()Z

    goto :goto_1
.end method

.method public compose(Landroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 127
    iget v4, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 128
    iget-object v4, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 131
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v4

    sget v5, Landroid/view/animation/Transformation;->TYPE_MATRIX_3D:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 133
    iget-object v4, p1, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    invoke-virtual {v4}, Landroid/view/animation/ModelViewState;->getAnimationList()Ljava/util/ArrayList;

    move-result-object v1

    .line 134
    .local v1, "list1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/SmgAnimation;>;"
    iget-object v4, p0, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    invoke-virtual {v4}, Landroid/view/animation/ModelViewState;->getAnimationList()Ljava/util/ArrayList;

    move-result-object v2

    .line 136
    .local v2, "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/SmgAnimation;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 137
    .local v0, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/animation/SmgAnimation;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/SmgAnimation;

    .line 139
    .local v3, "s1":Landroid/view/animation/SmgAnimation;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 141
    .end local v3    # "s1":Landroid/view/animation/SmgAnimation;
    :cond_0
    iget v4, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    sget v5, Landroid/view/animation/Transformation;->TYPE_MATRIX_3D:I

    or-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 144
    .end local v0    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/animation/SmgAnimation;>;"
    .end local v1    # "list1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/SmgAnimation;>;"
    .end local v2    # "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/SmgAnimation;>;"
    :cond_1
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    return v0
.end method

.method public getAnimationList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/SmgAnimation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    invoke-virtual {v0}, Landroid/view/animation/ModelViewState;->getAnimationList()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getModelViewState()Landroid/view/animation/ModelViewState;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    return-object v0
.end method

.method public getTransformationType()I
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    return v0
.end method

.method public postCompose(Landroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 152
    iget v4, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v5

    mul-float/2addr v4, v5

    iput v4, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 153
    iget-object v4, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 156
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v4

    sget v5, Landroid/view/animation/Transformation;->TYPE_MATRIX_3D:I

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 157
    iget-object v4, p1, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    invoke-virtual {v4}, Landroid/view/animation/ModelViewState;->getAnimationList()Ljava/util/ArrayList;

    move-result-object v1

    .line 158
    .local v1, "list1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/SmgAnimation;>;"
    iget-object v4, p0, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    invoke-virtual {v4}, Landroid/view/animation/ModelViewState;->getAnimationList()Ljava/util/ArrayList;

    move-result-object v2

    .line 160
    .local v2, "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/SmgAnimation;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 161
    .local v0, "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/animation/SmgAnimation;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 162
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/animation/SmgAnimation;

    .line 163
    .local v3, "s1":Landroid/view/animation/SmgAnimation;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 166
    .end local v3    # "s1":Landroid/view/animation/SmgAnimation;
    :cond_0
    iget-object v4, p0, Landroid/view/animation/Transformation;->mMatrix44F:Landroid/view/animation/ModelViewState;

    invoke-virtual {v4, v2}, Landroid/view/animation/ModelViewState;->setAnimationList(Ljava/util/ArrayList;)V

    .line 167
    iget v4, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    sget v5, Landroid/view/animation/Transformation;->TYPE_MATRIX_3D:I

    or-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 170
    .end local v0    # "it1":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/animation/SmgAnimation;>;"
    .end local v1    # "list1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/SmgAnimation;>;"
    .end local v2    # "list2":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/SmgAnimation;>;"
    :cond_1
    return-void
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 226
    const-string/jumbo v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 227
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 229
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 230
    return-void
.end method

.method public set(Landroid/view/animation/Transformation;)V
    .locals 2
    .param p1, "t"    # Landroid/view/animation/Transformation;

    .prologue
    .line 116
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v0

    iput v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 117
    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 118
    invoke-virtual {p1}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v0

    iput v0, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 119
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 185
    iput p1, p0, Landroid/view/animation/Transformation;->mAlpha:F

    .line 186
    return-void
.end method

.method public setTransformationType(I)V
    .locals 0
    .param p1, "transformationType"    # I

    .prologue
    .line 107
    iput p1, p0, Landroid/view/animation/Transformation;->mTransformationType:I

    .line 108
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 208
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 216
    const-string/jumbo v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/animation/Transformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 217
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/animation/Transformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 218
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 198
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Transformation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {p0, v0}, Landroid/view/animation/Transformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
