.class Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;
.super Ljava/lang/Object;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/palmMotion/PalmMotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmTouchRecognizer"
.end annotation


# instance fields
.field public final PALM_TOUCH_SIZE_TH2:I

.field public PALM_TOUCH_X_VAR:F

.field private mPalmDown:Z

.field final synthetic this$0:Lcom/android/server/palmMotion/PalmMotionService;


# direct methods
.method private constructor <init>(Lcom/android/server/palmMotion/PalmMotionService;)V
    .locals 1

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 414
    const/16 v0, 0x50

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->PALM_TOUCH_SIZE_TH2:I

    .line 415
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    .line 417
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/palmMotion/PalmMotionService;Lcom/android/server/palmMotion/PalmMotionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;
    .param p2, "x1"    # Lcom/android/server/palmMotion/PalmMotionService$1;

    .prologue
    .line 412
    invoke-direct {p0, p1}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;-><init>(Lcom/android/server/palmMotion/PalmMotionService;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 412
    iput-boolean p1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z

    return p1
.end method


# virtual methods
.method public Initialize(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V
    .locals 2
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z

    .line 443
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenHeight:I

    iget v1, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    if-le v0, v1, :cond_0

    .line 444
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    .line 447
    :goto_0
    return-void

    .line 446
    :cond_0
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    goto :goto_0
.end method

.method public Process(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V
    .locals 6
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 421
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z

    if-nez v0, :cond_1

    .line 422
    iget-object v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v0, v0, v4

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x42a00000    # 80.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 423
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarX:F

    iget v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    iget-object v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarY:F

    iget v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    iget-object v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 424
    iput-boolean v5, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z

    .line 428
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z

    if-ne v0, v5, :cond_1

    .line 429
    const-string v0, "PalmMotionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Surface Touch Event] Palm touch Down, PALM_TOUCH_X_VAR : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->PALM_TOUCH_X_VAR:F

    iget-object v3, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mGestureSurfaceTouch:Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;
    invoke-static {v0}, Lcom/android/server/palmMotion/PalmMotionService;->access$900(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->onPalm(Landroid/view/MotionEvent;)Z

    .line 435
    :cond_1
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    if-ne v0, v5, :cond_2

    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z

    if-ne v0, v5, :cond_2

    .line 436
    const-string v0, "PalmMotionService"

    const-string v1, "[Surface Touch Event] Palm touch UP"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mGestureSurfaceTouch:Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;
    invoke-static {v0}, Lcom/android/server/palmMotion/PalmMotionService;->access$900(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->onPalm(Landroid/view/MotionEvent;)Z

    .line 439
    :cond_2
    return-void
.end method
