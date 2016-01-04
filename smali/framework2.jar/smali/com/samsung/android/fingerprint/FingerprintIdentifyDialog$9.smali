.class Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$9;
.super Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;
.source "FingerprintIdentifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startProcessingAnimation()V
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
    .param p2, "x0"    # Landroid/graphics/drawable/AnimationDrawable;

    .prologue
    .line 834
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$9;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 1

    .prologue
    .line 838
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$9;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsFinishedScanning:Z
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->access$200(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 839
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$9;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    # getter for: Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mIsSucceed:Z
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->access$300(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 840
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$9;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startFailedAnimation()V

    .line 847
    :goto_0
    return-void

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$9;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startSucceedAnimation()V

    goto :goto_0

    .line 845
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$9;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startProcessingAnimation()V

    goto :goto_0
.end method
