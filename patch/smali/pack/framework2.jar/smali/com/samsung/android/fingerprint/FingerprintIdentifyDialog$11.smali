.class Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$11;
.super Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;
.source "FingerprintIdentifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startSucceedAnimation()V
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
    .line 906
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$11;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;-><init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/graphics/drawable/AnimationDrawable;)V

    return-void
.end method


# virtual methods
.method onAnimationEnd()V
    .locals 1

    .prologue
    .line 909
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$11;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->startPassAnimation()V

    .line 910
    return-void
.end method
