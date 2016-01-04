.class final Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AutoPowerOffReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    .prologue
    .line 4878
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/power/PowerManagerService;
    .param p2, "x1"    # Lcom/android/server/power/PowerManagerService$1;

    .prologue
    .line 4878
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 4881
    const-string v1, "PowerManagerService"

    const-string v2, "[auto power off] AutoPowerOffReceiver"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4884
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mAutoPowerOffLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3700(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 4885
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mShutdownByAutoPowerOff:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3800(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    .line 4886
    .local v0, "isAutoPowerOff":Z
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4887
    if-eqz v0, :cond_0

    .line 4888
    const-string v1, "PowerManagerService"

    const-string v2, "[auto power off] auto power off already. It\'s canceled."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4889
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v1}, Lcom/android/server/power/PowerManagerService;->resetAutoPowerOffTimer()V

    .line 4895
    :goto_0
    return-void

    .line 4886
    .end local v0    # "isAutoPowerOff":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 4893
    .restart local v0    # "isAutoPowerOff":Z
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mAutoPowerOffSuspendBlocker:Lcom/android/server/power/SuspendBlocker;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$3000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/SuspendBlocker;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/power/SuspendBlocker;->acquire()V

    .line 4894
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$AutoPowerOffReceiver;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v2, 0x0

    const-string v3, "AutoPowerOff"

    # invokes: Lcom/android/server/power/PowerManagerService;->shutdownOrRebootInternal(ZZLjava/lang/String;Z)V
    invoke-static {v1, v4, v2, v3, v4}, Lcom/android/server/power/PowerManagerService;->access$3900(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V

    goto :goto_0
.end method
