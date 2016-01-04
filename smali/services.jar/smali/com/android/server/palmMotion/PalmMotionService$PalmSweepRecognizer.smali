.class Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;
.super Ljava/lang/Object;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/palmMotion/PalmMotionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PalmSweepRecognizer"
.end annotation


# instance fields
.field public final PALM_SWEEP_PROGRESS_SIZE:I

.field public final PALM_SWEEP_SIZE_TH:I

.field public final SWEEP_LEFT:I

.field public final SWEEP_RIGHT:I

.field public TILT_TO_ZOOM_XVAR:F

.field mArrIsValidWithTouchMajor:[Z

.field mArrMaxTouchMajor:[I

.field mArrSumSize:[I

.field mDiffx:F

.field mFalseSizeCnt:I

.field mLRSDCnt:I

.field mLRSizeDecreased:Z

.field mMoveXTH:I

.field private mPreSweepDown:Z

.field mSmeanX:F

.field mSmeanXpre:F

.field private mSweepDown:Z

.field mSweepInitDiffx:F

.field mSweepLeftReverseSum:F

.field mSweepRightReverseSum:F

.field mVarXBig:Z

.field private mbPalmSwipeDetected:Z

.field final synthetic this$0:Lcom/android/server/palmMotion/PalmMotionService;


# direct methods
.method private constructor <init>(Lcom/android/server/palmMotion/PalmMotionService;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 450
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 451
    iput-boolean v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    .line 452
    iput-boolean v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mPreSweepDown:Z

    .line 453
    iput-boolean v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 455
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->PALM_SWEEP_SIZE_TH:I

    .line 456
    const/16 v0, 0x23

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->PALM_SWEEP_PROGRESS_SIZE:I

    .line 457
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    .line 460
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->SWEEP_RIGHT:I

    .line 461
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->SWEEP_LEFT:I

    .line 464
    iput-boolean v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 465
    iput-boolean v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mVarXBig:Z

    .line 466
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSDCnt:I

    .line 467
    iput v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mMoveXTH:I

    .line 468
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    .line 469
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    .line 470
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 471
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 472
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    .line 473
    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepInitDiffx:F

    .line 474
    new-array v0, v3, [Z

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    .line 475
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    .line 476
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    .line 479
    iput v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mFalseSizeCnt:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/palmMotion/PalmMotionService;Lcom/android/server/palmMotion/PalmMotionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;
    .param p2, "x1"    # Lcom/android/server/palmMotion/PalmMotionService$1;

    .prologue
    .line 450
    invoke-direct {p0, p1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;-><init>(Lcom/android/server/palmMotion/PalmMotionService;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mPreSweepDown:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mPreSweepDown:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    .prologue
    .line 450
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 450
    iput-boolean p1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    return p1
.end method


# virtual methods
.method public CalculateHorizontalSweepData(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V
    .locals 6
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    const/high16 v3, 0x42480000    # 50.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 542
    invoke-virtual {p0, p1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->SetArrMaxTouchMajor(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 547
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    if-nez v0, :cond_2

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    const/high16 v1, 0x42c80000    # 100.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumEccen:F

    cmpl-float v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_2

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mIsRotated:Z

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumEccen:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    :cond_1
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarX:F

    iget v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    iget-object v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 548
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepInitDiffx:F

    .line 549
    iput-boolean v5, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    .line 550
    iput-boolean v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 551
    const-string v0, "PalmMotionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Surface touch Event] Palm swipe start, x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepInitDiffx:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " m:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " TILT_TO_ZOOM_XVAR: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    iget-object v3, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Nd:[I

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x4

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    :cond_2
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    .line 555
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v0, :cond_4

    .line 556
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x420c0000    # 35.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 557
    iput-boolean v5, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 558
    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSDCnt:I

    if-gez v0, :cond_3

    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSDCnt:I

    .line 559
    :cond_3
    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mFalseSizeCnt:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mFalseSizeCnt:I

    .line 564
    :cond_4
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v0, :cond_6

    .line 565
    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_6

    .line 566
    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    iget v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepRightReverseSum:F

    iget v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 567
    :cond_5
    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    iget v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    iget v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 570
    :cond_6
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SvarX:F

    const/high16 v1, 0x43700000    # 240.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_7

    iput-boolean v5, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mVarXBig:Z

    .line 571
    :cond_7
    return-void
.end method

.method public GetRangeNum(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)I
    .locals 3
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    .line 501
    const/4 v0, 0x0

    .line 502
    .local v0, "result":I
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    float-to-int v1, v2

    .line 504
    .local v1, "x":I
    iget-boolean v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v2, :cond_2

    .line 506
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_0

    .line 508
    const/4 v0, 0x0

    .line 538
    :goto_0
    return v0

    .line 510
    :cond_0
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_1

    .line 512
    const/4 v0, 0x1

    goto :goto_0

    .line 516
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 521
    :cond_2
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_3

    .line 523
    const/4 v0, 0x0

    goto :goto_0

    .line 525
    :cond_3
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_4

    .line 527
    const/4 v0, 0x1

    goto :goto_0

    .line 529
    :cond_4
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_5

    .line 531
    const/4 v0, 0x2

    goto :goto_0

    .line 535
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public Initialize(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V
    .locals 5
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 623
    iget v1, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mMoveXTH:I

    .line 624
    iget v1, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenHeight:I

    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    if-le v1, v2, :cond_0

    .line 625
    iget v1, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenWidth:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    .line 629
    :goto_0
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    .line 630
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mPreSweepDown:Z

    .line 631
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 632
    iput v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    .line 633
    iput v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    .line 634
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 635
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSDCnt:I

    .line 636
    iput v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 637
    iput v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 638
    iput v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    .line 639
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mVarXBig:Z

    .line 640
    iput v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepInitDiffx:F

    .line 642
    iput v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mFalseSizeCnt:I

    .line 643
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 645
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aput-boolean v3, v1, v0

    .line 646
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aput v3, v1, v0

    .line 647
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aput v3, v1, v0

    .line 643
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 627
    .end local v0    # "i":I
    :cond_0
    iget v1, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mScreenHeight:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    goto :goto_0

    .line 649
    .restart local v0    # "i":I
    :cond_1
    return-void
.end method

.method public Process(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V
    .locals 2
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    .line 614
    iget v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanXpre:F

    .line 615
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    iput v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSmeanX:F

    .line 616
    invoke-virtual {p0, p1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->CalculateHorizontalSweepData(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 617
    iget v0, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    if-nez v0, :cond_0

    .line 618
    invoke-virtual {p0, p1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->RocognizeHorizontalSweepData(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 620
    :cond_0
    return-void
.end method

.method public RocognizeHorizontalSweepData(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V
    .locals 9
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    const/high16 v4, 0x43960000    # 300.0f

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 574
    iget-boolean v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSizeDecreased:Z

    if-ne v2, v5, :cond_0

    .line 575
    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mTouchCnt:I

    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mLRSDCnt:I

    sub-int/2addr v2, v3

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mFalseSizeCnt:I

    const/16 v3, 0x11

    if-le v2, v3, :cond_0

    .line 576
    iput-boolean v7, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    .line 577
    const-string v2, "PalmMotionService"

    const-string v3, "[Surface Touch Event] Palm Swipe Fail 3 - FalseSize "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :cond_0
    const/4 v1, 0x0

    .line 581
    .local v1, "validMajorCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 583
    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v5, :cond_1

    .line 585
    add-int/lit8 v1, v1, 0x1

    .line 581
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 588
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;
    invoke-static {v2}, Lcom/android/server/palmMotion/PalmMotionService;->access$1000(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    move-result-object v2

    # getter for: Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z
    invoke-static {v2}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->access$1100(Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 589
    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepInitDiffx:F

    iget v3, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    .line 590
    iget-boolean v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mVarXBig:Z

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mMoveXTH:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_6

    if-lt v1, v6, :cond_6

    .line 591
    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepRightReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_4

    .line 592
    const-string v2, "PalmMotionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - RIGHT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mGestureSurfaceTouch:Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;
    invoke-static {v2}, Lcom/android/server/palmMotion/PalmMotionService;->access$900(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->onSweepDown(I)Z

    .line 594
    iput-boolean v5, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 611
    :cond_3
    :goto_1
    return-void

    .line 595
    :cond_4
    iget v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_5

    .line 596
    const-string v2, "PalmMotionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - LEFT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->this$0:Lcom/android/server/palmMotion/PalmMotionService;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService;->mGestureSurfaceTouch:Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;
    invoke-static {v2}, Lcom/android/server/palmMotion/PalmMotionService;->access$900(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;->onSweepDown(I)Z

    .line 598
    iput-boolean v5, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    goto :goto_1

    .line 601
    :cond_5
    const-string v2, "PalmMotionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe Fail 1 - mSweepRightReverseSum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepRightReverseSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSweepLeftReverseSum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 607
    :cond_6
    const-string v2, "PalmMotionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe Fail 2 - max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mVarXBig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mVarXBig:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " validMajorCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public SetArrMaxTouchMajor(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V
    .locals 3
    .param p1, "data"    # Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .prologue
    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->GetRangeNum(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)I

    move-result v0

    .line 488
    .local v0, "range":I
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aget v1, v1, v0

    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    if-ge v1, v2, :cond_0

    .line 490
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 495
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mArrSumSize:[I

    iget v2, p1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 497
    :cond_1
    return-void
.end method

.method public getSweepDown()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z

    return v0
.end method
