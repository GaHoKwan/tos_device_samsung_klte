.class Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;


# direct methods
.method constructor <init>(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)V
    .locals 0

    .prologue
    .line 5271
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 5274
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mLockBlankUnblankDisplay:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5100(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 5275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mPendingUpdateBlankUnblankDisplay:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$5202(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 5276
    new-instance v0, Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    invoke-direct {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;-><init>()V

    .line 5278
    .local v0, "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    # getter for: Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->mBlanked:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->access$5400(Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5279
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 5280
    const/4 v1, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5500(Z)V

    .line 5281
    const-string v1, "nativeSetInteractive(false)"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 5282
    const-string v1, "PowerManagerService"

    const-string v3, "!@[s] blankAllDisplays() : blankAllDisplaysFromPowerManage"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5283
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->blankAllDisplaysFromPowerManager()V

    .line 5284
    const-string v1, "mDisplayManagerService.blankAllDisplaysFromPowerManager()"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 5285
    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5700(Z)V

    .line 5286
    const-string v1, "nativeSetAutoSuspend(true)"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 5288
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mNativeUserActivityCount:I
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$5802(Lcom/android/server/power/PowerManagerService;I)I

    .line 5290
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const-wide/16 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mDelayTimePrintWakeLock:J
    invoke-static {v1, v3, v4}, Lcom/android/server/power/PowerManagerService;->access$5902(Lcom/android/server/power/PowerManagerService;J)J

    .line 5291
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v3, v3, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$6000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->post(Ljava/lang/Runnable;)Z

    .line 5295
    const-string v1, "PowerManagerService"

    const-string v3, "SecHardwareInterface.setBatteryADC : false"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5296
    const-string v1, "lcd"

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 5325
    :cond_0
    :goto_0
    monitor-exit v2

    .line 5326
    return-void

    .line 5301
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->resetTime()V

    .line 5302
    const/4 v1, 0x0

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetAutoSuspend(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5700(Z)V

    .line 5303
    const-string v1, "nativeSetAutoSuspend(false)"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 5304
    const-string v1, "PowerManagerService"

    const-string v3, "!@[s] unblankAllDisplays() : unblankAllDisplaysFromPowerManager"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5305
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5600(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/display/DisplayManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayManagerService;->unblankAllDisplaysFromPowerManager()V

    .line 5306
    const-string v1, "mDisplayManagerService.unblankAllDisplaysFromPowerManager()"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 5307
    const/4 v1, 0x1

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeSetInteractive(Z)V
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5500(Z)V

    .line 5308
    const-string v1, "nativeSetInteractive(true)"

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printLapTime(Ljava/lang/String;J)V

    .line 5309
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mTimeMeasurement:Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6100(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$TimeMeasurement;

    move-result-object v1

    const-string/jumbo v3, "wakeUp() or wakeUpFromNative()"

    const-wide/16 v4, 0x320

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/server/power/PowerManagerService$TimeMeasurement;->printTotalTime(Ljava/lang/String;J)V

    .line 5311
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mHandler:Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$5000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v3, v3, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPrintWakeLockAperiodicallyRunnable:Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->access$6000(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5315
    const-string v1, "PowerManagerService"

    const-string v3, "SecHardwareInterface.setBatteryADC : true"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5316
    const-string v1, "lcd"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/sec/android/hardware/SecHardwareInterface;->setBatteryADC(Ljava/lang/String;Z)V

    .line 5320
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mForceDisableWakeLock:Z
    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->access$6200(Lcom/android/server/power/PowerManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5321
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl$1;->this$1:Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;

    iget-object v1, v1, Lcom/android/server/power/PowerManagerService$DisplayBlankerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mIsFakeShutdown:Z
    invoke-static {v1, v3}, Lcom/android/server/power/PowerManagerService;->access$6302(Lcom/android/server/power/PowerManagerService;Z)Z

    goto :goto_0

    .line 5325
    .end local v0    # "blankUnblankTimeMeasurement":Lcom/android/server/power/PowerManagerService$TimeMeasurement;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
