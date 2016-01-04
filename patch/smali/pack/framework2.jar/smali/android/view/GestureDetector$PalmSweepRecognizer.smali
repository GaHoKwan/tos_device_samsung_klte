.class Landroid/view/GestureDetector$PalmSweepRecognizer;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GestureDetector;
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

.field mFalseAngleCnt:I

.field mFalseSizeCnt:I

.field mLRSDCnt:I

.field mLRSizeDecreased:Z

.field mMoveXTH:I

.field private mPreSweepDown:Z

.field mScreenHeight:I

.field mScreenWidth:I

.field mSmeanX:F

.field mSmeanXpre:F

.field private mSweepDown:Z

.field mSweepInitDiffx:F

.field mSweepLeftReverseSum:F

.field mSweepRightReverseSum:F

.field mVarXBig:Z

.field private mbPalmSwipeDetected:Z

.field final synthetic this$0:Landroid/view/GestureDetector;


# direct methods
.method private constructor <init>(Landroid/view/GestureDetector;)V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 617
    iput-object p1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 618
    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 619
    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mPreSweepDown:Z

    .line 620
    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 622
    const/16 v0, 0x32

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->PALM_SWEEP_SIZE_TH:I

    .line 623
    const/16 v0, 0x23

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->PALM_SWEEP_PROGRESS_SIZE:I

    .line 624
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    .line 627
    const/4 v0, 0x1

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->SWEEP_RIGHT:I

    .line 628
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->SWEEP_LEFT:I

    .line 631
    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 632
    iput-boolean v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    .line 633
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    .line 634
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    .line 635
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    .line 636
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    .line 637
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 638
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 639
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    .line 640
    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepInitDiffx:F

    .line 641
    new-array v0, v3, [Z

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    .line 642
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    .line 643
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    .line 645
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    .line 646
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    .line 648
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    .line 649
    iput v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenHeight:I

    return-void
.end method

.method static synthetic access$600(Landroid/view/GestureDetector$PalmSweepRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/GestureDetector$PalmSweepRecognizer;

    .prologue
    .line 617
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mPreSweepDown:Z

    return v0
.end method

.method static synthetic access$602(Landroid/view/GestureDetector$PalmSweepRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/GestureDetector$PalmSweepRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 617
    iput-boolean p1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mPreSweepDown:Z

    return p1
.end method

.method static synthetic access$700(Landroid/view/GestureDetector$PalmSweepRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Landroid/view/GestureDetector$PalmSweepRecognizer;

    .prologue
    .line 617
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    return v0
.end method

.method static synthetic access$702(Landroid/view/GestureDetector$PalmSweepRecognizer;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/view/GestureDetector$PalmSweepRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 617
    iput-boolean p1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    return p1
.end method


# virtual methods
.method public CalculateHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 9
    .param p1, "data"    # Landroid/view/GestureDetector$SurfaceTouchSharingData;

    .prologue
    const/16 v8, 0x2d

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 714
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->SetArrMaxTouchMajor(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 719
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-nez v2, :cond_2

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    const/high16 v3, 0x42c80000    # 100.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    cmpl-float v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_2

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v3, 0x42200000    # 40.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-boolean v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-eqz v2, :cond_2

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumEccen:F

    cmpl-float v2, v2, v4

    if-ltz v2, :cond_2

    :cond_1
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    iget-object v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v4, v4, v6

    add-int/lit8 v4, v4, 0x4

    int-to-float v4, v4

    div-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 720
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepInitDiffx:F

    .line 721
    iput-boolean v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 722
    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 723
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface touch Event] Palm swipe start, x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepInitDiffx:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " m:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " TILT_TO_ZOOM_XVAR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    iget-object v5, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x4

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_2
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    const/4 v3, 0x3

    if-lt v2, v3, :cond_4

    .line 727
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v2, :cond_4

    .line 728
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v3, 0x420c0000    # 35.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 729
    iput-boolean v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 730
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    if-gez v2, :cond_3

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    .line 731
    :cond_3
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    .line 736
    :cond_4
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v2, :cond_6

    .line 737
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v3, v4

    add-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 738
    :cond_5
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_6

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 740
    :cond_6
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SvarX:F

    const/high16 v3, 0x43c80000    # 400.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    iput-boolean v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    .line 741
    :cond_7
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v2, :cond_a

    .line 743
    const/4 v1, 0x0

    .line 744
    .local v1, "mMaxSizeTouch":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Nd:[I

    aget v2, v2, v6

    if-ge v0, v2, :cond_9

    .line 746
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v2, v2, v0

    aget v2, v2, v6

    iget-object v3, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Syd:[[I

    aget-object v3, v3, v1

    aget v3, v3, v6

    if-le v2, v3, :cond_8

    .line 747
    move v1, v0

    .line 744
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 749
    :cond_9
    iget-boolean v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v2, :cond_b

    .line 751
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v2, v2, v1

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v2, v8, :cond_a

    .line 752
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    .line 760
    .end local v0    # "i":I
    .end local v1    # "mMaxSizeTouch":I
    :cond_a
    :goto_1
    return-void

    .line 756
    .restart local v0    # "i":I
    .restart local v1    # "mMaxSizeTouch":I
    :cond_b
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v2, v2, v1

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v8, :cond_a

    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->Sad:[[I

    aget-object v2, v2, v1

    aget v2, v2, v6

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-eqz v2, :cond_a

    .line 757
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    goto :goto_1
.end method

.method public GetRangeNum(Landroid/view/GestureDetector$SurfaceTouchSharingData;)I
    .locals 3
    .param p1, "data"    # Landroid/view/GestureDetector$SurfaceTouchSharingData;

    .prologue
    .line 673
    const/4 v0, 0x0

    .line 674
    .local v0, "result":I
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    float-to-int v1, v2

    .line 676
    .local v1, "x":I
    iget-boolean v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mIsRotated:Z

    if-nez v2, :cond_2

    .line 678
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_0

    .line 680
    const/4 v0, 0x0

    .line 710
    :goto_0
    return v0

    .line 682
    :cond_0
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x3

    if-ge v1, v2, :cond_1

    .line 684
    const/4 v0, 0x1

    goto :goto_0

    .line 688
    :cond_1
    const/4 v0, 0x2

    goto :goto_0

    .line 693
    :cond_2
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_3

    .line 695
    const/4 v0, 0x0

    goto :goto_0

    .line 697
    :cond_3
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_4

    .line 699
    const/4 v0, 0x1

    goto :goto_0

    .line 701
    :cond_4
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x4

    if-ge v1, v2, :cond_5

    .line 703
    const/4 v0, 0x2

    goto :goto_0

    .line 707
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public Initialize()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 811
    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    iget-object v4, v4, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 812
    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    iget-object v4, v4, Landroid/view/GestureDetector;->context1:Landroid/content/Context;

    const-string/jumbo v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 813
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 814
    .local v0, "disp":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 815
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 817
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    .line 818
    iget v4, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenHeight:I

    .line 821
    .end local v0    # "disp":Landroid/view/Display;
    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_0
    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    div-int/lit8 v4, v4, 0x2

    iput v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    .line 822
    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenHeight:I

    iget v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    if-le v4, v5, :cond_1

    .line 823
    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenWidth:I

    int-to-float v4, v4

    iput v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    .line 827
    :goto_0
    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 828
    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mPreSweepDown:Z

    .line 829
    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 830
    iput v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    .line 831
    iput v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    .line 832
    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    .line 833
    const/4 v4, -0x1

    iput v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    .line 834
    iput v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    .line 835
    iput v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    .line 836
    iput v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    .line 837
    iput-boolean v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    .line 838
    iput v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepInitDiffx:F

    .line 839
    iput v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    .line 840
    iput v6, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    .line 841
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v4, 0x4

    if-ge v1, v4, :cond_2

    .line 843
    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aput-boolean v6, v4, v1

    .line 844
    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aput v6, v4, v1

    .line 845
    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aput v6, v4, v1

    .line 841
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 825
    .end local v1    # "i":I
    :cond_1
    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mScreenHeight:I

    int-to-float v4, v4

    iput v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->TILT_TO_ZOOM_XVAR:F

    goto :goto_0

    .line 847
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public Process(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 2
    .param p1, "data"    # Landroid/view/GestureDetector$SurfaceTouchSharingData;

    .prologue
    .line 802
    iget v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanXpre:F

    .line 803
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    iput v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSmeanX:F

    .line 804
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->CalculateHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 805
    iget v0, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mAction:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    if-nez v0, :cond_0

    .line 806
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->RocognizeHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V

    .line 808
    :cond_0
    return-void
.end method

.method public RocognizeHorizontalSweepData(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 9
    .param p1, "data"    # Landroid/view/GestureDetector$SurfaceTouchSharingData;

    .prologue
    const/high16 v4, 0x43960000    # 300.0f

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 763
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSizeDecreased:Z

    if-ne v2, v5, :cond_0

    .line 764
    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mTouchCnt:I

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mLRSDCnt:I

    sub-int/2addr v2, v3

    const/16 v3, 0xa

    if-le v2, v3, :cond_0

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseSizeCnt:I

    const/16 v3, 0xc

    if-le v2, v3, :cond_0

    .line 765
    iput-boolean v7, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    .line 768
    :cond_0
    const/4 v1, 0x0

    .line 769
    .local v1, "validMajorCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    .line 771
    iget-object v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v5, :cond_1

    .line 773
    add-int/lit8 v1, v1, 0x1

    .line 769
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 776
    :cond_2
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->this$0:Landroid/view/GestureDetector;

    iget-object v2, v2, Landroid/view/GestureDetector;->mPalmTouchRecognizer:Landroid/view/GestureDetector$PalmTouchRecognizer;

    # getter for: Landroid/view/GestureDetector$PalmTouchRecognizer;->mPalmDown:Z
    invoke-static {v2}, Landroid/view/GestureDetector$PalmTouchRecognizer;->access$800(Landroid/view/GestureDetector$PalmTouchRecognizer;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 777
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepInitDiffx:F

    iget v3, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SmeanX:F

    sub-float/2addr v2, v3

    iput v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    .line 778
    iget-boolean v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

    if-nez v2, :cond_8

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mMoveXTH:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_8

    if-lt v1, v6, :cond_8

    .line 779
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_5

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_5

    .line 780
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - RIGHT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    if-eqz v2, :cond_3

    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    invoke-interface {v2, v5}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    .line 782
    :cond_3
    iput-boolean v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    .line 799
    :cond_4
    :goto_1
    return-void

    .line 783
    :cond_5
    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    cmpg-float v2, v2, v4

    if-gtz v2, :cond_7

    iget v2, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    const/16 v3, 0x8

    if-gt v2, v3, :cond_7

    .line 784
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe - LEFT, max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    if-eqz v2, :cond_6

    iget-object v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mShapeListener:Landroid/view/GestureDetector$OnShapeGestureListener;

    invoke-interface {v2, v6}, Landroid/view/GestureDetector$OnShapeGestureListener;->onSweepDown(I)Z

    .line 786
    :cond_6
    iput-boolean v5, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mbPalmSwipeDetected:Z

    goto :goto_1

    .line 789
    :cond_7
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe Fail 1 - mSweepRightReverseSum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepRightReverseSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mSweepLeftReverseSum:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepLeftReverseSum:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mFalseAngleCnt:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mFalseAngleCnt:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 795
    :cond_8
    const-string v2, "GestureDetector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Surface Touch Event] Palm Swipe Fail 2 - max s:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->mMaxSize:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s1:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s2:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s3:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " s4:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    aget v4, v4, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dist:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mDiffx:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mVarXBig:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mVarXBig:Z

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

.method public SetArrMaxTouchMajor(Landroid/view/GestureDetector$SurfaceTouchSharingData;)V
    .locals 3
    .param p1, "data"    # Landroid/view/GestureDetector$SurfaceTouchSharingData;

    .prologue
    .line 657
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector$PalmSweepRecognizer;->GetRangeNum(Landroid/view/GestureDetector$SurfaceTouchSharingData;)I

    move-result v0

    .line 658
    .local v0, "range":I
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    aget v1, v1, v0

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    if-ge v1, v2, :cond_0

    .line 660
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrMaxTouchMajor:[I

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumMajor:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 662
    :cond_0
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_1

    .line 664
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrIsValidWithTouchMajor:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    .line 665
    iget-object v1, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mArrSumSize:[I

    iget v2, p1, Landroid/view/GestureDetector$SurfaceTouchSharingData;->SsumSize:F

    float-to-int v2, v2

    aput v2, v1, v0

    .line 667
    :cond_1
    return-void
.end method

.method public getSweepDown()Z
    .locals 1

    .prologue
    .line 652
    iget-boolean v0, p0, Landroid/view/GestureDetector$PalmSweepRecognizer;->mSweepDown:Z

    return v0
.end method
