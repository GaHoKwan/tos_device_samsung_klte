.class Landroid/hardware/motion/MotionRecognitionGrip$4;
.super Ljava/lang/Object;
.source "MotionRecognitionGrip.java"

# interfaces
.implements Landroid/hardware/scontext/SContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionGrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private scontext:Landroid/hardware/scontext/SContext;

.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionGrip;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionGrip;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSContextChanged(Landroid/hardware/scontext/SContextEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/scontext/SContextEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 366
    iget-object v1, p1, Landroid/hardware/scontext/SContextEvent;->scontext:Landroid/hardware/scontext/SContext;

    iput-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->scontext:Landroid/hardware/scontext/SContext;

    .line 367
    const-string v1, "MotionRecognitionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFlatMotionContext : event = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getTestFlatMotionContext()Landroid/hardware/scontext/SContextTestFlatMotion;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/scontext/SContextTestFlatMotion;->getAction()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->scontext:Landroid/hardware/scontext/SContext;

    invoke-virtual {v1}, Landroid/hardware/scontext/SContext;->getType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 371
    :pswitch_0
    invoke-virtual {p1}, Landroid/hardware/scontext/SContextEvent;->getTestFlatMotionContext()Landroid/hardware/scontext/SContextTestFlatMotion;

    move-result-object v0

    .line 372
    .local v0, "flatMotionContext":Landroid/hardware/scontext/SContextTestFlatMotion;
    invoke-virtual {v0}, Landroid/hardware/scontext/SContextTestFlatMotion;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 381
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # invokes: Landroid/hardware/motion/MotionRecognitionGrip;->setFlat(Z)V
    invoke-static {v1, v4}, Landroid/hardware/motion/MotionRecognitionGrip;->access$500(Landroid/hardware/motion/MotionRecognitionGrip;Z)V

    .line 382
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # invokes: Landroid/hardware/motion/MotionRecognitionGrip;->setPowerState_flat()Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionGrip;->access$400(Landroid/hardware/motion/MotionRecognitionGrip;)Z

    .line 383
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # getter for: Landroid/hardware/motion/MotionRecognitionGrip;->mProxEnabled_flat:Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionGrip;->access$600(Landroid/hardware/motion/MotionRecognitionGrip;)Z

    move-result v1

    if-ne v1, v5, :cond_0

    .line 384
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # getter for: Landroid/hardware/motion/MotionRecognitionGrip;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionGrip;->access$800(Landroid/hardware/motion/MotionRecognitionGrip;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # getter for: Landroid/hardware/motion/MotionRecognitionGrip;->sensorProxListener_Flat:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionGrip;->access$700(Landroid/hardware/motion/MotionRecognitionGrip;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 385
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # setter for: Landroid/hardware/motion/MotionRecognitionGrip;->mProxEnabled_flat:Z
    invoke-static {v1, v4}, Landroid/hardware/motion/MotionRecognitionGrip;->access$602(Landroid/hardware/motion/MotionRecognitionGrip;Z)Z

    .line 386
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # invokes: Landroid/hardware/motion/MotionRecognitionGrip;->setProximity_flat(Z)V
    invoke-static {v1, v4}, Landroid/hardware/motion/MotionRecognitionGrip;->access$300(Landroid/hardware/motion/MotionRecognitionGrip;Z)V

    goto :goto_0

    .line 374
    :pswitch_1
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # invokes: Landroid/hardware/motion/MotionRecognitionGrip;->setFlat(Z)V
    invoke-static {v1, v5}, Landroid/hardware/motion/MotionRecognitionGrip;->access$500(Landroid/hardware/motion/MotionRecognitionGrip;Z)V

    .line 375
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # getter for: Landroid/hardware/motion/MotionRecognitionGrip;->mProxEnabled_flat:Z
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionGrip;->access$600(Landroid/hardware/motion/MotionRecognitionGrip;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 376
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # getter for: Landroid/hardware/motion/MotionRecognitionGrip;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v1}, Landroid/hardware/motion/MotionRecognitionGrip;->access$800(Landroid/hardware/motion/MotionRecognitionGrip;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # getter for: Landroid/hardware/motion/MotionRecognitionGrip;->sensorProxListener_Flat:Landroid/hardware/SensorEventListener;
    invoke-static {v2}, Landroid/hardware/motion/MotionRecognitionGrip;->access$700(Landroid/hardware/motion/MotionRecognitionGrip;)Landroid/hardware/SensorEventListener;

    move-result-object v2

    iget-object v3, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # getter for: Landroid/hardware/motion/MotionRecognitionGrip;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Landroid/hardware/motion/MotionRecognitionGrip;->access$800(Landroid/hardware/motion/MotionRecognitionGrip;)Landroid/hardware/SensorManager;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # getter for: Landroid/hardware/motion/MotionRecognitionGrip;->sensorManager:Landroid/hardware/SensorManager;
    invoke-static {v4}, Landroid/hardware/motion/MotionRecognitionGrip;->access$800(Landroid/hardware/motion/MotionRecognitionGrip;)Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 377
    iget-object v1, p0, Landroid/hardware/motion/MotionRecognitionGrip$4;->this$0:Landroid/hardware/motion/MotionRecognitionGrip;

    # setter for: Landroid/hardware/motion/MotionRecognitionGrip;->mProxEnabled_flat:Z
    invoke-static {v1, v5}, Landroid/hardware/motion/MotionRecognitionGrip;->access$602(Landroid/hardware/motion/MotionRecognitionGrip;Z)Z

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch

    .line 372
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
