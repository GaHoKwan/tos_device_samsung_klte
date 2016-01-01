.class Landroid/hardware/motion/MotionRecognitionService$4;
.super Landroid/hardware/motion/MotionRecognitionSettings;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/motion/MotionRecognitionService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;

    .prologue
    .line 413
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    invoke-direct {p0, p2, p3}, Landroid/hardware/motion/MotionRecognitionSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChangeMotionSettings(II)V
    .locals 8
    .param p1, "motion_sensors"    # I
    .param p2, "motion_events"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 417
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_3

    .line 418
    shl-int v1, v6, v0

    .line 419
    .local v1, "motion_sensor":I
    and-int v2, v1, p1

    if-eqz v2, :cond_1

    .line 420
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V
    invoke-static {v2, v1, v6}, Landroid/hardware/motion/MotionRecognitionService;->access$1300(Landroid/hardware/motion/MotionRecognitionService;IZ)V

    .line 421
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v2, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v3

    .line 422
    :try_start_0
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-boolean v2, v2, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v2, :cond_0

    .line 423
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v4, 0x1

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V
    invoke-static {v2, v1, v4}, Landroid/hardware/motion/MotionRecognitionService;->access$1400(Landroid/hardware/motion/MotionRecognitionService;IZ)V

    .line 424
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->refPanningDEnabled:I
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$200(Landroid/hardware/motion/MotionRecognitionService;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$300(Landroid/hardware/motion/MotionRecognitionService;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 425
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v5, 0x132

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->controlMotionSensor(I)Z
    invoke-static {v4, v5}, Landroid/hardware/motion/MotionRecognitionService;->access$400(Landroid/hardware/motion/MotionRecognitionService;I)Z

    move-result v4

    # setter for: Landroid/hardware/motion/MotionRecognitionService;->mbEnabledPanning:Z
    invoke-static {v2, v4}, Landroid/hardware/motion/MotionRecognitionService;->access$302(Landroid/hardware/motion/MotionRecognitionService;Z)Z

    .line 428
    :cond_0
    monitor-exit v3

    .line 417
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 430
    :cond_1
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->useSensor(IZ)V
    invoke-static {v2, v1, v7}, Landroid/hardware/motion/MotionRecognitionService;->access$1300(Landroid/hardware/motion/MotionRecognitionService;IZ)V

    .line 431
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-object v3, v2, Landroid/hardware/motion/MotionRecognitionService;->mLockEngine:Ljava/lang/Object;

    monitor-enter v3

    .line 432
    :try_start_1
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    iget-boolean v2, v2, Landroid/hardware/motion/MotionRecognitionService;->mEngineInitialized:Z

    if-eqz v2, :cond_2

    .line 433
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/4 v4, 0x0

    # invokes: Landroid/hardware/motion/MotionRecognitionService;->enableSensor(IZ)V
    invoke-static {v2, v1, v4}, Landroid/hardware/motion/MotionRecognitionService;->access$1400(Landroid/hardware/motion/MotionRecognitionService;IZ)V

    .line 435
    :cond_2
    monitor-exit v3

    goto :goto_1

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 438
    .end local v1    # "motion_sensor":I
    :cond_3
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mMotionSettings:Landroid/hardware/motion/MotionRecognitionSettings;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$700(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSettings;

    move-result-object v2

    const/high16 v3, 0x80000

    invoke-virtual {v2, v3}, Landroid/hardware/motion/MotionRecognitionSettings;->isActivatedMotion(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 439
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSmartFace;

    move-result-object v2

    sget-object v3, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->SETTING:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v2, v3}, Landroid/hardware/motion/MotionRecognitionSmartFace;->enableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    .line 442
    :goto_2
    return-void

    .line 441
    :cond_4
    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionService$4;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    # getter for: Landroid/hardware/motion/MotionRecognitionService;->mSmartFace:Landroid/hardware/motion/MotionRecognitionSmartFace;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionService;->access$1100(Landroid/hardware/motion/MotionRecognitionService;)Landroid/hardware/motion/MotionRecognitionSmartFace;

    move-result-object v2

    sget-object v3, Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;->SETTING:Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;

    invoke-virtual {v2, v3}, Landroid/hardware/motion/MotionRecognitionSmartFace;->disableFaceDetector(Landroid/hardware/motion/MotionRecognitionSmartFace$eREASONOFSTARTSTOP;)V

    goto :goto_2
.end method
