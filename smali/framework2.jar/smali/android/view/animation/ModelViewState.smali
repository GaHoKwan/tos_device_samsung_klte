.class public Landroid/view/animation/ModelViewState;
.super Ljava/lang/Object;
.source "ModelViewState.java"


# instance fields
.field public smgAnimationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/SmgAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    .line 61
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/view/animation/ModelViewState;)Z
    .locals 8
    .param p1, "PrevState"    # Landroid/view/animation/ModelViewState;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 93
    iget-object v6, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 94
    .local v1, "currIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/animation/SmgAnimation;>;"
    iget-object v6, p1, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 96
    .local v3, "prevIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/animation/SmgAnimation;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1

    .line 116
    :cond_0
    :goto_0
    return v4

    .line 100
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    :cond_2
    move v4, v5

    .line 101
    goto :goto_0

    .line 103
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 104
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/SmgAnimation;

    .line 105
    .local v0, "currAnim":Landroid/view/animation/SmgAnimation;
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/animation/SmgAnimation;

    .line 107
    .local v2, "prevAnim":Landroid/view/animation/SmgAnimation;
    invoke-static {v0, v2}, Landroid/view/animation/SmgAnimation;->compareTo(Landroid/view/animation/SmgAnimation;Landroid/view/animation/SmgAnimation;)Z

    move-result v6

    if-nez v6, :cond_4

    move v4, v5

    .line 108
    goto :goto_0

    .line 111
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eq v6, v7, :cond_3

    move v4, v5

    .line 112
    goto :goto_0
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
    .line 50
    iget-object v0, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAnimationState()Ljava/util/ArrayList;
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
    .line 129
    iget-object v0, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public printAnimClass()V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 85
    .local v0, "currIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/animation/SmgAnimation;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/animation/SmgAnimation;

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method public reset()Z
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Landroid/view/animation/ModelViewState;->resetAnimationState()V

    .line 79
    const/4 v0, 0x1

    return v0
.end method

.method public resetAnimationState()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 124
    return-void
.end method

