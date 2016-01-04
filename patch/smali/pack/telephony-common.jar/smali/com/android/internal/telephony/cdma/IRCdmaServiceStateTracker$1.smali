.class Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "IRCdmaServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;)V
    .locals 0

    .prologue
    .line 834
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 837
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 838
    .local v0, "action":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mCr:Landroid/content/ContentResolver;

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v7, 0x1

    .line 840
    .local v7, "isAirplaneMode":Z
    :goto_0
    const-string v10, "CdmaSST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Global mode] action = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    const-string v10, "android.intent.action.SCREEN_ON"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 842
    const/4 v10, 0x1

    # setter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mScreenOn:Z
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$002(Z)Z

    .line 844
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/ServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 845
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$100()Z

    move-result v10

    if-nez v10, :cond_0

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$200()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 846
    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/ServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    .line 1069
    :cond_1
    :goto_1
    return-void

    .line 838
    .end local v7    # "isAirplaneMode":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 849
    .restart local v7    # "isAirplaneMode":Z
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/ServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto :goto_1

    .line 853
    :cond_4
    const-string v10, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 854
    const/4 v10, 0x0

    # setter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mScreenOn:Z
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$302(Z)Z

    goto :goto_1

    .line 856
    :cond_5
    const-string v10, "android.intent.action.ACTION_GLOBAL_NOSVC_CHK_TIMER_EXPIRED_CDMA"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 857
    if-nez v7, :cond_7

    .line 858
    const-string v10, "CP"

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 859
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNetworkSearchTimer()V

    .line 861
    :cond_6
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$400()Z

    move-result v10

    if-nez v10, :cond_1

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$500()Z

    move-result v10

    if-nez v10, :cond_1

    .line 862
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendNoServiceNotiIntent()V

    goto :goto_1

    .line 866
    :cond_7
    const-string v10, "CdmaSST"

    const-string v11, "[Global mode] Now airplane mode on."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNoSvcChkTimer()V

    goto :goto_1

    .line 870
    :cond_8
    const-string v10, "android.intent.action.ACTION_GLOBAL_NETWORK_SEARCH_TIMER_EXPIRED_INTERNAL_CDMA"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 871
    if-nez v7, :cond_b

    .line 872
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->globalNoSvcChkTimerRequired(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v10

    if-eqz v10, :cond_a

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/ServiceStateTracker;->isChinaAreas()Z

    move-result v10

    if-nez v10, :cond_a

    .line 873
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/ServiceStateTracker;->isPwrSaveModeRequired()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 874
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/ServiceStateTracker;->startPwrSaveModeTimer(Lcom/android/internal/telephony/PhoneBase;I)V

    .line 883
    :goto_2
    const/4 v10, 0x0

    sput-boolean v10, Lcom/android/internal/telephony/ServiceStateTracker;->alreadyExpired:Z

    .line 884
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v11, "ril.mIsSwitchedToCdma"

    const-string v12, "false"

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 877
    :cond_9
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendNetChangeIntent(Z)V

    .line 878
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->incNetSrchCnt(I)V

    goto :goto_2

    .line 887
    :cond_a
    const-string v10, "CdmaSST"

    const-string v11, "[Global mode] Ignore EXPIRED_INTERNAL_CDMA."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    .line 889
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->isGlobalMode(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/ServiceStateTracker;->isChinaAreas()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->isSlot1CdmaActive(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/ServiceStateTracker;->isSlot1DualCard()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 890
    const-string v10, "CdmaSST"

    const-string v11, "[Global mode] Caused by isGlobalMode is false. Start cdma srch timer again."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNetworkSearchTimer()V

    goto/16 :goto_1

    .line 896
    :cond_b
    const-string v10, "CdmaSST"

    const-string v11, "[Global mode] Now airplane mode on."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopGlobalNetworkSearchTimer()V

    goto/16 :goto_1

    .line 900
    :cond_c
    const-string v10, "android.intent.action.ACTION_GLOBAL_PWR_SAVE_MODE_STAY_TIMER_EXPIRED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 901
    if-nez v7, :cond_f

    .line 902
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/ServiceStateTracker;->isPwrSaveModeTimerRunning()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 903
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$600()Z

    move-result v10

    if-nez v10, :cond_d

    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mGsmInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$700()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 904
    :cond_d
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/ServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto/16 :goto_1

    .line 907
    :cond_e
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/ServiceStateTracker;->processPwrSaveModeExpdTimer(Lcom/android/internal/telephony/PhoneBase;Z)V

    goto/16 :goto_1

    .line 912
    :cond_f
    const-string v10, "CdmaSST"

    const-string v11, "[Global mode] Now airplane mode on."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 915
    :cond_10
    const-string v10, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH_TIMER_EXPIRED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    .line 916
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngEverLaunched:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$800()Z

    move-result v10

    if-nez v10, :cond_1

    .line 917
    const/4 v3, 0x0

    .line 918
    .local v3, "currGsmMccInt":I
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getCurrCdmaMcc()I

    move-result v2

    .line 919
    .local v2, "currCdmaMccInt":I
    const-string v10, "gsm.operator.numeric2"

    const-string v11, ""

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 921
    .local v4, "currGsmOprtNum":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x5

    if-lt v10, v11, :cond_11

    .line 922
    const/4 v10, 0x0

    const/4 v11, 0x3

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 925
    :cond_11
    const-string v10, "CdmaSST"

    const-string v11, "[SimCardMngLaunch] simcardmanager launch timer expired."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    const-string v10, "CdmaSST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[SimCardMngLaunch] currCdmaMccInt : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " currGsmMccInt : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.ACTION_SIMCARDMANAGER_LAUNCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 929
    .local v6, "intentFwd":Landroid/content/Intent;
    const/high16 v10, 0x20000000

    invoke-virtual {v6, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 931
    const/16 v10, 0x1cc

    if-eq v2, v10, :cond_12

    const/16 v10, 0x1c7

    if-eq v2, v10, :cond_12

    const/16 v10, 0x1cc

    if-eq v3, v10, :cond_12

    const/16 v10, 0x1c7

    if-ne v3, v10, :cond_13

    .line 932
    :cond_12
    const-string v10, "china_mainland"

    const/4 v11, 0x1

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 937
    :goto_3
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10, v6}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 939
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->stopSimCardMngLaunchTimer(Lcom/android/internal/telephony/PhoneBase;)V

    .line 940
    const/4 v10, 0x1

    # setter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mSimCardMngEverLaunched:Z
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$902(Z)Z

    goto/16 :goto_1

    .line 935
    :cond_13
    const-string v10, "china_mainland"

    const/4 v11, 0x0

    invoke-virtual {v6, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 944
    .end local v2    # "currCdmaMccInt":I
    .end local v3    # "currGsmMccInt":I
    .end local v4    # "currGsmOprtNum":Ljava/lang/String;
    .end local v6    # "intentFwd":Landroid/content/Intent;
    :cond_14
    const-string v10, "PRL_GETTING_RETRY_TIMER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 945
    const-string v10, "CdmaSST"

    const-string v11, "[Global mode] PRL_GETTING_RETRY_TIMER expired!!!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    # getter for: Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$1000(Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/16 v12, 0x3c

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-interface {v10, v11}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 947
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getSubscriptionInfoAndStartPollingThreads()V

    .line 949
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "alarm"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 950
    .local v1, "am":Landroid/app/AlarmManager;
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->prlGettingRetrySender:Landroid/app/PendingIntent;

    invoke-virtual {v1, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 986
    .end local v1    # "am":Landroid/app/AlarmManager;
    :cond_15
    const-string v10, "SEND_BACKGROUND_SWITCHING"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a

    .line 987
    const/4 v9, 0x0

    .line 988
    .local v9, "switchedGsm":Z
    sget-boolean v10, Lcom/android/internal/telephony/ServiceStateTracker;->IsGlobalModeAvail:Z

    if-nez v10, :cond_16

    .line 989
    const/4 v10, 0x1

    sput-boolean v10, Lcom/android/internal/telephony/ServiceStateTracker;->IsGlobalModeAvail:Z

    .line 990
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->switchToGsmInCdmaRoamingArea(Z)Z

    move-result v9

    .line 992
    :cond_16
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->isCdmaManSel(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v8

    .line 993
    .local v8, "isCdmaManSel":Z
    const-string v10, "CdmaSST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Global mode] SEND_BACKGROUND_SWITCHING isCdmaManSel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " isSlot1DualCard: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v12}, Lcom/android/internal/telephony/ServiceStateTracker;->isSlot1DualCard()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    if-nez v9, :cond_17

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->isFirstCdmaNoSvcChkTimerStarted()Z

    move-result v10

    if-nez v10, :cond_17

    .line 1002
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/ServiceStateTracker;->globalNoSvcChkTimerRequired(Lcom/android/internal/telephony/PhoneBase;)Z

    move-result v10

    if-eqz v10, :cond_17

    .line 1003
    const-string v10, "CdmaSST"

    const-string v11, "[Global mode] Currently cdma noSvc timer not started yet. Start here."

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startGlobalNoSvcChkTimer()V

    .line 1008
    :cond_17
    if-nez v8, :cond_18

    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/ServiceStateTracker;->isSlot1DualCard()Z

    move-result v10

    if-nez v10, :cond_19

    .line 1009
    :cond_18
    const-string v10, "CdmaSST"

    const-string v11, "[Global mode] set fakeDispCanceled to true"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v11, "ril.fakeDispCanceled"

    const-string v12, "true"

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->setFakeDispCancelToCP()V

    .line 1012
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    goto/16 :goto_1

    .line 1013
    :cond_19
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->getCurrCdmaMcc()I

    move-result v10

    if-lez v10, :cond_1

    .line 1015
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startFakeDispCancelTimer()V

    goto/16 :goto_1

    .line 1018
    .end local v8    # "isCdmaManSel":Z
    .end local v9    # "switchedGsm":Z
    :cond_1a
    const-string v10, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_SWITCH_BACK_TO_CDMA_IN_CHINA"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1021
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->pollState()V

    goto/16 :goto_1

    .line 1023
    :cond_1b
    const-string v10, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 1024
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1025
    .local v5, "extra":Landroid/os/Bundle;
    const-string v10, "GSM"

    const-string v11, "pendedMode"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d

    .line 1026
    const-string v10, "switchToGsmInCdmaRoamingArea"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 1027
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const-string v11, "GSM"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startPendingIntentTimer(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1030
    :cond_1c
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const-string v11, "GSM"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->startPendingIntentTimer(Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 1034
    :cond_1d
    const-string v10, "CdmaSST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Global mode] pendedMode error:: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "pendedMode"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1037
    .end local v5    # "extra":Landroid/os/Bundle;
    :cond_1e
    const-string v10, "android.intent.action.ACTION_GLOBAL_NET_SWITCH_PENDING_TIMER_EXPIRED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_22

    .line 1038
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 1039
    .restart local v5    # "extra":Landroid/os/Bundle;
    const-string v10, "GSM"

    const-string v11, "pendedMode"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_21

    .line 1040
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopPendingIntentTimer()V

    .line 1041
    const-string v10, "isSwitchToGsmInCdmaRoamingArea"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1f

    .line 1042
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->switchToGsmInCdmaRoamingArea(Z)Z

    goto/16 :goto_1

    .line 1043
    :cond_1f
    # getter for: Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->mCdmaInSvc:Z
    invoke-static {}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->access$1100()Z

    move-result v10

    if-eqz v10, :cond_20

    .line 1044
    const-string v10, "CdmaSST"

    const-string v11, "[Global mode] cdma inSvc! no need to switch!!!"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1046
    :cond_20
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->sendNetChangeIntent(Z)V

    goto/16 :goto_1

    .line 1050
    :cond_21
    const-string v10, "CdmaSST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[Global mode] pendedMode error:: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "pendedMode"

    invoke-virtual {v5, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1053
    .end local v5    # "extra":Landroid/os/Bundle;
    :cond_22
    const-string v10, "ACTION_DUALMODE_SETTING"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_23

    .line 1054
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->switchToGsmInCdmaRoamingArea(Z)Z

    goto/16 :goto_1

    .line 1056
    :cond_23
    const-string v10, "android.intent.action.ACTION_FAKE_DISP_CANCEL_TIMER"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1057
    const-string v10, "CdmaSST"

    const-string v11, "[Global mode] set fakeDispCanceled to true"

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    iget-object v10, v10, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    const-string v11, "ril.fakeDispCanceled"

    const-string v12, "true"

    invoke-virtual {v10, v11, v12}, Lcom/android/internal/telephony/cdma/CDMAPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->setFakeDispCancelToCP()V

    .line 1060
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->updateSpnDisplay()V

    .line 1061
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->stopFakeDispCancelTimer()V

    goto/16 :goto_1

    .line 1063
    :cond_24
    const-string v10, "com.samsung.intent.action.SlotSwitched"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_25

    .line 1064
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker$1;->this$0:Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/IRCdmaServiceStateTracker;->SlotSwitched()V

    goto/16 :goto_1

    .line 1067
    :cond_25
    const-string v10, "CdmaSST"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "RIL received unexpected Intent: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
