.class Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$14;
.super Ljava/lang/Object;
.source "FingerprintIdentifyDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->removeErrMsg()V
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

    .prologue
    .line 1042
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$14;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$14;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->setAnimationTextandImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 1045
    return-void
.end method
