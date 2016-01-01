.class Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMRecordsBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/telephony/uicc/SIMRecords;
    .param p2, "x1"    # Lcom/android/internal/telephony/uicc/SIMRecords$1;

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 544
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 545
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CSC_UPDATE_NETWORK_DONE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 546
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v3, "[Voicemail] receive android.intent.action.CSC_UPDATE_NETWORK_DONE"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 547
    const-string v2, "networkName"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    .local v1, "selectedNwkName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 549
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    const-string v3, "[Voicemail] Voicemail number can not be set because there is no matched networkName!"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 569
    .end local v1    # "selectedNwkName":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 550
    .restart local v1    # "selectedNwkName":Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->isAvailableVoiceMailInSIM()Z

    move-result v2

    if-nez v2, :cond_1

    .line 551
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Voicemail] Voicemail number can not be set what matched with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    .line 556
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    # invokes: Lcom/android/internal/telephony/uicc/SIMRecords;->setVoiceMailByCountry(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$100(Lcom/android/internal/telephony/uicc/SIMRecords;Ljava/lang/String;)V

    goto :goto_0

    .line 559
    .end local v1    # "selectedNwkName":Ljava/lang/String;
    :cond_3
    const-string v2, "com.samsung.intent.action.setCardDataInit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 560
    const-string v2, "SIMRecords"

    const-string v3, "com.samsung.intent.action.setCardDataInit"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/SIMRecords$SIMRecordsBroadcastReceiver;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/SIMRecords;->setCardDataInit()V

    goto :goto_0
.end method
