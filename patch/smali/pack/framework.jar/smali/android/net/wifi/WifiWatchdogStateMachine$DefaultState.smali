.class Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DefaultState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 994
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->getName()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 995
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2200(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 996
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->registerForSettingsChanges()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2300(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 997
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->registerForWatchdogToggle()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2400(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 998
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 999
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 1003
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1034
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->getCurrentState()Lcom/android/internal/util/IState;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3400(Landroid/net/wifi/WifiWatchdogStateMachine;)Lcom/android/internal/util/IState;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/util/IState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3500(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 1037
    :cond_0
    :goto_0
    :sswitch_0
    return v3

    .line 1005
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->updateSettings()V
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2500(Landroid/net/wifi/WifiWatchdogStateMachine;)V

    .line 1006
    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$600()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "Updating wifi-watchdog secure settings"

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto :goto_0

    .line 1009
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/wifi/WifiWatchdogStateMachine;->calculateSignalLevel(I)I
    invoke-static {v1, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2800(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    move-result v1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentSignalLevel:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2702(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 1011
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3000(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2902(Landroid/net/wifi/WifiWatchdogStateMachine;Landroid/net/wifi/WifiInfo;)Landroid/net/wifi/WifiInfo;

    .line 1012
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentLinkSpeed:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3102(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    .line 1013
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v1

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mCurrentRssi:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3202(Landroid/net/wifi/WifiWatchdogStateMachine;I)I

    goto :goto_0

    .line 1028
    :sswitch_3
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v0, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 1031
    :sswitch_4
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$DefaultState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const/4 v1, 0x0

    # setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$3302(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    goto :goto_0

    .line 1003
    :sswitch_data_0
    .sparse-switch
        0x21002 -> :sswitch_0
        0x21003 -> :sswitch_2
        0x21004 -> :sswitch_0
        0x21005 -> :sswitch_0
        0x21006 -> :sswitch_1
        0x21007 -> :sswitch_0
        0x21008 -> :sswitch_3
        0x21009 -> :sswitch_4
        0x2100b -> :sswitch_0
        0x2100c -> :sswitch_0
        0x21047 -> :sswitch_0
        0x25015 -> :sswitch_0
        0x25016 -> :sswitch_0
    .end sparse-switch
.end method