.method public setAnimationList(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/animation/SmgAnimation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    .local p1, "smgAnimationListSrc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/animation/SmgAnimation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 66
    .local v1, "currIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/animation/SmgAnimation;>;"
    invoke-virtual {p0}, Landroid/view/animation/ModelViewState;->resetAnimationState()V

    .line 68
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 69
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/SmgAnimation;

    .line 70
    .local v0, "currAnim":Landroid/view/animation/SmgAnimation;
    iget-object v2, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 74
    .end local v0    # "currAnim":Landroid/view/animation/SmgAnimation;
    :cond_0
    return-void
.end method

.method public setRotationAnimation(FFFFFIFIFI)V
    .locals 2
    .param p1, "currAngle"    # F
    .param p2, "xAxis"    # F
    .param p3, "yAxis"    # F
    .param p4, "zAxis"    # F
    .param p5, "pivotX"    # F
    .param p6, "ratioX"    # I
    .param p7, "pivotY"    # F
    .param p8, "ratioY"    # I
    .param p9, "pivotZ"    # F
    .param p10, "ratioZ"    # I

    .prologue
    .line 137
    new-instance v0, Landroid/view/animation/SmgAnimation;

    invoke-direct {v0}, Landroid/view/animation/SmgAnimation;-><init>()V

    .line 139
    .local v0, "rotAnim":Landroid/view/animation/SmgAnimation;
    sget-object v1, Landroid/view/animation/SmgAnimation$AnimationType;->SMG_ROTATION_ANIMATION:Landroid/view/animation/SmgAnimation$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/view/animation/SmgAnimation;->animationType:I

    .line 141
    iput p1, v0, Landroid/view/animation/SmgAnimation;->curAngle:F

    .line 143
    iput p2, v0, Landroid/view/animation/SmgAnimation;->xAxis:F

    .line 144
    iput p3, v0, Landroid/view/animation/SmgAnimation;->yAxis:F

    .line 145
    iput p4, v0, Landroid/view/animation/SmgAnimation;->zAxis:F

    .line 147
    iput p5, v0, Landroid/view/animation/SmgAnimation;->pivot_x:F

    .line 148
    iput p7, v0, Landroid/view/animation/SmgAnimation;->pivot_y:F

    .line 149
    iput p9, v0, Landroid/view/animation/SmgAnimation;->pivot_z:F

    .line 150
    iput p6, v0, Landroid/view/animation/SmgAnimation;->ratioX:I

    .line 151
    iput p8, v0, Landroid/view/animation/SmgAnimation;->ratioY:I

    .line 152
    iput p10, v0, Landroid/view/animation/SmgAnimation;->ratioZ:I

    .line 154
    iget-object v1, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    return-void
.end method

.method public setShaderAnim(F)V
    .locals 2
    .param p1, "shaderEffect"    # F

    .prologue
    .line 177
    new-instance v0, Landroid/view/animation/SmgAnimation;

    invoke-direct {v0}, Landroid/view/animation/SmgAnimation;-><init>()V

    .line 178
    .local v0, "shaderAnim":Landroid/view/animation/SmgAnimation;
    sget-object v1, Landroid/view/animation/SmgAnimation$AnimationType;->SMG_SHADER_ANIMATION:Landroid/view/animation/SmgAnimation$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/view/animation/SmgAnimation;->animationType:I

    .line 180
    iput p1, v0, Landroid/view/animation/SmgAnimation;->shaderAnimationEffect:F

    .line 182
    iget-object v1, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    return-void
.end method

.method public setSmgAnimationState(Landroid/view/animation/ModelViewState;)V
    .locals 3
    .param p1, "sourceAnimationState"    # Landroid/view/animation/ModelViewState;

    .prologue
    .line 187
    iget-object v2, p1, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 190
    .local v1, "currIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/view/animation/SmgAnimation;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 191
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/animation/SmgAnimation;

    .line 192
    .local v0, "currAnim":Landroid/view/animation/SmgAnimation;
    iget-object v2, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 195
    .end local v0    # "currAnim":Landroid/view/animation/SmgAnimation;
    :cond_0
    return-void
.end method

.method public setTranslationAnim(FFFIII)V
    .locals 2
    .param p1, "tX"    # F
    .param p2, "tY"    # F
    .param p3, "tZ"    # F
    .param p4, "ratioX"    # I
    .param p5, "ratioY"    # I
    .param p6, "ratioZ"    # I

    .prologue
    .line 161
    new-instance v0, Landroid/view/animation/SmgAnimation;

    invoke-direct {v0}, Landroid/view/animation/SmgAnimation;-><init>()V

    .line 163
    .local v0, "transAnim":Landroid/view/animation/SmgAnimation;
    sget-object v1, Landroid/view/animation/SmgAnimation$AnimationType;->SMG_TRANSLATION_ANIMATION:Landroid/view/animation/SmgAnimation$AnimationType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    iput v1, v0, Landroid/view/animation/SmgAnimation;->animationType:I

    .line 166
    iput p1, v0, Landroid/view/animation/SmgAnimation;->tX:F

    .line 167
    iput p2, v0, Landroid/view/animation/SmgAnimation;->tY:F

    .line 168
    iput p3, v0, Landroid/view/animation/SmgAnimation;->tZ:F

    .line 169
    iput p4, v0, Landroid/view/animation/SmgAnimation;->ratioX:I

    .line 170
    iput p5, v0, Landroid/view/animation/SmgAnimation;->ratioY:I

    .line 171
    iput p6, v0, Landroid/view/animation/SmgAnimation;->ratioZ:I

    .line 172
    iget-object v1, p0, Landroid/view/animation/ModelViewState;->smgAnimationList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    return-void
.end method
