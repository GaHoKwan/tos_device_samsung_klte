.class Landroid/net/wifi/WifiStateMachine$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0

    .prologue
    .line 1504
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1507
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1508
    .local v0, "action":Ljava/lang/String;
    # getter for: Landroid/net/wifi/WifiStateMachine;->DBG:Z
    invoke-static {}, Landroid/net/wifi/WifiStateMachine;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcast Received: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 1510
    :cond_0
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1511
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mScreenOff:Z
    invoke-static {v1, v4}, Landroid/net/wifi/WifiStateMachine;->access$1802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 1512
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V
    invoke-static {v1, v5}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 1521
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->setPowerBackOff()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$2100(Landroid/net/wifi/WifiStateMachine;)V

    .line 1523
    return-void

    .line 1513
    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1514
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    # setter for: Landroid/net/wifi/WifiStateMachine;->mScreenOff:Z
    invoke-static {v1, v5}, Landroid/net/wifi/WifiStateMachine;->access$1802(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 1515
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->handleScreenStateChanged(Z)V
    invoke-static {v1, v4}, Landroid/net/wifi/WifiStateMachine;->access$1900(Landroid/net/wifi/WifiStateMachine;Z)V

    goto :goto_0

    .line 1516
    :cond_3
    const-string v1, "com.android.server.WifiManager.action.REFRESH_BATCHED_SCAN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1517
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$7;->this$0:Landroid/net/wifi/WifiStateMachine;

    # invokes: Landroid/net/wifi/WifiStateMachine;->startNextBatchedScanAsync()V
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$2000(Landroid/net/wifi/WifiStateMachine;)V

    goto :goto_0
.end method
