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
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2}, Landroid/widget/HoverPopupWindow;-><init>(Landroid/view/View;I)V

    .line 42
    iput-boolean v1, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->W:F

    .line 47
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->H:F

    .line 50
    const/high16 v0, 0x41700000    # 15.0f

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->TW:F

    .line 52
    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    .line 54
    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    .line 56
    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    .line 58
    const/high16 v0, 0x42580000    # 54.0f

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->mPickerPadding:F

    .line 60
    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    .line 66
    const/16 v0, 0x1f4

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->SHOW_ANIMATION_DURATION:I

    .line 68
    iput v1, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I

    .line 70
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I

    .line 72
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_CENTER:I

    .line 74
    const/4 v0, 0x3

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    .line 76
    const/4 v0, 0x4

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    .line 78
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_CENTER:I

    iput v0, p0, Landroid/widget/FHoverPopupWindow;->mDirection:I

    .line 80
    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    .line 82
    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameLeft:I

    .line 84
    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameRight:I

    .line 86
    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I

    .line 88
    iput v1, p0, Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I

    .line 90
    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 92
    iput-object v2, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 103
    new-instance v0, Landroid/widget/FHoverPopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/FHoverPopupWindow$1;-><init>(Landroid/widget/FHoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->mHandler:Landroid/os/Handler;

    .line 177
    new-instance v0, Landroid/widget/FHoverPopupWindow$2;

    invoke-direct {v0, p0}, Landroid/widget/FHoverPopupWindow$2;-><init>(Landroid/widget/FHoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    .line 191
    return-void
.end method

.method static synthetic access$000(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    return v0
.end method

.method static synthetic access$100(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDirection:I

    return v0
.end method

.method static synthetic access$1000(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameRight:I

    return v0
.end method

.method static synthetic access$102(Landroid/widget/FHoverPopupWindow;I)I
    .locals 0
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Landroid/widget/FHoverPopupWindow;->mDirection:I

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/FHoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->TW:F

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/FHoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->H:F

    return v0
.end method

.method static synthetic access$1300(Landroid/widget/FHoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->W:F

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/FHoverPopupWindow;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;
    .param p1, "x1"    # F

    .prologue
    .line 38
    iput p1, p0, Landroid/widget/FHoverPopupWindow;->W:F

    return p1
.end method

.method static synthetic access$1400(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1402(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 38
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow;->mCenterPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1500(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1502(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 38
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow;->mLeftPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1600(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1602(Landroid/widget/FHoverPopupWindow;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;
    .param p1, "x1"    # Landroid/graphics/PointF;

    .prologue
    .line 38
    iput-object p1, p0, Landroid/widget/FHoverPopupWindow;->mRightPoint:Landroid/graphics/PointF;

    return-object p1
.end method

.method static synthetic access$1700(Landroid/widget/FHoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mPickerPadding:F

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/FHoverPopupWindow;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I

    return v0
.end method

.method static synthetic access$2000(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/FHoverPopupWindow;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/FHoverPopupWindow;->setAnimator(II)V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/FHoverPopupWindow;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I

    return v0
.end method

.method static synthetic access$600(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$700(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    return v0
.end method

.method static synthetic access$800(Landroid/widget/FHoverPopupWindow;)F
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimationValue:F

    return v0
.end method

.method static synthetic access$802(Landroid/widget/FHoverPopupWindow;F)F
    .locals 0
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;
    .param p1, "x1"    # F

    .prologue
    .line 38
    iput p1, p0, Landroid/widget/FHoverPopupWindow;->objAnimationValue:F

    return p1
.end method

.method static synthetic access$900(Landroid/widget/FHoverPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/FHoverPopupWindow;

    .prologue
    .line 38
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameLeft:I

    return v0
.end method

.method private resetTimeout()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 241
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 242
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    :cond_0
    iget-boolean v0, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 247
    const-string v0, "FHoverPopupWindow"

    const-string/jumbo v1, "resetTimeout: Call sendMessageDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_1
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 251
    :cond_2
    return-void
.end method

.method private setAnimator(II)V
    .locals 5
    .param p1, "movelength"    # I
    .param p2, "direction"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 196
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT:I

    if-ne p2, v0, :cond_1

    .line 197
    :cond_0
    new-array v0, v1, [F

    aput v2, v0, v3

    int-to-float v1, p1

    aput v1, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    .line 204
    :goto_0
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/FHoverPopupWindow$QuintEaseOut;

    invoke-direct {v1}, Landroid/widget/FHoverPopupWindow$QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 205
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 206
    iget-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/widget/FHoverPopupWindow$3;

    invoke-direct {v1, p0}, Landroid/widget/FHoverPopupWindow$3;-><init>(Landroid/widget/FHoverPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 227
    return-void

    .line 198
    :cond_1
    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_LEFT_TO_CENTER:I

    if-eq p2, v0, :cond_2

    iget v0, p0, Landroid/widget/FHoverPopupWindow;->MOVE_RIGHT_TO_CENTER:I

    if-ne p2, v0, :cond_3

    .line 199
    :cond_2
    new-array v0, v1, [F

    int-to-float v1, p1

    aput v1, v0, v3

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/FHoverPopupWindow;->objAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 201
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
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offX"    # I
    .param p4, "offY"    # I

    .prologue
    .line 395
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 814
    :cond_0
    :goto_0
    return-void

    .line 399
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    .line 400
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupGravity:I

    .line 401
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetX:I

    .line 402
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupOffsetY:I

    .line 404
    if-eqz p1, :cond_17

    move-object/from16 v14, p1

    .line 405
    .local v14, "anchorView":Landroid/view/View;
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v26

    .line 408
    .local v26, "displayMetrics":Landroid/util/DisplayMetrics;
    const/4 v13, 0x0

    .line 409
    .local v13, "anchorRect":Landroid/graphics/Rect;
    const/4 v4, 0x2

    new-array v12, v4, [I

    .line 410
    .local v12, "anchorLocOnScr":[I
    const/4 v4, 0x2

    new-array v11, v4, [I

    .line 411
    .local v11, "anchorLocInWindow":[I
    invoke-virtual {v14, v12}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 412
    invoke-virtual {v14, v11}, Landroid/view/View;->getLocationInWindow([I)V

    .line 415
    new-instance v25, Landroid/graphics/Rect;

    invoke-direct/range {v25 .. v25}, Landroid/graphics/Rect;-><init>()V

    .line 417
    .local v25, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 420
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mAnchorView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v37

    .line 421
    .local v37, "rootview":Landroid/view/View;
    const/16 v31, 0x0

    .line 422
    .local v31, "isRootViewFullScreen":Z
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getWidth()I

    move-result v39

    .line 423
    .local v39, "rootviewWidth":I
    invoke-virtual/range {v37 .. v37}, Landroid/view/View;->getHeight()I

    move-result v38

    .line 425
    .local v38, "rootviewHeight":I
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v0, v39

    if-ne v0, v4, :cond_2

    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v0, v38

    if-ne v0, v4, :cond_2

    .line 427
    const/16 v31, 0x1

    .line 431
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v14}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-ne v4, v5, :cond_18

    .line 435
    const/4 v4, 0x0

    aget v4, v12, v4

    const/4 v5, 0x0

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 436
    const/4 v4, 0x1

    aget v4, v12, v4

    const/4 v5, 0x1

    aget v5, v11, v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 437
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 439
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
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

    .line 466
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    :cond_3
    :goto_2
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_5

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_5

    .line 467
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v36

    .line 468
    .local v36, "root":Landroid/view/View;
    invoke-virtual/range {v36 .. v36}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v43

    .line 470
    .local v43, "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v43

    instance-of v4, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v4, :cond_5

    move-object/from16 v45, v43

    .line 471
    check-cast v45, Landroid/view/WindowManager$LayoutParams;

    .line 472
    .local v45, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v45

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    move-object/from16 v0, v45

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int/2addr v4, v5

    and-int/lit16 v4, v4, 0x404

    if-nez v4, :cond_19

    const/16 v32, 0x1

    .line 474
    .local v32, "isSystemUiVisible":Z
    :goto_3
    const/16 v42, 0x0

    .line 476
    .local v42, "statusBarHeight":I
    move-object/from16 v0, v45

    iget v4, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v4, v4, 0x200

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    if-eqz v32, :cond_4

    .line 478
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x105000c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v42

    .line 481
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 482
    move/from16 v0, v42

    move-object/from16 v1, v25

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 483
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 484
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 489
    .end local v32    # "isSystemUiVisible":Z
    .end local v36    # "root":Landroid/view/View;
    .end local v42    # "statusBarHeight":I
    .end local v43    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v45    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 490
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 492
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v25

    iget v5, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mDisplayWidthToComputeAniWidth:I

    .line 493
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameLeft:I

    .line 494
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/FHoverPopupWindow;->mDisplayFrameRight:I

    .line 495
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_6

    .line 496
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

    .line 498
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

    .line 499
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

    .line 508
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    if-nez v4, :cond_1a

    .line 509
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    .line 511
    .local v44, "widthMeasureSpec":I
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .line 531
    .local v29, "heightMeasureSpec":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    move/from16 v0, v44

    move/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Landroid/view/View;->measure(II)V

    .line 532
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mNeedToMeasureContentView:Z

    .line 533
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v24

    .line 534
    .local v24, "contentWidth":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    .line 536
    .local v22, "contentHeight":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move/from16 v0, v22

    invoke-virtual {v4, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 540
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v24

    move/from16 v3, v22

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/widget/FHoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 542
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v13, Landroid/graphics/Rect;->left:I

    iget v6, v13, Landroid/graphics/Rect;->top:I

    iget v9, v13, Landroid/graphics/Rect;->right:I

    iget v10, v13, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v4, v5, v6, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/FHoverPopupWindow;->mReferncedAnchorRect:Landroid/graphics/Rect;

    .line 547
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    move/from16 v34, v0

    .line 548
    .local v34, "posX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    move/from16 v35, v0

    .line 549
    .local v35, "posY":I
    const/4 v15, 0x0

    .line 551
    .local v15, "canDraw":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_7

    .line 552
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

    .line 553
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

    .line 554
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

    .line 557
    :cond_7
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1d

    .line 558
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

    .line 560
    :cond_8
    const/4 v15, 0x1

    .line 568
    :cond_9
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_31

    :cond_a
    if-eqz v15, :cond_31

    .line 570
    const/16 v30, 0x1

    .line 572
    .local v30, "isPopupAboveHorizontal":Z
    const/high16 v4, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/widget/HoverPopupWindow;->convertDPtoPX(FLandroid/util/DisplayMetrics;)I

    move-result v33

    .line 575
    .local v33, "marginForHoverRing":I
    const/16 v16, 0x0

    .line 576
    .local v16, "containerLeftOnWindow":I
    const/16 v21, 0x0

    .line 577
    .local v21, "containerRightOnWindow":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1f

    .line 578
    iget v4, v13, Landroid/graphics/Rect;->left:I

    sub-int v4, v4, v33

    move/from16 v0, v34

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 580
    add-int v4, v34, v24

    iget v5, v13, Landroid/graphics/Rect;->right:I

    add-int v5, v5, v33

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, v26

    iget v5, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 591
    :cond_b
    :goto_6
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/FHoverPopupWindow;->mContainerLeftOnWindow:I

    .line 594
    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    move/from16 v0, v35

    if-le v0, v4, :cond_20

    .line 595
    const/16 v30, 0x0

    .line 608
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-nez v4, :cond_c

    .line 609
    new-instance v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;-><init>(Landroid/widget/FHoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 611
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint2"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mGuideRingDrawableId:I

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineColor:I

    invoke-virtual {v4, v5, v6}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(II)V

    .line 624
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v4, v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_e

    .line 625
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_d

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_21

    .line 626
    :cond_d
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(true)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    .line 635
    :cond_e
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    .line 636
    .local v23, "contentLP":Landroid/view/ViewGroup$LayoutParams;
    if-nez v23, :cond_22

    .line 637
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-direct {v5, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 645
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 647
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 650
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_10

    .line 651
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 654
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 655
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v5, -0x2

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 658
    sub-int v4, v16, v34

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v18

    .line 659
    .local v18, "containerPaddingLeft":I
    add-int v4, v34, v24

    sub-int v4, v21, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 660
    .local v19, "containerPaddingRight":I
    const/16 v20, 0x0

    .line 661
    .local v20, "containerPaddingTop":I
    const/16 v17, 0x0

    .line 662
    .local v17, "containerPaddingBottom":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-eqz v4, :cond_24

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v4, :cond_24

    .line 663
    if-eqz v30, :cond_23

    .line 664
    move/from16 v17, v33

    .line 665
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 695
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2b

    .line 696
    if-eqz v30, :cond_2a

    .line 697
    move/from16 v34, v16

    .line 713
    :cond_11
    :goto_b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointX:I

    sub-int v4, v4, v34

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int v7, v4, v5

    .line 714
    .local v7, "hoverPointXonContainer":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mHoveringPointY:I

    sub-int v4, v4, v35

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int v8, v4, v5

    .line 716
    .local v8, "hoverPointYonContainer":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_12

    .line 717
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

    .line 720
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

    .line 725
    :cond_12
    if-eqz v30, :cond_2e

    .line 726
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_13

    .line 727
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint3"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 728
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    .line 729
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    .line 738
    :cond_14
    :goto_c
    div-int/lit8 v4, v24, 0x2

    add-int v40, v18, v4

    .line 739
    .local v40, "startx":I
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v41, v22, v4

    .line 740
    .local v41, "starty":I
    move/from16 v27, v7

    .line 741
    .local v27, "endx":I
    move/from16 v28, v8

    .line 743
    .local v28, "endy":I
    add-int/lit8 v4, v18, 0xa

    move/from16 v0, v27

    if-ge v0, v4, :cond_15

    .line 792
    .end local v7    # "hoverPointXonContainer":I
    .end local v8    # "hoverPointYonContainer":I
    .end local v16    # "containerLeftOnWindow":I
    .end local v17    # "containerPaddingBottom":I
    .end local v18    # "containerPaddingLeft":I
    .end local v19    # "containerPaddingRight":I
    .end local v20    # "containerPaddingTop":I
    .end local v21    # "containerRightOnWindow":I
    .end local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v27    # "endx":I
    .end local v28    # "endy":I
    .end local v30    # "isPopupAboveHorizontal":Z
    .end local v33    # "marginForHoverRing":I
    .end local v40    # "startx":I
    .end local v41    # "starty":I
    :cond_15
    :goto_d
    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    .line 793
    move/from16 v0, v35

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    .line 800
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mOverTopBoundary:Z

    if-nez v4, :cond_16

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->misGravityBottomUnder:Z

    if-eqz v4, :cond_36

    .line 802
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const v5, 0x1030356

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 808
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-nez v4, :cond_0

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v4, v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_0

    .line 810
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow.computePopupPosition() : Call setFHmoveAnimationOffset(0)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setFHmoveAnimationOffset(I)V

    goto/16 :goto_0

    .line 404
    .end local v11    # "anchorLocInWindow":[I
    .end local v12    # "anchorLocOnScr":[I
    .end local v13    # "anchorRect":Landroid/graphics/Rect;
    .end local v14    # "anchorView":Landroid/view/View;
    .end local v15    # "canDraw":Z
    .end local v22    # "contentHeight":I
    .end local v24    # "contentWidth":I
    .end local v25    # "displayFrame":Landroid/graphics/Rect;
    .end local v26    # "displayMetrics":Landroid/util/DisplayMetrics;
    .end local v29    # "heightMeasureSpec":I
    .end local v31    # "isRootViewFullScreen":Z
    .end local v34    # "posX":I
    .end local v35    # "posY":I
    .end local v37    # "rootview":Landroid/view/View;
    .end local v38    # "rootviewHeight":I
    .end local v39    # "rootviewWidth":I
    .end local v44    # "widthMeasureSpec":I
    :cond_17
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/HoverPopupWindow;->mParentView:Landroid/view/View;

    goto/16 :goto_1

    .line 445
    .restart local v11    # "anchorLocInWindow":[I
    .restart local v12    # "anchorLocOnScr":[I
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    .restart local v14    # "anchorView":Landroid/view/View;
    .restart local v25    # "displayFrame":Landroid/graphics/Rect;
    .restart local v26    # "displayMetrics":Landroid/util/DisplayMetrics;
    .restart local v31    # "isRootViewFullScreen":Z
    .restart local v37    # "rootview":Landroid/view/View;
    .restart local v38    # "rootviewHeight":I
    .restart local v39    # "rootviewWidth":I
    :cond_18
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    .line 446
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    .line 447
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    .line 449
    new-instance v13, Landroid/graphics/Rect;

    .end local v13    # "anchorRect":Landroid/graphics/Rect;
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

    .line 457
    .restart local v13    # "anchorRect":Landroid/graphics/Rect;
    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_3

    move-object/from16 v0, v25

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-gez v4, :cond_3

    .line 458
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->left:I

    .line 459
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->right:I

    .line 460
    const/4 v4, 0x0

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->top:I

    .line 461
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, v25

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_2

    .line 472
    .restart local v36    # "root":Landroid/view/View;
    .restart local v43    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v45    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_19
    const/16 v32, 0x0

    goto/16 :goto_3

    .line 514
    .end local v36    # "root":Landroid/view/View;
    .end local v43    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v45    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v4, :cond_1b

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    .line 522
    .restart local v44    # "widthMeasureSpec":I
    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v4, :cond_1c

    .line 523
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentLP:Landroid/view/ViewGroup$LayoutParams;

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .restart local v29    # "heightMeasureSpec":I
    goto/16 :goto_4

    .line 518
    .end local v29    # "heightMeasureSpec":I
    .end local v44    # "widthMeasureSpec":I
    :cond_1b
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v44

    .restart local v44    # "widthMeasureSpec":I
    goto :goto_f

    .line 526
    :cond_1c
    move-object/from16 v0, v26

    iget v4, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v29

    .restart local v29    # "heightMeasureSpec":I
    goto/16 :goto_4

    .line 562
    .restart local v15    # "canDraw":Z
    .restart local v22    # "contentHeight":I
    .restart local v24    # "contentWidth":I
    .restart local v34    # "posX":I
    .restart local v35    # "posY":I
    :cond_1d
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_9

    .line 563
    add-int v4, v35, v22

    iget v5, v13, Landroid/graphics/Rect;->top:I

    if-le v4, v5, :cond_1e

    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    move/from16 v0, v35

    if-lt v0, v4, :cond_9

    .line 564
    :cond_1e
    const/4 v15, 0x1

    goto/16 :goto_5

    .line 584
    .restart local v16    # "containerLeftOnWindow":I
    .restart local v21    # "containerRightOnWindow":I
    .restart local v30    # "isPopupAboveHorizontal":Z
    .restart local v33    # "marginForHoverRing":I
    :cond_1f
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_b

    .line 585
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

    .line 587
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

    .line 597
    :cond_20
    const/16 v30, 0x1

    goto/16 :goto_7

    .line 629
    :cond_21
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: Call setOverTopForCotainer(false)"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setOverTopForCotainer(Z)V

    goto/16 :goto_8

    .line 640
    .restart local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    :cond_22
    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 641
    move/from16 v0, v22

    move-object/from16 v1, v23

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto/16 :goto_9

    .line 668
    .restart local v17    # "containerPaddingBottom":I
    .restart local v18    # "containerPaddingLeft":I
    .restart local v19    # "containerPaddingRight":I
    .restart local v20    # "containerPaddingTop":I
    :cond_23
    move/from16 v20, v33

    .line 669
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_a

    .line 673
    :cond_24
    if-eqz v30, :cond_27

    .line 674
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_26

    .line 675
    move/from16 v17, v33

    .line 680
    :cond_25
    :goto_10
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v4, v0, v5, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_a

    .line 676
    :cond_26
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_25

    .line 677
    iget v4, v13, Landroid/graphics/Rect;->bottom:I

    add-int v4, v4, v33

    add-int v5, v35, v22

    sub-int v17, v4, v5

    goto :goto_10

    .line 683
    :cond_27
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_29

    .line 684
    move/from16 v20, v33

    .line 688
    :cond_28
    :goto_11
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    const/4 v5, 0x0

    move/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v4, v0, v1, v2, v5}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_a

    .line 685
    :cond_29
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_28

    .line 686
    iget v4, v13, Landroid/graphics/Rect;->top:I

    sub-int v4, v4, v33

    sub-int v20, v35, v4

    goto :goto_11

    .line 700
    :cond_2a
    move/from16 v34, v16

    .line 701
    goto/16 :goto_b

    .line 703
    :cond_2b
    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mCoordinatesOfAnchorView:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_11

    .line 704
    if-eqz v30, :cond_2c

    .line 705
    move/from16 v34, v16

    .line 706
    goto/16 :goto_b

    .line 708
    :cond_2c
    move/from16 v34, v16

    .line 709
    sub-int v35, v35, v20

    goto/16 :goto_b

    .line 732
    .restart local v7    # "hoverPointXonContainer":I
    .restart local v8    # "hoverPointYonContainer":I
    :cond_2d
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_14

    .line 733
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    sub-int v6, v22, v6

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_c

    .line 752
    :cond_2e
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v4, :cond_2f

    .line 753
    const-string v4, "FHoverPopupWindow"

    const-string v5, "FingerHoverPopupWindow: kdhpoint4"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_2f
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_30

    .line 755
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    .line 758
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_15

    .line 759
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    div-int/lit8 v5, v24, 0x2

    add-int v5, v5, v18

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/HoverPopupWindow;->mGuideLineFadeOffset:I

    add-int v6, v6, v20

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLine(IIIIZZ)V

    goto/16 :goto_d

    .line 767
    .end local v7    # "hoverPointXonContainer":I
    .end local v8    # "hoverPointYonContainer":I
    .end local v16    # "containerLeftOnWindow":I
    .end local v17    # "containerPaddingBottom":I
    .end local v18    # "containerPaddingLeft":I
    .end local v19    # "containerPaddingRight":I
    .end local v20    # "containerPaddingTop":I
    .end local v21    # "containerRightOnWindow":I
    .end local v23    # "contentLP":Landroid/view/ViewGroup$LayoutParams;
    .end local v30    # "isPopupAboveHorizontal":Z
    .end local v33    # "marginForHoverRing":I
    :cond_31
    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v4, :cond_35

    .line 768
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-nez v4, :cond_32

    .line 769
    new-instance v4, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;-><init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    .line 771
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-nez v4, :cond_34

    .line 772
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 780
    :cond_33
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    if-eqz v4, :cond_15

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_15

    .line 781
    const-string v4, "FHoverPopupWindow"

    const-string v5, "computePopupPosition: Call resetTimeout()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto/16 :goto_d

    .line 773
    :cond_34
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_33

    .line 774
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 775
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mTouchableContainer:Landroid/widget/HoverPopupWindow$TouchablePopupContainer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_12

    .line 785
    :cond_35
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v4, :cond_15

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 788
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    goto/16 :goto_d

    .line 805
    :cond_36
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const v5, 0x1030355

    invoke-virtual {v4, v5}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    goto/16 :goto_e
.end method

.method public computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .locals 0
    .param p1, "anchorRect"    # Landroid/graphics/Rect;
    .param p2, "displayFrame"    # Landroid/graphics/Rect;
    .param p3, "contentWidth"    # I
    .param p4, "contentHeight"    # I

    .prologue
    .line 819
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->computePopupPositionInternal(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 826
    return-void
.end method

.method public isHoverPopupPossible()Z
    .locals 1

    .prologue
    .line 237
    invoke-super {p0}, Landroid/widget/HoverPopupWindow;->isHoverPopupPossible()Z

    move-result v0

    return v0
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    .line 255
    invoke-super {p0, p1}, Landroid/widget/HoverPopupWindow;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 256
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 257
    const-string v7, "FHoverPopupWindow"

    const-string v9, "***** Start FingerHoverPopupWindow.onHoverEvent() *****"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 260
    .local v0, "action":I
    const/4 v7, 0x7

    if-ne v0, v7, :cond_e

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v5, v7

    .line 262
    .local v5, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v6, v7

    .line 263
    .local v6, "rawY":I
    invoke-virtual {p0, v5, v6}, Landroid/widget/HoverPopupWindow;->setHoveringPoint(II)V

    .line 266
    iget-boolean v7, p0, Landroid/widget/HoverPopupWindow;->mIsGuideLineEnabled:Z

    if-nez v7, :cond_1

    iget-boolean v7, p0, Landroid/widget/HoverPopupWindow;->mIsFHGuideLineEnabled:Z

    if-eqz v7, :cond_7

    :cond_1
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 267
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v4

    .line 269
    .local v4, "popupView":Landroid/view/View;
    instance-of v7, v4, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v7, :cond_7

    move-object v1, v4

    .line 272
    check-cast v1, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    .line 273
    .local v1, "containerView":Landroid/widget/FHoverPopupWindow$FHPopupContainer;
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_2

    .line 274
    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow: kdhpoint1"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_2
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v7, v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v7, :cond_4

    .line 279
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v7}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 281
    .local v2, "infopickerLeftLimit":I
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int v3, v7, v2

    .line 283
    .local v3, "infopickerRightLimit":I
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_3

    .line 284
    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent():  mContentView.getWidth() = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/HoverPopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const-string v9, "FHoverPopupWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent():  ((FHPopupContainer)mContentContainer).getWidth() = "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
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

    .line 293
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

    .line 297
    :cond_3
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v7, v2, v3}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setPickerLimit(II)V

    .line 301
    .end local v2    # "infopickerLeftLimit":I
    .end local v3    # "infopickerRightLimit":I
    :cond_4
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_5

    .line 302
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

    .line 305
    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent(): mPopupPosX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent(): mWindowGapX = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent(): endx = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    sub-int v10, v5, v10

    iget v11, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_5
    iget v7, p0, Landroid/widget/HoverPopupWindow;->mPopupPosX:I

    sub-int v7, v5, v7

    iget v9, p0, Landroid/widget/HoverPopupWindow;->mWindowGapX:I

    sub-int/2addr v7, v9

    iget v9, p0, Landroid/widget/HoverPopupWindow;->mPopupPosY:I

    sub-int v9, v6, v9

    iget v10, p0, Landroid/widget/HoverPopupWindow;->mWindowGapY:I

    sub-int/2addr v9, v10

    invoke-virtual {v1, v7, v9}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->setGuideLineEndPoint(II)V

    .line 317
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    if-eqz v7, :cond_7

    .line 318
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v7}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v7

    if-nez v7, :cond_b

    .line 319
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_6

    .line 320
    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): not showing"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): not showing: Call containerView.updateDecoration()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_6
    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    .line 343
    .end local v1    # "containerView":Landroid/widget/FHoverPopupWindow$FHPopupContainer;
    .end local v4    # "popupView":Landroid/view/View;
    :cond_7
    :goto_0
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_8

    .line 344
    const-string v7, "FHoverPopupWindow"

    const-string v9, "ACTION_HOVER_MOVE: FingerHoverPopupWindow.onHoverEvent(): Call resetTimeout()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    :cond_8
    iget v7, p0, Landroid/widget/HoverPopupWindow;->mToolType:I

    const/4 v9, 0x3

    if-eq v7, v9, :cond_9

    .line 346
    invoke-direct {p0}, Landroid/widget/FHoverPopupWindow;->resetTimeout()V

    .line 349
    :cond_9
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_a

    .line 350
    const-string v7, "FHoverPopupWindow"

    const-string v9, "***** End FingerHoverPopupWindow.onHoverEvent(): return true *****"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    move v7, v8

    .line 387
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    :goto_1
    return v7

    .line 326
    .restart local v1    # "containerView":Landroid/widget/FHoverPopupWindow$FHPopupContainer;
    .restart local v4    # "popupView":Landroid/view/View;
    .restart local v5    # "rawX":I
    .restart local v6    # "rawY":I
    :cond_b
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_c

    .line 327
    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): showing"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const-string v7, "FHoverPopupWindow"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "FingerHoverPopupWindow.onHoverEvent(): showing: mIsFHAnimationEnabled = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_c
    iget-boolean v7, p0, Landroid/widget/HoverPopupWindow;->mIsFHAnimationEnabled:Z

    if-eqz v7, :cond_7

    .line 333
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_d

    .line 334
    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): showing:  Call containerView.updateDecoration()"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    :cond_d
    invoke-virtual {v1}, Landroid/widget/HoverPopupWindow$HoverPopupContainer;->updateDecoration()V

    goto :goto_0

    .line 353
    .end local v1    # "containerView":Landroid/widget/FHoverPopupWindow$FHPopupContainer;
    .end local v4    # "popupView":Landroid/view/View;
    .end local v5    # "rawX":I
    .end local v6    # "rawY":I
    :cond_e
    const/16 v7, 0xa

    if-ne v0, v7, :cond_14

    .line 356
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_f

    .line 357
    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): ACTION_HOVER_EXIT"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_f
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v7, v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v7, :cond_11

    .line 359
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_10

    .line 360
    const-string v7, "FHoverPopupWindow"

    const-string v9, "FingerHoverPopupWindow.onHoverEvent(): ACTION_HOVER_EXIT: setPopupState(center)"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_10
    iget-object v7, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v7, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    const/4 v9, 0x2

    invoke-virtual {v7, v9}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setPopupState(I)V

    .line 369
    :cond_11
    iget-boolean v7, p0, Landroid/widget/HoverPopupWindow;->mIsPopupTouchable:Z

    if-eqz v7, :cond_14

    .line 372
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_12

    .line 373
    const-string v7, "FHoverPopupWindow"

    const-string v9, "Popup Touchable, Parent Views exit event being consumed to not dismiss popup window"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_12
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    if-eqz v7, :cond_13

    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 375
    iget-object v7, p0, Landroid/widget/FHoverPopupWindow;->mDismissHandler:Landroid/os/Handler;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 378
    :cond_13
    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_14

    move v7, v8

    .line 379
    goto/16 :goto_1

    .line 384
    :cond_14
    iget-boolean v7, p0, Landroid/widget/FHoverPopupWindow;->DEBUG:Z

    if-eqz v7, :cond_15

    .line 385
    const-string v7, "FHoverPopupWindow"

    const-string v8, "***** End FingerHoverPopupWindow.onHoverEvent(): return false *****"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_15
    const/4 v7, 0x0

    goto/16 :goto_1
.end method

.method public setOverTopPickerOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 230
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    instance-of v0, v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Landroid/widget/HoverPopupWindow;->mContentContainer:Landroid/widget/HoverPopupWindow$HoverPopupContainer;

    check-cast v0, Landroid/widget/FHoverPopupWindow$FHPopupContainer;

    invoke-virtual {v0, p1}, Landroid/widget/FHoverPopupWindow$FHPopupContainer;->setOverTopPickerOffset(I)V

    .line 233
    :cond_0
    return-void
.end method

.method public setPickerXOffset(I)V
    .locals 0
    .param p1, "Xoffset"    # I

    .prologue
    .line 97
    iput p1, p0, Landroid/widget/FHoverPopupWindow;->mPickerXoffset:I

    .line 98
    return-void
.end method

.method public updateHoverPopup(Landroid/view/View;III)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "offsetX"    # I
    .param p4, "offsetY"    # I

    .prologue
    .line 831
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HoverPopupWindow;->updateHoverPopup(Landroid/view/View;III)V

    .line 837
    return-void
.end method
