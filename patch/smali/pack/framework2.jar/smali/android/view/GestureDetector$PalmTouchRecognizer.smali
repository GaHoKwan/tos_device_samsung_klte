.class Landroid/view/GestureDetector$PalmTouchRecognizer;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmTouchRecognizer"
.end annotation


# instance fields
.field public final PALM_TOUCH_SIZE_TH2:I

.field public PALM_TOUCH_X_VAR:F

.field private mPalmDown:Z

.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/view/GestureDetector;)V
    .locals 1

    .prologue
    .line 582
    iput-object p1, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->this$0:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    const/16 v0, 0x50

    iput v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->PALM_TOUCH_SIZE_TH2:I

    .line 585
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    .line 587
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    return-void
.end method

.method static synthetic access$800(Landroid/view/GestureDetector$PalmTouchRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/GestureDetector$PalmTouchRecognizer;

    .prologue
    .line 582
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    return v0
.end method

.method static synthetic access$802(Landroid/view/GestureDetector$PalmTouchRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/GestureDetector$PalmTouchRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 582
    iput-boolean p1, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    return p1
.end method


# virtual methods
.method public Initialize()V
    .locals 1

    .prologue
    .line 612
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    .line 613
    iget-object v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->this$0:Landroid/view/GestureDetector;

    iget-object v0, v0, Landroid/view/GestureDetector;->mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->this$0:Landroid/view/GestureDetector;

    iget-object v0, v0, Landroid/view/GestureDetector;->mPalmSweepRecognizer:Landroid/view/GestureDetector$PalmSweepRecognizer;

    iget v0, v0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    int-to-float v0, v0

    iput v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    .line 614
    :cond_0
    return-void
.end method

.method public Process(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 5
    .param p1, "data"    # Landroid/view/GestureDetector$SurfaceTouchSharingData;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 591
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    if-nez v0, :cond_1

    .line 592
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v0, v0, v4

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 593
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    iget v1, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarY:F

    iget v1, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 594
    iput-boolean v3, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    .line 598
    :cond_0
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    if-ne v0, v3, :cond_1

    .line 599
    const-string v0, "GestureDetector"

    const-string v1, "[Surface Touch Event] Palm touch Down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    .line 605
    :cond_1
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    if-ne v0, v3, :cond_2

    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z

    if-ne v0, v3, :cond_2

    .line 606
    const-string v0, "GestureDetector"

    const-string v1, "[Surface Touch Event] Palm touch UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    iget-object v1, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnShapeGestureListener;->onPalm(Landroid/view/MotionEvent;)Z

    .line 609
    :cond_2
    return-void
.end method
