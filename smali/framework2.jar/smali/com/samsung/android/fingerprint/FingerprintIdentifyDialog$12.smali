.class Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$12;
.super Ljava/lang/Object;
.source "FingerprintIdentifyDialog.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startPassAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$12;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$12;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->access$200(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$12;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
