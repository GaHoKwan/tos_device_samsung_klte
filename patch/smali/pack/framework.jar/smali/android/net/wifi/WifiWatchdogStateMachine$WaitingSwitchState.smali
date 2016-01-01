.class Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaitingSwitchState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 4664
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    const v3, 0x21041

    .line 4667
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$24300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4668
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    .line 4669
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4670
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$9000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$24400(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    .line 4675
    :goto_0
    return-void

    .line 4672
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v0, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$24500(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 4673
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v3, v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public exit()V
    .locals 3

    .prologue
    .line 4679
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$24600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4680
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v1, 0x21041

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$24700(Landroid/net/wifi/WifiWatchdogStateMachine;I)V

    .line 4681
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v0, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 4685
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    move v0, v1

    .line 4729
    :goto_0
    return v0

    .line 4687
    :sswitch_0
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v4, "EVENT_MOBILE_HIPRI_CONNECTED"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$24800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4688
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I
    invoke-static {v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v4

    if-le v4, v2, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mReportedLinkStatusType:I
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6900(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v0

    :cond_1
    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->sendLinkStatusNotification(ZI)V
    invoke-static {v3, v1, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5400(Landroid/net/wifi/WifiWatchdogStateMachine;ZI)V

    .line 4690
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWatchdogEnabledState:Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$18800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$WatchdogEnabledState;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$24900(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    :cond_2
    :goto_1
    move v0, v2

    .line 4729
    goto :goto_0

    .line 4694
    :sswitch_1
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # operator++ for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11008(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    .line 4695
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_SWITCH_TIMEOUT : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$25000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4696
    :cond_3
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4697
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v3

    const-string v4, "enableHIPRI"

    invoke-virtual {v3, v1, v4}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 4700
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v4, "[NotConnectedState] stop FEATURE_ENABLE_HIPRI"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$25100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4701
    :cond_4
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsWaitingSwitchToHipri:Z
    invoke-static {v3, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4703
    :cond_5
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mSwitchFailCount:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$11000(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    if-le v3, v0, :cond_6

    .line 4704
    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pause qualifying for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "1800000ms"

    :goto_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v3, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$25200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 4705
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6002(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 4706
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPauseStartTime:J
    invoke-static {v0, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$10902(Landroid/net/wifi/WifiWatchdogStateMachine;J)J

    .line 4708
    :cond_6
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$5700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$25300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    .line 4704
    :cond_7
    const-string v0, "a while"

    goto :goto_2

    .line 4712
    :sswitch_2
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "[WaitingSwitchState]CMD_QUALITY_RECHECK"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$25400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4717
    :sswitch_3
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "[WaitingSwitchState]EVENT_AUTHENTICATION_COMPLETE"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$25500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4722
    :sswitch_4
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$WaitingSwitchState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "[QualityCheckingState] EVENT_ENABLE_HIPRI"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$25600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 4685
    :sswitch_data_0
    .sparse-switch
        0x2100c -> :sswitch_2
        0x21040 -> :sswitch_0
        0x21041 -> :sswitch_1
        0x21042 -> :sswitch_4
        0x21047 -> :sswitch_3
    .end sparse-switch
.end method
