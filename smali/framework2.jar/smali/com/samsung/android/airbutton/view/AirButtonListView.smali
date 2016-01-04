.class public Lcom/samsung/android/airbutton/view/AirButtonListView;
.super Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;
.source "AirButtonListView.java"


# instance fields
.field private final FLICKERING_ANIMATION_MULTIPLY:F

.field private final FLICKERING_THRESHOLD:I

.field private final MOVE_DIRECTION_DECREASE:I

.field private final MOVE_DIRECTION_INCREASE:I

.field private final VELOCITY_TO_DISTANCE_MULTIPLY:I

.field protected mAdjustedTouchDownPosition:F

.field protected mCurrentMovedDistance:F

.field private mFlickAnimator:Landroid/animation/ObjectAnimator;

.field private mFlickListener:Landroid/animation/Animator$AnimatorListener;

.field mHandler:Landroid/os/Handler;

.field mHoverEnableRunnable:Ljava/lang/Runnable;

.field protected mIsCanMoving:Z

.field protected mMaxDisplayableShapeCnt:I

.field protected mMaxDistanceCanMove:F

.field protected mMaxDistanceForAllShapes:F

.field protected mMaxDistanceOnScreen:F

.field protected mMoveDirection:I

.field protected mTotalMovedDistance:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field protected mWindowHeight:I

