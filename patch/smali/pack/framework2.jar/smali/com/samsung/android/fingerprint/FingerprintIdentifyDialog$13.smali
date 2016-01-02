.class Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$13;
.super Ljava/lang/Object;
.source "FingerprintIdentifyDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->verifyPassword()V
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

    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$13;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$13;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$13;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v0, v0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mAltPasswordGuide:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$13;->this$0:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;

    iget-object v1, v1, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
