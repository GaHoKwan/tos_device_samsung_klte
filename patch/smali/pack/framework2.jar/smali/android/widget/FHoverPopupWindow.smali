.class public Landroid/widget/FHoverPopupWindow;
.super Landroid/widget/HoverPopupWindow;
.source "FHoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/FHoverPopupWindow$FHPopupContainer;,
        Landroid/widget/FHoverPopupWindow$QuintEaseOut;
    }
.end annotation


# static fields
.field private static final MSG_TIMEOUT:I = 0x1

.field static final TAG:Ljava/lang/String; = "FHoverPopupWindow"

.field private static final TIMEOUT_DELAY:I = 0x1f4


# instance fields
.field protected DEBUG:Z

.field private H:F

.field private MOVE_CENTER:I

.field private MOVE_LEFT:I

.field private MOVE_LEFT_TO_CENTER:I

.field private MOVE_RIGHT:I

.field private MOVE_RIGHT_TO_CENTER:I

.field private final SHOW_ANIMATION_DURATION:I

.field private TW:F

.field private W:F

.field private mCenterPoint:Landroid/graphics/PointF;

.field private mContainerLeftOnWindow:I

.field private mDirection:I

.field protected mDismissHandler:Landroid/os/Handler;

.field private mDisplayFrameLeft:I

.field private mDisplayFrameRight:I

.field private mDisplayWidthToComputeAniWidth:I

.field protected mHandler:Landroid/os/Handler;

.field private mLeftPoint:Landroid/graphics/PointF;

.field private mPickerPadding:F

.field private mPickerXoffset:I

.field private mReferncedAnchorRect:Landroid/graphics/Rect;

.field private mRightPoint:Landroid/graphics/PointF;

.field private objAnimationValue:F

.field private objAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    iput-boolean v1, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->W:F

    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->H:F

    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->TW:F

    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    const/high16 v0, 0x42580000    # 54.0f

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->mPickerPadding:F

    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->SHOW_ANIMATION_DURATION:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_CENTER:I

    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_CENTER:I

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->mDirection:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameLeft:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameRight:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I

    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I

    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/FHoverPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/FHoverPopupWindow$1;-><init>(Landroid/widget/FHoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/FHoverPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/FHoverPopupWindow$2;-><init>(Landroid/widget/FHoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDirection:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameRight:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/FHoverPopupWindow;I)I
    .locals 0

    iput p1, p0, Landroid/widget/FHoverPopupWindow;->mDirection:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/FHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->TW:F

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/FHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->H:F

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/FHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->W:F

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/FHoverPopupWindow;F)F
    .locals 0

    iput p1, p0, Landroid/widget/FHoverPopupWindow;->W:F

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    iput-object p1, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/widget/FHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mPickerPadding:F

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/FHoverPopupWindow;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FHoverPopupWindow;->setAnimator(II)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/FHoverPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/FHoverPopupWindow;)F
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimationValue:F

    return v0
.end method

