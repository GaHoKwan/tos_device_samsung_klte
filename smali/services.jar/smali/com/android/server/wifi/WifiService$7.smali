.class Lcom/android/server/wifi/WifiService$7;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiService$7;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v2, 0xc1

    iput v2, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$7;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService;->getWifiApEnabledState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_0

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    :cond_0
    const-string v2, "WifiService"

    const-string v3, "Mobile AP will disable because of reset settings"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/wifi/WifiService$7;->this$0:Lcom/android/server/wifi/WifiService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wifi/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$7;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v2, v2, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiStateMachine;->callSECApi(Landroid/os/Message;)I

    return-void
.end method