.field protected mWindowWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;
    .param p3, "attrs"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    .line 38
    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->MOVE_DIRECTION_DECREASE:I

    .line 39
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->MOVE_DIRECTION_INCREASE:I

    .line 40
    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    .line 41
    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    .line 42
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceOnScreen:F

    .line 43
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceForAllShapes:F

    .line 44
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    .line 46
    iput-boolean v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    .line 47
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    .line 48
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    .line 49
    iput v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    .line 56
    const/16 v2, 0xc8

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->VELOCITY_TO_DISTANCE_MULTIPLY:I

    .line 57
    const/16 v2, 0x32

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->FLICKERING_THRESHOLD:I

    .line 58
    const/high16 v2, 0x3fc00000    # 1.5f

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->FLICKERING_ANIMATION_MULTIPLY:F

    .line 59
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 60
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    .line 61
    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowWidth:I

    .line 62
    iput v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    .line 478
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    .line 479
    new-instance v2, Lcom/samsung/android/airbutton/view/AirButtonListView$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/airbutton/view/AirButtonListView$1;-><init>(Lcom/samsung/android/airbutton/view/AirButtonListView;)V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    .line 692
    new-instance v2, Lcom/samsung/android/airbutton/view/AirButtonListView$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/airbutton/view/AirButtonListView$2;-><init>(Lcom/samsung/android/airbutton/view/AirButtonListView;)V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickListener:Landroid/animation/Animator$AnimatorListener;

    .line 73
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v2, v6, :cond_1

    .line 74
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v4, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    .line 83
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    packed-switch v2, :pswitch_data_0

    .line 94
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v2, v2, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-eqz v2, :cond_5

    .line 95
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    if-gt v2, v3, :cond_4

    .line 96
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    .line 97
    iput v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    .line 98
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean v5, v2, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 108
    :goto_2
    new-instance v2, Landroid/animation/ObjectAnimator;

    invoke-direct {v2}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    .line 109
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    const-string/jumbo v3, "totalFlickDistance"

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    .line 111
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 112
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 114
    const-string/jumbo v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 115
    .local v1, "wM":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 116
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 118
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowWidth:I

    .line 119
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    .line 120
    return-void

    .line 75
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v1    # "wM":Landroid/view/WindowManager;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v6, :cond_2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v2, v4, :cond_2

    .line 76
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v6, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v7, :cond_3

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 78
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v7, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto/16 :goto_0

    .line 79
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v2, v7, :cond_0

    .line 80
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x4

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto/16 :goto_0

    .line 86
    :pswitch_0
    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    goto/16 :goto_1

    .line 90
    :pswitch_1
    const/4 v2, -0x1

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    goto/16 :goto_1

    .line 100
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    .line 101
    iput v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    goto/16 :goto_2

    .line 104
    :cond_5
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    goto/16 :goto_2

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private adjustAllViewPosition()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 430
    .local v0, "adjustDistance":I
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 431
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAllViewPosition(II)V

    .line 434
    :goto_0
    return-void

    .line 433
    :cond_1
    invoke-virtual {p0, v3, v0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAllViewPosition(II)V

    goto :goto_0
.end method

.method private adjustAlpha()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const-wide v6, 0x3e7ad7f29abcaf48L    # 1.0E-7

    .line 447
    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    iget v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 448
    .local v3, "startPos":F
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    add-float v1, v3, v4

    .line 450
    .local v1, "endPos":F
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    .local v2, "idx":I
    :goto_0
    iget v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-gt v2, v4, :cond_3

    .line 451
    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v0, v4, v3

    .line 452
    .local v0, "alpha":F
    cmpl-float v4, v0, v8

    if-eqz v4, :cond_0

    .line 453
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 455
    :cond_0
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-lez v4, :cond_1

    .line 456
    const/high16 v0, 0x3f800000    # 1.0f

    .line 458
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_2

    .line 459
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 450
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    .end local v0    # "alpha":F
    :cond_3
    iget v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-ge v4, v5, :cond_5

    .line 463
    iget v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    sub-float v0, v1, v4

    .line 464
    .restart local v0    # "alpha":F
    cmpl-float v4, v0, v8

    if-eqz v4, :cond_4

    .line 465
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    int-to-float v4, v4

    div-float/2addr v0, v4

    .line 467
    :cond_4
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/view/View;->getAlpha()F

    move-result v4

    sub-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_5

    .line 468
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 470
    .end local v0    # "alpha":F
    :cond_5
    return-void
.end method

.method private getTouchDownPosition()F
    .locals 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 621
    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    int-to-float v0, v0

    .line 623
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getTouchMovePosition(Landroid/view/MotionEvent;)F
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 634
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 635
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 637
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getTouchUpPosition()F
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 628
    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpX:I

    int-to-float v0, v0

    .line 630
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpY:I

    int-to-float v0, v0

    goto :goto_0
.end method

.method private handleMove(F)V
    .locals 6
    .param p1, "movePosition"    # F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 584
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDisplayableShapeCnt:I

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    if-eq v2, v3, :cond_0

    .line 617
    :goto_0
    return-void

    .line 587
    :cond_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    sub-float v2, p1, v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    .line 588
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    add-float v1, v2, v3

    .line 590
    .local v1, "currentTotalMovingDistance":F
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    cmpg-float v2, v2, v4

    if-gez v2, :cond_3

    .line 591
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    .line 592
    float-to-int v2, p1

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    .line 594
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 595
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    .line 609
    :cond_1
    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 610
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    int-to-float v2, v2

    div-float v2, v1, v2

    float-to-int v0, v2

    .line 612
    .local v0, "currentStartViewIdx":I
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    if-eq v0, v2, :cond_2

    .line 613
    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setStartViewIdx(I)V

    .line 615
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAlpha()V

    .line 616
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAllViewPosition()V

    goto :goto_0

    .line 596
    .end local v0    # "currentStartViewIdx":I
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 597
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMoveDirection:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    .line 598
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    neg-float v2, v2

    add-float v1, v2, v5

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    .line 602
    :goto_2
    iput v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    .line 603
    float-to-int v2, p1

    int-to-float v2, v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    .line 605
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    goto :goto_1

    .line 600
    :cond_4
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    sub-float v1, v2, v5

    iput v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    goto :goto_2
.end method

.method private setTouchDownPosition(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 641
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 642
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    .line 645
    :goto_0
    return-void

    .line 644
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    goto :goto_0
.end method

.method private startFlickering(FF)Z
    .locals 9
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 726
    const/4 v2, 0x0

    .line 727
    .local v2, "velocity":F
    const/4 v1, 0x0

    .line 728
    .local v1, "flickDistance":F
    const/4 v0, 0x0

    .line 730
    .local v0, "duration":I
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 731
    :cond_0
    move v2, p1

    .line 735
    :goto_0
    const/high16 v5, 0x43480000    # 200.0f

    mul-float v1, v2, v5

    .line 737
    cmpl-float v5, v1, v8

    if-eqz v5, :cond_1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x42480000    # 50.0f

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->density:F

    mul-float/2addr v6, v7

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    :cond_1
    move v3, v4

    .line 748
    :goto_1
    return v3

    .line 733
    :cond_2
    move v2, p2

    goto :goto_0

    .line 740
    :cond_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3fc00000    # 1.5f

    mul-float/2addr v5, v6

    float-to-int v0, v5

    .line 742
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 743
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 744
    :cond_4
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 745
    iget-object v5, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    const/4 v6, 0x2

    new-array v6, v6, [F

    aput v8, v6, v4

    aput v1, v6, v3

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    .line 746
    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1
.end method


# virtual methods
.method protected adjustAllViewPosition(II)V
    .locals 5
    .param p1, "moveX"    # I
    .param p2, "moveY"    # I

    .prologue
    .line 437
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-lt v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v0, v2, -0x1

    .line 440
    .local v0, "endViewIdx":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    .local v1, "viewIdx":I
    :goto_1
    if-gt v1, v0, :cond_1

    .line 441
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v3, p1

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setX(F)V

    .line 442
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    add-int/2addr v3, p2

    iget-object v4, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setY(F)V

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 437
    .end local v0    # "endViewIdx":I
    .end local v1    # "viewIdx":I
    :cond_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int v0, v2, v3

    goto :goto_0

    .line 444
    .restart local v0    # "endViewIdx":I
    .restart local v1    # "viewIdx":I
    :cond_1
    return-void
.end method

.method protected adjustMenuItemXPosition()V
    .locals 10

    .prologue
    const/4 v9, -0x1

    .line 274
    const/4 v4, 0x0

    .line 275
    .local v4, "totalWidgetWidth":I
    const/4 v1, -0x1

    .line 277
    .local v1, "outOfXBoundaryItemCnt":I
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    if-eq v6, v9, :cond_4

    .line 278
    const/4 v0, -0x1

    .line 280
    .local v0, "outOfXBoundary":I
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v7}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v7

    mul-int v4, v6, v7

    .line 281
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->x:I

    add-int/2addr v6, v4

    iget v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowWidth:I

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v0, v6, v7

    .line 283
    if-gez v0, :cond_1

    .line 332
    .end local v0    # "outOfXBoundary":I
    :cond_0
    :goto_0
    return-void

    .line 286
    .restart local v0    # "outOfXBoundary":I
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int v1, v0, v6

    .line 287
    add-int/lit8 v1, v1, 0x1

    .line 289
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v6}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v6

    if-lt v1, v6, :cond_2

    .line 290
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAdapter:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    invoke-virtual {v6}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;->getCount()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    .line 292
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v1, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 293
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v8, v8, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v9, v9, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v8, v9

    sub-int/2addr v7, v8

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 294
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 328
    .end local v0    # "outOfXBoundary":I
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_9

    .line 329
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v6, v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10800ce

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 296
    :cond_4
    const/4 v2, -0x1

    .line 297
    .local v2, "outOfxBoundaryItemIdx":I
    const/4 v3, 0x0

    .line 299
    .local v3, "outOfxBoundaryTotalWidth":I
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->x:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v4, v6, v7

    .line 300
    const/4 v5, 0x0

    .local v5, "viewIdx":I
    :goto_2
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_5

    .line 301
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->density:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    .line 302
    iget v6, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowWidth:I

    if-lt v4, v6, :cond_7

    .line 303
    move v2, v5

    .line 308
    :cond_5
    if-eq v2, v9, :cond_3

    .line 309
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v2

    add-int/lit8 v1, v6, 0x1

    .line 310
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v6, v6, -0x1

    if-le v1, v6, :cond_6

    .line 311
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v1, v6, -0x1

    .line 313
    :cond_6
    move v5, v2

    :goto_3
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v6, v6, -0x1

    if-gt v5, v6, :cond_8

    .line 314
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->density:F

    float-to-int v7, v7

    add-int/2addr v6, v7

    add-int/2addr v3, v6

    .line 313
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 300
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 317
    :cond_8
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v1, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 318
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    sub-int/2addr v7, v3

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 321
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    if-ge v6, v7, :cond_3

    .line 322
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    aget-object v7, v7, v8

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0xa

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 323
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iput v7, v6, Lcom/samsung/android/airbutton/Attributes;->x:I

    goto/16 :goto_1

    .line 330
    .end local v2    # "outOfxBoundaryItemIdx":I
    .end local v3    # "outOfxBoundaryTotalWidth":I
    .end local v5    # "viewIdx":I
    :cond_9
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 331
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    aget-object v6, v6, v7

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10800d0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method protected adjustViewDelta(I)V
    .locals 8
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 335
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 336
    const-string v0, "AirButtonListView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustViewDelta: viewIdx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :goto_0
    return-void

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-eq v0, v3, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v6, :cond_e

    .line 344
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v5, :cond_4

    .line 345
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, p1

    .line 360
    :cond_2
    :goto_1
    if-nez p1, :cond_a

    .line 361
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v3, :cond_8

    .line 362
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, p1

    .line 422
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 424
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->adjustViewDelta(I)V

    goto :goto_0

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5

    .line 347
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aput v4, v0, p1

    goto :goto_1

    .line 349
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    .line 351
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v0, v1

    if-gez v0, :cond_7

    .line 352
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    sub-int/2addr v0, v2

    if-lez v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    sub-int/2addr v0, v2

    :goto_3
    aput v0, v1, p1

    goto :goto_1

    :cond_6
    const/16 v0, 0xa

    goto :goto_3

    .line 353
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    if-le v0, v1, :cond_2

    .line 354
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    sub-int/2addr v1, v2

    aput v1, v0, p1

    .line 355
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 356
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    const/16 v1, 0xa

    aput v1, v0, p1

    goto/16 :goto_1

    .line 363
    :cond_8
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v6, :cond_9

    .line 364
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aput v4, v0, p1

    goto/16 :goto_2

    .line 366
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    .line 367
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->y:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_3

    .line 368
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 371
    :cond_a
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    if-ne v0, v7, :cond_c

    .line 372
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v3, :cond_b

    .line 373
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 375
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 377
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v3, :cond_d

    .line 378
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 380
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    add-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 387
    :cond_e
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v3, :cond_10

    .line 388
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, p1

    .line 397
    :cond_f
    :goto_4
    if-nez p1, :cond_14

    .line 398
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v5, :cond_12

    .line 399
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    aput v1, v0, p1

    goto/16 :goto_2

    .line 389
    :cond_10
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v6, :cond_11

    .line 390
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aput v4, v0, p1

    goto :goto_4

    .line 392
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    .line 393
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->y:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mWindowHeight:I

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_f

    .line 394
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto :goto_4

    .line 400
    :cond_12
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    .line 401
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aput v4, v0, p1

    goto/16 :goto_2

    .line 403
    :cond_13
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, p1

    .line 404
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    add-int/2addr v0, v1

    if-gez v0, :cond_3

    .line 405
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    rsub-int/lit8 v1, v1, 0xa

    aput v1, v0, p1

    goto/16 :goto_2

    .line 408
    :cond_14
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    if-ne v0, v7, :cond_16

    .line 409
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v5, :cond_15

    .line 410
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->density:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 412
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->density:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 414
    :cond_16
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    if-ne v0, v5, :cond_17

    .line 415
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    sub-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2

    .line 417
    :cond_17
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    add-int/lit8 v2, p1, -0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    add-int/2addr v1, v2

    aput v1, v0, p1

    goto/16 :goto_2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 488
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 490
    .local v0, "bResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 493
    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->finish(ZZ)V

    .line 496
    :cond_0
    return v0
.end method

.method protected generateAndPlayFinishAnimation()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playCloseSound()V

    .line 171
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 172
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->cancel()V

    .line 174
    :cond_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    .line 176
    .local v1, "animationBaseItemIdx":I
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v7, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    if-eqz v7, :cond_1

    .line 177
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v7, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 179
    :cond_1
    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-lt v7, v8, :cond_3

    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v3, v7, -0x1

    .line 181
    .local v3, "endViewIdx":I
    :goto_0
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    .local v6, "viewIdx":I
    :goto_1
    if-gt v6, v3, :cond_5

    .line 183
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v7, v7, v6

    const-string/jumbo v8, "x"

    new-array v9, v13, [F

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v10

    aput v10, v9, v11

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getX()F

    move-result v10

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 190
    .local v4, "moveAnimationX":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v7, v7, v6

    const-string/jumbo v8, "y"

    new-array v9, v13, [F

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v10

    aput v10, v9, v11

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v1

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v10

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 197
    .local v5, "moveAnimationY":Landroid/animation/ObjectAnimator;
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v7, v7, v6

    const-string v8, "alpha"

    new-array v9, v13, [F

    iget-object v10, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v10, v10, v6

    invoke-virtual {v10}, Landroid/view/View;->getAlpha()F

    move-result v10

    aput v10, v9, v11

    const/4 v10, 0x0

    aput v10, v9, v12

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 204
    .local v0, "alphaAnimation":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 205
    .local v2, "animators":Landroid/animation/AnimatorSet;
    const-wide/16 v7, 0x140

    invoke-virtual {v2, v7, v8}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 207
    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v7, v8

    if-ne v6, v7, :cond_2

    .line 208
    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 210
    :cond_2
    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mSelectedViewIdx:I

    if-ne v6, v7, :cond_4

    .line 211
    new-array v7, v12, [Landroid/animation/Animator;

    aput-object v0, v7, v11

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 215
    :goto_2
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 181
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 179
    .end local v0    # "alphaAnimation":Landroid/animation/ObjectAnimator;
    .end local v2    # "animators":Landroid/animation/AnimatorSet;
    .end local v3    # "endViewIdx":I
    .end local v4    # "moveAnimationX":Landroid/animation/ObjectAnimator;
    .end local v5    # "moveAnimationY":Landroid/animation/ObjectAnimator;
    .end local v6    # "viewIdx":I
    :cond_3
    iget v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v8, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int v3, v7, v8

    goto/16 :goto_0

    .line 213
    .restart local v0    # "alphaAnimation":Landroid/animation/ObjectAnimator;
    .restart local v2    # "animators":Landroid/animation/AnimatorSet;
    .restart local v3    # "endViewIdx":I
    .restart local v4    # "moveAnimationX":Landroid/animation/ObjectAnimator;
    .restart local v5    # "moveAnimationY":Landroid/animation/ObjectAnimator;
    .restart local v6    # "viewIdx":I
    :cond_4
    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v4, v7, v11

    aput-object v5, v7, v12

    aput-object v0, v7, v13

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_2

    .line 217
    .end local v0    # "alphaAnimation":Landroid/animation/ObjectAnimator;
    .end local v2    # "animators":Landroid/animation/AnimatorSet;
    .end local v4    # "moveAnimationX":Landroid/animation/ObjectAnimator;
    .end local v5    # "moveAnimationY":Landroid/animation/ObjectAnimator;
    :cond_5
    return-void
.end method

.method protected generateAndPlayStartAnimation()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    .line 129
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->playOpenSound()V

    .line 131
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v6, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 133
    .local v1, "animationBaseItemIdx":I
    const/4 v5, 0x0

    .local v5, "viewIdx":I
    :goto_0
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-gt v5, v6, :cond_1

    .line 135
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    const-string/jumbo v7, "x"

    new-array v8, v10, [F

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    aput v9, v8, v11

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getX()F

    move-result v9

    aput v9, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 142
    .local v3, "moveAnimationX":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    const-string/jumbo v7, "y"

    new-array v8, v10, [F

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v9, v9, v1

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    aput v9, v8, v11

    iget-object v9, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Landroid/view/View;->getY()F

    move-result v9

    aput v9, v8, v12

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 149
    .local v4, "moveAnimationY":Landroid/animation/ObjectAnimator;
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v5

    const-string v7, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 156
    .local v0, "alphaAnimation":Landroid/animation/ObjectAnimator;
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 157
    .local v2, "animators":Landroid/animation/AnimatorSet;
    const-wide/16 v6, 0x140

    invoke-virtual {v2, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 159
    iget v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-ne v5, v6, :cond_0

    .line 160
    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 162
    :cond_0
    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v3, v6, v11

    aput-object v4, v6, v12

    aput-object v0, v6, v10

    invoke-virtual {v2, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 163
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 133
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 165
    .end local v0    # "alphaAnimation":Landroid/animation/ObjectAnimator;
    .end local v2    # "animators":Landroid/animation/AnimatorSet;
    .end local v3    # "moveAnimationX":Landroid/animation/ObjectAnimator;
    .end local v4    # "moveAnimationY":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void

    .line 149
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected generateAndPlayYPositionAdjustAnimation()V
    .locals 8

    .prologue
    .line 221
    const/4 v1, 0x0

    .local v1, "viewIdx":I
    :goto_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-gt v1, v2, :cond_1

    .line 223
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v2, v2, v1

    const-string/jumbo v3, "y"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getY()F

    move-result v6

    aput v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    iget-object v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aget v7, v7, v1

    add-int/2addr v6, v7

    int-to-float v6, v6

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 230
    .local v0, "moveAnimationY":Landroid/animation/ObjectAnimator;
    mul-int/lit8 v2, v1, 0x28

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 231
    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 233
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    if-ne v1, v2, :cond_0

    .line 234
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->mStartAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 236
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v0    # "moveAnimationY":Landroid/animation/ObjectAnimator;
    :cond_1
    return-void
.end method

.method protected initAllViewDelta()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 258
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustMenuItemXPosition()V

    .line 261
    :cond_0
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    if-lt v2, v3, :cond_1

    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    add-int/lit8 v0, v2, -0x1

    .line 263
    .local v0, "endViewIdx":I
    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mStartViewIdx:I

    .local v1, "viewIdx":I
    :goto_1
    if-gt v1, v0, :cond_3

    .line 264
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseX:[I

    aget v2, v2, v1

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewBaseY:[I

    aget v2, v2, v1

    if-eq v2, v4, :cond_2

    .line 263
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 261
    .end local v0    # "endViewIdx":I
    .end local v1    # "viewIdx":I
    :cond_1
    iget v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    iget v3, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mDisplayAdditionalViewCnt:I

    add-int v0, v2, v3

    goto :goto_0

    .line 267
    .restart local v0    # "endViewIdx":I
    .restart local v1    # "viewIdx":I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustViewDelta(I)V

    goto :goto_2

    .line 270
    :cond_3
    const/4 v2, 0x0

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    iget v4, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonListView;->adjustAllViewPosition(II)V

    .line 271
    return-void
.end method

.method protected onTouchDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-nez v0, :cond_0

    .line 515
    :goto_0
    return-void

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mFlickAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 508
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getTouchDownPosition()F

    move-result v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    .line 509
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceForAllShapes:F

    .line 510
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceOnScreen:F

    .line 511
    iget v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceForAllShapes:F

    iget v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceOnScreen:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mMaxDistanceCanMove:F

    .line 513
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 514
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsHoverEventEnabled:Z

    goto :goto_0
.end method

.method protected onTouchMove(Landroid/view/MotionEvent;)V
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 547
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-nez v0, :cond_1

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    if-nez v0, :cond_2

    .line 551
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-double v1, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-double v3, v0

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownX:I

    int-to-double v5, v0

    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchDownY:I

    int-to-double v7, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->getDistance(DDDD)D

    move-result-wide v0

    double-to-int v9, v0

    .line 553
    .local v9, "mMoveDistance":I
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    if-nez v0, :cond_0

    sget v0, Lcom/samsung/android/airbutton/view/AirButtonListView;->TOUCH_PRESS_DISTANCE_LIMIT_PIXEL:I

    div-int/lit8 v0, v0, 0x2

    if-le v9, v0, :cond_0

    .line 554
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    .line 555
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->setTouchDownPosition(Landroid/view/MotionEvent;)V

    .line 561
    .end local v9    # "mMoveDistance":I
    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getTouchMovePosition(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->handleMove(F)V

    .line 564
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    .line 565
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 567
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method protected onTouchUp(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 518
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v2, v2, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-nez v2, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 521
    :cond_1
    iget v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    iget v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    add-float/2addr v2, v3

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mTotalMovedDistance:F

    .line 522
    const/4 v2, 0x0

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mCurrentMovedDistance:F

    .line 523
    invoke-direct {p0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->getTouchUpPosition()F

    move-result v2

    iput v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mAdjustedTouchDownPosition:F

    .line 525
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 526
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mHoverEnableRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 528
    iput-boolean v7, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mIsCanMoving:Z

    .line 531
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_0

    .line 532
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 533
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 534
    .local v0, "velocityX":F
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v1

    .line 536
    .local v1, "velocityY":F
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/airbutton/view/AirButtonListView;->startFlickering(FF)Z

    move-result v2

    if-ne v2, v6, :cond_2

    .line 537
    iput-boolean v7, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mIsTouchPressEnabled:Z

    .line 538
    iput-boolean v6, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->misFlickering:Z

    .line 541
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 542
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/samsung/android/airbutton/view/AirButtonListView;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0
.end method

.method public requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 575
    const/4 v0, 0x1

    return v0
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .param p1, "eventType"    # I

    .prologue
    .line 581
    return-void
.end method

.method protected setEndViewIdx()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    if-eqz v0, :cond_0

    .line 247
    invoke-super {p0}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setEndViewIdx()V

    .line 250
    :goto_0
    return-void

    .line 249
    :cond_0
    iget v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTotalViewCnt:I

    iput v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mEndViewIdx:I

    goto :goto_0
.end method

.method public setTotalFlickDistance(F)V
    .locals 3
    .param p1, "totalFlickDistance"    # F

    .prologue
    .line 712
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v1, :cond_0

    .line 723
    :goto_0
    return-void

    .line 715
    :cond_0
    const/4 v0, 0x0

    .line 717
    .local v0, "currentMovePosition":F
    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, v1, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 718
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpX:I

    int-to-float v1, v1

    add-float v0, v1, p1

    .line 722
    :goto_1
    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/view/AirButtonListView;->handleMove(F)V

    goto :goto_0

    .line 720
    :cond_2
    iget v1, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mTouchUpY:I

    int-to-float v1, v1

    add-float v0, v1, p1

    goto :goto_1
.end method

.method protected showHoverEnterAnimation(I)V
    .locals 3
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v1, 0x1

    .line 649
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    if-ne v0, v1, :cond_4

    .line 650
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    if-ne p1, v0, :cond_2

    .line 651
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800cf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 654
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 656
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v1, :cond_3

    .line 657
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 659
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 662
    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->showHoverEnterAnimation(I)V

    goto :goto_0
.end method

.method protected showHoverExitAnimation(I)V
    .locals 3
    .param p1, "viewIdx"    # I

    .prologue
    const/4 v1, 0x1

    .line 669
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    if-ne v0, v1, :cond_4

    .line 670
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    if-ne p1, v0, :cond_2

    .line 671
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v1, :cond_1

    .line 672
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 674
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 676
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v0, v1, :cond_3

    .line 677
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 679
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->mViewList:[Landroid/view/View;

    aget-object v0, v0, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10800d4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 682
    :cond_4
    invoke-super {p0, p1}, Lcom/samsung/android/airbutton/view/AbsAirButtonAnimateView;->showHoverExitAnimation(I)V

    goto :goto_0
.end method
