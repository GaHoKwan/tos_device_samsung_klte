.class Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;
.super Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;
.source "FingerprintIdentifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startFailedAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 4

    const/4 v2, 0x4

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryCount:I
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->access$400(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-boolean v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mEnablePassword:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAnimationImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mUnlockButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v1, v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->access$500(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10$1;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v1, v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->showAlternativePasswordBox()V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mFm:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyAlternativePasswordBegin()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startStandbyAnimation()V

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    # operator-- for: Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mTryCount:I
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->access$410(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)I

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$10;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    # invokes: Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->identify()Z
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->access$600(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Z

    goto :goto_0
.end method
