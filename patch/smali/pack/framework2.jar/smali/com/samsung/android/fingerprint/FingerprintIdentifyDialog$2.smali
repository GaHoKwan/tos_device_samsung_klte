.class Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$2;
.super Landroid/view/OrientationEventListener;
.source "FingerprintIdentifyDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 387
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$2;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1
    .param p1, "angle"    # I

    .prologue
    .line 390
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$2;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    # invokes: Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->onConfigurationChanged()V
    invoke-static {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->access$000(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;)V

    .line 391
    return-void
.end method
