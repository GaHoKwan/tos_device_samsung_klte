.class Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EnrollFinishBroadcastReceiver"
.end annotation


# instance fields
.field private mId:Ljava/lang/String;

.field private mListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

.field final synthetic this$0:Lcom/samsung/android/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/fingerprint/FingerprintManager;Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;Ljava/lang/String;)V
    .locals 0
    .param p2, "listener"    # Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;
    .param p3, "id"    # Ljava/lang/String;

    .prologue
    .line 1034
    iput-object p1, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1035
    iput-object p2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->mListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    .line 1036
    iput-object p3, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->mId:Ljava/lang/String;

    .line 1037
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1041
    if-eqz p2, :cond_0

    .line 1042
    const-string/jumbo v2, "previousStage"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1043
    .local v1, "id":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1044
    const-string v2, "FingerprintManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "previousStage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->mId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1046
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    invoke-virtual {v2}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    .line 1047
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->mListener:Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;

    invoke-interface {v2}, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishListener;->onEnrollFinish()V

    .line 1049
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    .end local v1    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1050
    .restart local v1    # "id":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 1051
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/samsung/android/fingerprint/FingerprintManager$EnrollFinishBroadcastReceiver;->this$0:Lcom/samsung/android/fingerprint/FingerprintManager;

    const-string/jumbo v3, "onReceive"

    const-string v4, "Receiver isn\'t registered"

    # invokes: Lcom/samsung/android/fingerprint/FingerprintManager;->logExceptionInDetail(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V
    invoke-static {v2, v3, v0, v4}, Lcom/samsung/android/fingerprint/FingerprintManager;->access$200(Lcom/samsung/android/fingerprint/FingerprintManager;Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_0

    .line 1055
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    const-string v2, "FingerprintManager"

    const-string v3, "ID is not given. Cannot recognize this broadcast."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