.method static synthetic access$802(Landroid/widget/FHoverPopupWindow;F)F
    .locals 0

    iput p1, p0, Landroid/widget/FHoverPopupWindow;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$900(Landroid/widget/FHoverPopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameLeft:I

    return v0
.end method

.method private resetTimeout()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-boolean v0, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "FHoverPopupWindow"

    const-string/jumbo v1, "resetTimeout: Call sendMessageDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method private setAnimator(II)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I

    if-ne p2, v0, :cond_1

    :cond_0
    new-array v0, v1, [F

    aput v2, v0, v3

    int-to-float v1, p1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    :goto_0
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/FHoverPopupWindow$QuintEaseOut;

    invoke-direct {v1}, Landroid/widget/FHoverPopupWindow$QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/FHoverPopupWindow$3;

    invoke-direct {v1, p0}, Landroid/widget/FHoverPopupWindow$3;-><init>(Landroid/widget/FHoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void

    :cond_1
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    if-ne p2, v0, :cond_3

    :cond_2
    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    :cond_3
    new-array v0, v1, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public computePopupPosition(Landroid/view/View;III)V
    .locals 46

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/FHoverPopupWindow;->mAnchorView:Landroid/view/View;

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow;->mPopupGravity:I

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow;->mPopupOffsetX:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow;->mPopupOffsetY:I

    if-eqz p1, :cond_17

    move-object/from16 v14, p1

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    const/4 v13, 0x0

    const/4 v4, 0x2

    new-array v12, v4, [I

    const/4 v4, 0x2

    new-array v11, v4, [I

    invoke-virtual {v14, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v14, v11}, Landroid/view/View;->getLocationInWindow([I)V

    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v37

    const/16 v31, 0x0

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getWidth()I

    move-result v39

    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getHeight()I

    move-result v38

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, v39

    if-ne v0, v4, :cond_2

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, v38

    if-ne v0, v4, :cond_2

    const/16 v31, 0x1

    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_18

    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x0

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mWindowGapX:I

    const/4 v4, 0x1

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mWindowGapY:I

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mCoordinatesOfAnchorView:I

    new-instance v13, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v11, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    const/4 v6, 0x0

    aget v6, v11, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    aget v9, v11, v9

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v13, v4, v5, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    :cond_3
    :goto_2
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_5

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v43

    move-object/from16 v0, v43

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_5

    move-object/from16 v45, v43

    check-cast v45, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v45

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v0, v45

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_19

    const/16 v32, 0x1

    :goto_3
    const/16 v42, 0x0

    move-object/from16 v0, v45

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    if-eqz v32, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v42

    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move/from16 v0, v42

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameLeft:I

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameRight:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_6

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: mDisplayWidthToComputeAniWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: mDisplayFrameLeft = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameLeft:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: mDisplayFrameRight = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameRight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v4, :cond_1a

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mNeedToMeasureContentView:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/widget/FHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v13, Landroid/graphics/Rect;->left:I

    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v9, v13, Landroid/graphics/Rect;->right:I

    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow;->mPopupPosX:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/FHoverPopupWindow;->mPopupPosY:I

    move/from16 v35, v0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_7

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: posY = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: displayFrame.top = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow: anchorRect.bottom = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v13, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1d

    add-int v4, v35, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_8

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v35

    if-ge v0, v4, :cond_8

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int v4, v4, v35

    iget v5, v13, Landroid/graphics/Rect;->bottom:I

    if-lt v4, v5, :cond_9

    :cond_8
    const/4 v15, 0x1

    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_31

    :cond_a
    if-eqz v15, :cond_31

    const/16 v30, 0x1

    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/widget/FHoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v33

    const/16 v16, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1f

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v33

    move/from16 v0, v34

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v4, v34, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v33

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v26

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    :cond_b
    :goto_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move/from16 v0, v35

    if-le v0, v4, :cond_20

    const/16 v30, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v4, :cond_c

    new-instance v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;-><init>(Landroid/widget/FHoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setBackgroundColor(I)V

    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/FHoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/FHoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v4, v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_21

    :cond_d
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    if-nez v23, :cond_22

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->addView(Landroid/view/View;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    sub-int v4, v16, v34

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v18

    add-int v4, v34, v24

    sub-int v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v19

    const/16 v20, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_24

    if-eqz v30, :cond_23

    move/from16 v17, v33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2b

    if-eqz v30, :cond_2a

    move/from16 v34, v16

    :cond_11
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mHoveringPointX:I

    sub-int v4, v4, v34

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/FHoverPopupWindow;->mWindowGapX:I

    sub-int v7, v4, v5

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mHoveringPointY:I

    sub-int v4, v4, v35

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/FHoverPopupWindow;->mWindowGapY:I

    sub-int v8, v4, v5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_12

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow.computePopupPosition(): hoverPointXonContainer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "FHoverPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FingerHoverPopupWindow.computePopupPosition(): hoverPointYonContainer = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-eqz v30, :cond_2e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_13

    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/FHoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    :cond_14
    :goto_c
    div-int/lit8 v4, v24, 0x2

    add-int v40, v18, v4

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v41, v22, v4

    move/from16 v27, v7

    move/from16 v28, v8

    add-int/lit8 v4, v18, 0xa

    move/from16 v0, v27

    if-ge v0, v4, :cond_15

    :cond_15
    :goto_d
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow;->mPopupPosX:I

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow;->mPopupPosY:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_36

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const v5, 0x1030356

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    :goto_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v4, v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_0

    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow.computePopupPosition() : Call setFHmoveAnimationOffset(0)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setFHmoveAnimationOffset(I)V

    goto/16 :goto_0

    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/FHoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    :cond_18
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mWindowGapX:I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mWindowGapY:I

    new-instance v13, Landroid/graphics/Rect;

    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v12, v5

    const/4 v6, 0x0

    aget v6, v12, v6

    invoke-virtual {v14}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    aget v9, v12, v9

    invoke-virtual {v14}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v13, v4, v5, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_3

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    :cond_19
    const/16 v32, 0x0

    goto/16 :goto_3

    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    goto/16 :goto_4

    :cond_1b
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    goto :goto_f

    :cond_1c
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    goto/16 :goto_4

    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    add-int v4, v35, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_1e

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v35

    if-lt v0, v4, :cond_9

    :cond_1e
    const/4 v15, 0x1

    goto/16 :goto_5

    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    iget v4, v13, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v33

    move/from16 v0, v34

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    neg-int v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    add-int v4, v34, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v33

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iget v6, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    goto/16 :goto_6

    :cond_20
    const/16 v30, 0x1

    goto/16 :goto_7

    :cond_21
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    goto/16 :goto_8

    :cond_22
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_9

    :cond_23
    move/from16 v20, v33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_24
    if-eqz v30, :cond_27

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_26

    move/from16 v17, v33

    :cond_25
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_25

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, v33

    add-int v5, v35, v22

    sub-int v17, v4, v5

    goto :goto_10

    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_29

    move/from16 v20, v33

    :cond_28
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setPadding(IIII)V

    goto/16 :goto_a

    :cond_29
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v33

    sub-int v20, v35, v4

    goto :goto_11

    :cond_2a
    move/from16 v34, v16

    goto/16 :goto_b

    :cond_2b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    if-eqz v30, :cond_2c

    move/from16 v34, v16

    goto/16 :goto_b

    :cond_2c
    move/from16 v34, v16

    sub-int v35, v35, v20

    goto/16 :goto_b

    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/FHoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_c

    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_2f

    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint4"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_30

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/FHoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    :cond_30
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/FHoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    :cond_31
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_35

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-nez v4, :cond_32

    new-instance v4, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FHoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/FHoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildCount()I

    move-result v4

    if-nez v4, :cond_34

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    :cond_33
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/FHoverPopupWindow;->mToolType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_15

    const-string v4, "FHoverPopupWindow"

    const-string v5, "computePopupPosition: Call resetTimeout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_d

    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->removeAllViews()V

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->addView(Landroid/view/View;)V

    goto :goto_12

    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->removeAllViews()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_d

    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/FHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const v5, 0x1030355

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_e
.end method

.method public computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    return-void
.end method

.method public isHoverPopupPossible()Z
    .locals 1

    invoke-super {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    const/4 v8, 0x1

    invoke-super {p0, p1}, Landroid/widget/HoverPopupWindow;->onHoverEvent(Landroid/view/MotionEvent;)Z

    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "FHoverPopupWindow"

    const-string v9, "***** Start FingerHoverPopupWindow.onHoverEvent() *****"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v7, 0x7

    if-ne v0, v7, :cond_e

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v5, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/widget/FHoverPopupWindow;->setHoveringPoint(II)V

    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v7, :cond_7

    :cond_1
    invoke-virtual {p0}, Landroid/widget/FHoverPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    instance-of v7, v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v7, :cond_7

    move-object v1, v4

    check-cast v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_2

    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow: kdhpoint1"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v7, v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v7}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->getPaddingLeft()I

    move-result v2

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v3, v7, v2

    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent():  mContentView.getWidth() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/FHoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "FHoverPopupWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent():  ((FHPopupContainer)mContentContainer).getWidth() = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v7}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->getWidth()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent(): infopicker_leftLimit = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent(): infopicker_rightLimit = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v7, v2, v3}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setPickerLimit(II)V

    :cond_4
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent(): rawX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent(): mPopupPosX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/FHoverPopupWindow;->mPopupPosX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent(): mWindowGapX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/FHoverPopupWindow;->mWindowGapX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent(): endx = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/FHoverPopupWindow;->mPopupPosX:I

    sub-int v10, v5, v10

    iget v11, p0, Landroid/widget/FHoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v7, p0, Landroid/widget/FHoverPopupWindow;->mPopupPosX:I

    sub-int v7, v5, v7

    iget v9, p0, Landroid/widget/FHoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v7, v9

    iget v9, p0, Landroid/widget/FHoverPopupWindow;->mPopupPosY:I

    sub-int v9, v6, v9

    iget v10, p0, Landroid/widget/FHoverPopupWindow;->mWindowGapY:I

    sub-int/2addr v9, v10

    invoke-virtual {v1, v7, v9}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setGuideLineEndPoint(II)V

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_7

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_b

    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): not showing"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): not showing: Call containerView.updateDecoration()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {v1}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->updateDecoration()V

    :cond_7
    :goto_0
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "FHoverPopupWindow"

    const-string v9, "ACTION_HOVER_MOVE: FingerHoverPopupWindow.onHoverEvent(): Call resetTimeout()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v7, p0, Landroid/widget/FHoverPopupWindow;->mToolType:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_9

    invoke-direct {p0}, Landroid/widget/FHoverPopupWindow;->resetTimeout()V

    :cond_9
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_a

    const-string v7, "FHoverPopupWindow"

    const-string v9, "***** End FingerHoverPopupWindow.onHoverEvent(): return true *****"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v7, v8

    :goto_1
    return v7

    :cond_b
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_c

    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): showing"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent(): showing: mIsFHAnimationEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/widget/FHoverPopupWindow;->mIsFHAnimationEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_d

    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): showing:  Call containerView.updateDecoration()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-virtual {v1}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->updateDecoration()V

    goto :goto_0

    :cond_e
    const/16 v7, 0xa

    if-ne v0, v7, :cond_14

    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_f

    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): ACTION_HOVER_EXIT"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v7, v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v7, :cond_11

    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_10

    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): ACTION_HOVER_EXIT: setPopupState(center)"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setPopupState(I)V

    :cond_11
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v7, :cond_14

    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_12

    const-string v7, "FHoverPopupWindow"

    const-string v9, "Popup Touchable, Parent Views exit event being consumed to not dismiss popup window"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v7, :cond_13

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    :cond_13
    invoke-virtual {p0}, Landroid/widget/FHoverPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_14

    move v7, v8

    goto/16 :goto_1

    :cond_14
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_15

    const-string v7, "FHoverPopupWindow"

    const-string v8, "***** End FingerHoverPopupWindow.onHoverEvent(): return false *****"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method public setOverTopPickerOffset(I)V
    .locals 1

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setOverTopPickerOffset(I)V

    :cond_0
    return-void
.end method

.method public setPickerXOffset(I)V
    .locals 0

    iput p1, p0, Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I

    return-void
.end method

.method public updateHoverPopup(Landroid/view/View;III)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    return-void
.end method
