.class Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConnectedOxygenState"
.end annotation


# instance fields
.field private mIbssRunning:Z

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 7844
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 7849
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$17400(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 7850
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 7851
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$11500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfigStore;->isIBSS(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7852
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->mIbssRunning:Z

    .line 7853
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$16700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 7854
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->showStatusBarOxygenIcon()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$33900(Landroid/net/wifi/WifiStateMachine;)V

    .line 7856
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$11200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendOxygenStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$34000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7857
    return-void
.end method

.method public exit()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7888
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setNetworkDetailedState(Landroid/net/NetworkInfo$DetailedState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$17400(Landroid/net/wifi/WifiStateMachine;Landroid/net/NetworkInfo$DetailedState;)V

    .line 7889
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->callResetTimer(Z)V
    invoke-static {v0, v3}, Landroid/net/wifi/WifiStateMachine;->access$21000(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 7891
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$600(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastNetworkId:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$11300(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    sget-object v2, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiConfigStore;->updateStatus(ILandroid/net/NetworkInfo$DetailedState;)V

    .line 7892
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->mIbssRunning:Z

    if-eqz v0, :cond_0

    .line 7893
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->clearStatusBarOxygenIcon()V
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$34200(Landroid/net/wifi/WifiStateMachine;)V

    .line 7894
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$16700(Landroid/net/wifi/WifiStateMachine;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 7895
    iput-boolean v3, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->mIbssRunning:Z

    .line 7897
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mLastBssid:Ljava/lang/String;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$11200(Landroid/net/wifi/WifiStateMachine;)Ljava/lang/String;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->sendOxygenStateChangeBroadcast(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$34000(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 7898
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 7861
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 7881
    const/4 v0, 0x0

    .line 7883
    :goto_0
    return v0

    .line 7863
    :sswitch_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleSuspendMsg(I)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$20900(Landroid/net/wifi/WifiStateMachine;I)V

    .line 7883
    :goto_1
    :sswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 7872
    :sswitch_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    # getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$12100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    # invokes: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$34100(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 7873
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$ConnectedOxygenState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v1, 0x2000b

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 7861
    :sswitch_data_0
    .sparse-switch
        0x20056 -> :sswitch_0
        0x21015 -> :sswitch_1
        0x21016 -> :sswitch_1
        0x2400c -> :sswitch_2
    .end sparse-switch
.end method
