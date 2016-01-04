.class Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener$1;
.super Ljava/lang/Object;
.source "FingerprintIdentifyDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener$1;->this$1:Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;

    invoke-virtual {v0}, Lcom/samsung/android/fingerprint/FingerprintIdentifyDialog$AnimationDrawableListener;->onAnimationEnd()V

    .line 136
    return-void
.end method
