.class public abstract Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;
.super Landroid/graphics/drawable/AnimationDrawable;
.source "FingerprintIdentifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AnimationDrawableListener"
.end annotation


# instance fields
.field anim:Landroid/graphics/drawable/AnimationDrawable;

.field mAnimationHandler:Landroid/os/Handler;

.field mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;


# direct methods
.method public constructor <init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0
    .param p2, "aniDrawable"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-direct {p0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 123
    return-void
.end method


# virtual methods
.method public getTotalDuration()I
    .locals 3

    .prologue
    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "duration":I
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/AnimationDrawable;->getNumberOfFrames()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->getDuration(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method abstract onAnimationEnd()V
.end method

.method public start()V
    .locals 4

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    .line 132
    new-instance v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;)V

    iput-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    .line 138
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->getTotalDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public stop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 144
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 149
    iput-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->anim:Landroid/graphics/drawable/AnimationDrawable;

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 152
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 153
    iput-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->mAnimationHandler:Landroid/os/Handler;

    .line 155
    :cond_2
    iput-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->mRunnable:Ljava/lang/Runnable;

    .line 156
    return-void
.end method
