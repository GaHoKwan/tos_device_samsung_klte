.class Landroid/hardware/motion/MotionRecognitionService$MyWindowOrientationListener;
.super Lcom/android/internal/policy/impl/WindowOrientationListener;
.source "MotionRecognitionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/motion/MotionRecognitionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyWindowOrientationListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/motion/MotionRecognitionService;


# direct methods
.method constructor <init>(Landroid/hardware/motion/MotionRecognitionService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1684
    iput-object p1, p0, Landroid/hardware/motion/MotionRecognitionService$MyWindowOrientationListener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    .line 1685
    invoke-direct {p0, p2, p3}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 1686
    return-void
.end method


# virtual methods
.method public onProposedRotationChanged(I)V
    .locals 3
    .param p1, "rotation"    # I

    .prologue
    .line 1690
    const-string v0, "MotionRecognitionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  .updateOrientation : rotation = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    packed-switch p1, :pswitch_data_0

    .line 1694
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$MyWindowOrientationListener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v1, 0x1c

    iput v1, v0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    .line 1699
    :goto_0
    return-void

    .line 1695
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$MyWindowOrientationListener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v1, 0x1d

    iput v1, v0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    goto :goto_0

    .line 1696
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$MyWindowOrientationListener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v1, 0x1e

    iput v1, v0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    goto :goto_0

    .line 1697
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/motion/MotionRecognitionService$MyWindowOrientationListener;->this$0:Landroid/hardware/motion/MotionRecognitionService;

    const/16 v1, 0x1f

    iput v1, v0, Landroid/hardware/motion/MotionRecognitionService;->mRotate:I

    goto :goto_0

    .line 1692
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
