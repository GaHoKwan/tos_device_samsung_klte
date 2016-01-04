.class Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;
.super Ljava/lang/Object;
.source "FingerprintIdentifyDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

.field final synthetic val$in:Landroid/view/animation/Animation;

.field final synthetic val$infoImage:Landroid/graphics/drawable/Drawable;

.field final synthetic val$infoText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->val$infoImage:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->val$in:Landroid/view/animation/Animation;

    iput-object p4, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->val$infoText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 761
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 762
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->val$infoImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 763
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->val$in:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 765
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->val$infoText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 766
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->val$infoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->val$in:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 768
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->val$infoText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 769
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->requestAccessibilityFocus()Z

    .line 770
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mInfoText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$6;->val$infoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 773
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 777
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "arg0"    # Landroid/view/animation/Animation;

    .prologue
    .line 781
    return-void
.end method
