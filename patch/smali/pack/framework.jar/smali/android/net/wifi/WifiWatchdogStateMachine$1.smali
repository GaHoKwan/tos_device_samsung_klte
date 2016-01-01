.class Landroid/net/wifi/WifiWatchdogStateMachine$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 748
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v11, 0x21006

    const v10, 0x2103e

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 751
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 752
    .local v1, "action":Ljava/lang/String;
    const-string v7, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 753
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v10, 0x21003

    const-string v11, "newRssi"

    const/16 v12, -0xc8

    invoke-virtual {p2, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v7, v10, v11, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 755
    const-string v7, "monitorNetworkPropertiesUpdate"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 756
    .local v5, "reason":I
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mDnsServerList:Ljava/util/List;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$000(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_0

    if-eqz v5, :cond_0

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v7

    if-nez v7, :cond_0

    .line 758
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v7

    const v10, 0x21043

    invoke-static {v7, v10, v5, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 761
    :cond_0
    const-string v7, "DhcpSession"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 762
    .local v3, "mDhcpSessionState":Ljava/lang/String;
    if-eqz v3, :cond_1

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v7

    if-nez v7, :cond_1

    .line 763
    const-string v7, "start"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 764
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 765
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v7

    const v8, 0x21044

    invoke-static {v7, v8, v5, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    .line 830
    .end local v3    # "mDhcpSessionState":Ljava/lang/String;
    .end local v5    # "reason":I
    :cond_1
    :goto_0
    return-void

    .line 767
    .restart local v3    # "mDhcpSessionState":Ljava/lang/String;
    .restart local v5    # "reason":I
    :cond_2
    const-string v7, "complete"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$300(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 768
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsInDhcpSession:Z
    invoke-static {v7, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 769
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v7

    const v8, 0x21045

    invoke-static {v7, v8, v5, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 772
    .end local v3    # "mDhcpSessionState":Ljava/lang/String;
    .end local v5    # "reason":I
    :cond_3
    const-string v7, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 773
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v8, 0x21004

    invoke-virtual {v7, v8, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 774
    :cond_4
    const-string v7, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 775
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v8, 0x21002

    invoke-virtual {v7, v8, p2}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 776
    :cond_5
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 777
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v8, 0x21008

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 778
    :cond_6
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 779
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v8, 0x21009

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 780
    :cond_7
    const-string v7, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 781
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v8, 0x21005

    const-string v9, "wifi_state"

    const/4 v10, 0x4

    invoke-virtual {p2, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(II)V

    goto/16 :goto_0

    .line 783
    :cond_8
    const-string v7, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 784
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v7, v11}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 785
    :cond_9
    const-string v7, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    .line 786
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v7

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mConnectivityManager:Landroid/net/ConnectivityManager;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/ConnectivityManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->isMobilePolicyDataEnable()Z

    move-result v7

    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mMobilePolicyDataEnable:Z
    invoke-static {v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$500(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v10

    if-eq v7, v10, :cond_b

    .line 788
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v10, "Mobile data policy changed"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 789
    :cond_a
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v7, v11}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    .line 791
    :cond_b
    const-string v7, "apnType"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 792
    .local v2, "apnType":Ljava/lang/String;
    const-string v7, "hipri"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c

    const-string v7, "default"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 794
    :cond_c
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[ACTION_ANY_DATA_CONNECTION_STATE_CHANGED] "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 795
    :cond_d
    const/4 v6, 0x0

    .line 797
    .local v6, "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :try_start_0
    const-class v7, Lcom/android/internal/telephony/PhoneConstants$DataState;

    const-string v10, "state"

    invoke-virtual {p2, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 802
    :goto_1
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->SMARTCM_DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$800()Z

    move-result v7

    if-eqz v7, :cond_e

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "state : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 803
    :cond_e
    const/4 v4, 0x0

    .line 804
    .local v4, "previousState":Z
    const-string v7, "hipri"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 805
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    .line 806
    iget-object v10, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v7, :cond_f

    move v7, v8

    :goto_2
    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z
    invoke-static {v10, v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1102(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 807
    if-nez v4, :cond_1

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileHipriConnected:Z
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v8, 0x21040

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_f
    move v7, v9

    .line 806
    goto :goto_2

    .line 809
    :cond_10
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v4

    .line 810
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    sget-object v10, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v6, v10, :cond_11

    :goto_3
    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1202(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 811
    if-nez v4, :cond_1

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsMobileConnected:Z
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1200(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v8, 0x2103f

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    :cond_11
    move v8, v9

    .line 810
    goto :goto_3

    .line 814
    .end local v2    # "apnType":Ljava/lang/String;
    .end local v4    # "previousState":Z
    .end local v6    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :cond_12
    const-string v7, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->sWifiOnly:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$100()Z

    move-result v7

    if-nez v7, :cond_15

    .line 815
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScanning:Z
    invoke-static {v7, v9}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 816
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1400(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mVerifyingLinkState:Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1500(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$VerifyingLinkState;

    move-result-object v8

    if-ne v7, v8, :cond_13

    .line 817
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 819
    :cond_13
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalCheckMode:I
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1600(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v7

    const/16 v8, 0xd

    if-eq v7, v8, :cond_14

    .line 820
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCaptivePortalHandler:Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1700(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiWatchdogStateMachine$CaptivePortalHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 822
    :cond_14
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 825
    :cond_15
    const-string v7, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCountryIso:Ljava/lang/String;
    invoke-static {v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1900(Landroid/net/wifi/WifiWatchdogStateMachine;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 827
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v7

    if-eqz v7, :cond_16

    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v8, "Network country change is detected."

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v7, v8}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 828
    :cond_16
    iget-object v7, p0, Landroid/net/wifi/WifiWatchdogStateMachine$1;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mQualityResultHandler:Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;
    invoke-static {v7}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$200(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/wifi/WifiWatchdogStateMachine$QualityResultHandler;->setUrlList()V

    goto/16 :goto_0

    .line 799
    .restart local v2    # "apnType":Ljava/lang/String;
    .restart local v6    # "state":Lcom/android/internal/telephony/PhoneConstants$DataState;
    :catch_0
    move-exception v7

    goto/16 :goto_1
.end method
