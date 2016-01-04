.class Landroid/webkitsec/ZoomManager;
.super Ljava/lang/Object;
.source "ZoomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/ZoomManager$PostScale;,
        Landroid/webkitsec/ZoomManager$ScaleDetectorListener;,
        Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field protected static final DEFAULT_MAX_ZOOM_SCALE_FACTOR:F = 4.0f

.field protected static final DEFAULT_MIN_ZOOM_SCALE_FACTOR:F = 0.25f

.field static final LOGTAG:Ljava/lang/String; = "webviewZoom"

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static MINIMUM_SCALE_WITHOUT_JITTER:F = 0.0f

.field private static MIN_DOUBLE_TAP_SCALE_INCREMENT:F = 0.0f

.field private static MIN_DOUBLE_TAP_SCALE_INCREMENT_EMAIL:F = 0.0f

.field private static final PANNING_BLOCKING_TIME:J = 0x32L

.field private static final TILT_ZOOM_SCALE_FACTOR:I = 0x8c

.field private static final ZOOM_ANIMATION_LENGTH:I = 0x96

.field private static final mBlockZoomPadding:I = 0x5

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;


# instance fields
.field private bIsReceiveActionPU:Z

.field private bIsReceiveMoveEVForZoom:Z

.field private mActualScale:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private mBlockZoomStartScale:F

.field private mBlockZoomStartScrollX:I

.field private mBlockZoomStartScrollY:I

.field private mBlockZoomTargetScale:F

.field private mBlockZoomTargetScrollX:I

.field private mBlockZoomTargetScrollY:I

.field private mBlockZooming:Z

.field private final mCallbackProxy:Landroid/webkitsec/CallbackProxy;

.field private mDefaultMaxZoomScale:F

.field private mDefaultMinZoomScale:F

.field private mDefaultScale:F

.field private mDisplayDensity:F

.field private mDoubleTapMaxScale:F

.field private mDoubleTapZoomFactor:F

.field private mDoubleTapZoomFactorEmail:F

.field private mEmbeddedZoomControl:Landroid/webkitsec/ZoomControlEmbedded;

.field private mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

.field private mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;

.field private mFocusX:F

.field private mFocusY:F

.field private mHardwareAccelerated:Z

.field private mInHWAcceleratedZoom:Z

.field private mInZoomOverview:Z

.field private mInitialScale:F

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInitialZoomOverview:Z

.field private mInvActualScale:F

.field private mInvDefaultScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mInvZoomOverviewWidth:F

.field private mIsZooming:Z

.field private mMaxZoomScale:F

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;

.field private mPinchToZoomAnimating:Z

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mStartTimePannigCheck:J

.field private mSupportMultiTouch:Z

.field private mTextWrapScale:F

.field private mTiltListener:Landroid/webkitsec/TiltListener;

.field private final mWebView:Landroid/webkitsec/WebViewClassic;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J

.field private motionListener:Landroid/hardware/motion/MRListener;

.field private registerTiltListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-class v0, Landroid/webkitsec/ZoomManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    .line 179
    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Landroid/webkitsec/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    .line 180
    const/high16 v0, 0x3fc00000    # 1.5f

    sput v0, Landroid/webkitsec/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT_EMAIL:F

    .line 191
    const v0, 0x3be56042    # 0.007f

    sput v0, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    .line 197
    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    .line 256
    const/4 v0, 0x0

    sput-object v0, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/CallbackProxy;)V
    .locals 3
    .param p1, "webView"    # Landroid/webkitsec/WebViewClassic;
    .param p2, "callbackProxy"    # Landroid/webkitsec/CallbackProxy;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-boolean v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    .line 101
    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    .line 111
    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    .line 173
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapZoomFactor:F

    .line 174
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapZoomFactorEmail:F

    .line 229
    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z

    .line 231
    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mHardwareAccelerated:Z

    .line 232
    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 235
    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mBlockZooming:Z

    .line 242
    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapMaxScale:F

    .line 250
    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveActionPU:Z

    .line 251
    iput-boolean v2, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveMoveEVForZoom:Z

    .line 257
    new-instance v0, Landroid/webkitsec/ZoomManager$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/ZoomManager$1;-><init>(Landroid/webkitsec/ZoomManager;)V

    iput-object v0, p0, Landroid/webkitsec/ZoomManager;->motionListener:Landroid/hardware/motion/MRListener;

    .line 292
    iput-object p1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    .line 293
    iput-object p2, p0, Landroid/webkitsec/ZoomManager;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    .line 300
    sget v0, Landroid/webkitsec/WebViewClassic;->DEFAULT_VIEWPORT_WIDTH:I

    invoke-direct {p0, v0}, Landroid/webkitsec/ZoomManager;->setZoomOverviewWidth(I)V

    .line 302
    new-instance v0, Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    invoke-direct {v0, p0}, Landroid/webkitsec/ZoomManager$FocusMovementQueue;-><init>(Landroid/webkitsec/ZoomManager;)V

    iput-object v0, p0, Landroid/webkitsec/ZoomManager;->mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    .line 303
    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/TiltListener;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkitsec/ZoomManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mFocusX:F

    return v0
.end method

.method static synthetic access$1002(Landroid/webkitsec/ZoomManager;F)F
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;
    .param p1, "x1"    # F

    .prologue
    .line 62
    iput p1, p0, Landroid/webkitsec/ZoomManager;->mFocusX:F

    return p1
.end method

.method static synthetic access$1100(Landroid/webkitsec/ZoomManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mFocusY:F

    return v0
.end method

.method static synthetic access$1102(Landroid/webkitsec/ZoomManager;F)F
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;
    .param p1, "x1"    # F

    .prologue
    .line 62
    iput p1, p0, Landroid/webkitsec/ZoomManager;->mFocusY:F

    return p1
.end method

.method static synthetic access$1200(Landroid/webkitsec/ZoomManager;)J
    .locals 2
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget-wide v0, p0, Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J

    return-wide v0
.end method

.method static synthetic access$1202(Landroid/webkitsec/ZoomManager;J)J
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;
    .param p1, "x1"    # J

    .prologue
    .line 62
    iput-wide p1, p0, Landroid/webkitsec/ZoomManager;->mStartTimePannigCheck:J

    return-wide p1
.end method

.method static synthetic access$1500(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/MouseWheelListener;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/webkitsec/ZoomManager;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z

    return v0
.end method

.method static synthetic access$1602(Landroid/webkitsec/ZoomManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z

    return p1
.end method

.method static synthetic access$1700()F
    .locals 1

    .prologue
    .line 62
    sget v0, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_WITHOUT_JITTER:F

    return v0
.end method

.method static synthetic access$1802(Landroid/webkitsec/ZoomManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    return p1
.end method

.method static synthetic access$1900(Landroid/webkitsec/ZoomManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$200(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/WebViewClassic;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$2002(Landroid/webkitsec/ZoomManager;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;
    .param p1, "x1"    # I

    .prologue
    .line 62
    iput p1, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    return p1
.end method

.method static synthetic access$2100(Landroid/webkitsec/ZoomManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$2200(Landroid/webkitsec/ZoomManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method static synthetic access$2300(Landroid/webkitsec/ZoomManager;FZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;
    .param p1, "x1"    # F
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZZ)V

    return-void
.end method

.method static synthetic access$300(Landroid/webkitsec/ZoomManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method static synthetic access$400(Landroid/webkitsec/ZoomManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method static synthetic access$500(Landroid/webkitsec/ZoomManager;)F
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    return v0
.end method

.method static synthetic access$602(Landroid/webkitsec/ZoomManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    return p1
.end method

.method static synthetic access$702(Landroid/webkitsec/ZoomManager;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/webkitsec/ZoomManager;->mIsZooming:Z

    return p1
.end method

.method static synthetic access$800(Landroid/webkitsec/ZoomManager;)Landroid/webkitsec/ZoomManager$FocusMovementQueue;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomManager;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mFocusMovementQueue:Landroid/webkitsec/ZoomManager$FocusMovementQueue;

    return-object v0
.end method

.method private animateBlockZoom(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    .line 647
    iget-wide v8, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_0

    .line 648
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    .line 650
    :cond_0
    const/16 v1, 0x96

    .line 651
    .local v1, "period":I
    const/4 v8, 0x1

    if-ge v1, v8, :cond_1

    .line 652
    const/4 v1, 0x1

    .line 657
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    sub-long/2addr v8, v10

    long-to-int v0, v8

    .line 658
    .local v0, "elapsed":I
    int-to-float v8, v0

    int-to-float v9, v1

    div-float v2, v8, v9

    .line 659
    .local v2, "ratio":F
    cmpl-float v8, v2, v12

    if-lez v8, :cond_2

    .line 660
    const/high16 v2, 0x3f800000    # 1.0f

    .line 663
    :cond_2
    iget v8, p0, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScale:F

    sub-float v9, v12, v2

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScale:F

    mul-float/2addr v9, v2

    add-float v7, v8, v9

    .line 664
    .local v7, "zoomScale":F
    iget v8, p0, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScrollX:I

    int-to-float v8, v8

    sub-float v9, v12, v2

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollX:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    float-to-int v3, v8

    .line 665
    .local v3, "scrollX":I
    iget v8, p0, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScrollY:I

    int-to-float v8, v8

    sub-float v9, v12, v2

    mul-float/2addr v8, v9

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollY:I

    int-to-float v9, v9

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    float-to-int v4, v8

    .line 667
    .local v4, "scrollY":I
    if-ge v0, v1, :cond_6

    .line 668
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 674
    :goto_0
    iget-boolean v8, p0, Landroid/webkitsec/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v8, :cond_7

    .line 675
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v8

    sub-int v5, v8, v3

    .line 676
    .local v5, "tx":I
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v8

    sub-int v6, v8, v4

    .line 677
    .local v6, "ty":I
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8, v3, v4}, Landroid/webkitsec/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 678
    if-nez v5, :cond_3

    if-eqz v6, :cond_4

    .line 679
    :cond_3
    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 680
    :cond_4
    invoke-virtual {p0, v7, v13}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    .line 681
    iget-boolean v8, p0, Landroid/webkitsec/ZoomManager;->mBlockZooming:Z

    if-nez v8, :cond_5

    .line 682
    iput-boolean v13, p0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 686
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8, v13}, Landroid/webkitsec/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 692
    .end local v5    # "tx":I
    .end local v6    # "ty":I
    :cond_5
    :goto_1
    return-void

    .line 670
    :cond_6
    iput-boolean v13, p0, Landroid/webkitsec/ZoomManager;->mBlockZooming:Z

    .line 671
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->onFixedLengthZoomAnimationEnd()V

    goto :goto_0

    .line 689
    :cond_7
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v8

    sub-int/2addr v8, v3

    int-to-float v8, v8

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v9

    sub-int/2addr v9, v4

    int-to-float v9, v9

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 690
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto :goto_1
.end method

.method public static final exceedsMinScaleIncrement(FF)Z
    .locals 2
    .param p0, "scaleA"    # F
    .param p1, "scaleB"    # F

    .prologue
    .line 466
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    sget v1, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;
    .locals 2

    .prologue
    .line 1709
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->supportZoom()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1710
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1711
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mEmbeddedZoomControl:Landroid/webkitsec/ZoomControlEmbedded;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getDisplayZoomControls()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1713
    new-instance v0, Landroid/webkitsec/ZoomControlEmbedded;

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-direct {v0, p0, v1}, Landroid/webkitsec/ZoomControlEmbedded;-><init>(Landroid/webkitsec/ZoomManager;Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/ZoomManager;->mEmbeddedZoomControl:Landroid/webkitsec/ZoomControlEmbedded;

    .line 1715
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mEmbeddedZoomControl:Landroid/webkitsec/ZoomControlEmbedded;

    .line 1723
    :goto_0
    return-object v0

    .line 1717
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

    if-nez v0, :cond_2

    .line 1718
    new-instance v0, Landroid/webkitsec/ZoomControlExternal;

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-direct {v0, v1}, Landroid/webkitsec/ZoomControlExternal;-><init>(Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/ZoomManager;->mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

    .line 1720
    :cond_2
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

    goto :goto_0

    .line 1723
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sanitizeMinMaxScales()V
    .locals 3

    .prologue
    .line 1410
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1411
    const-string/jumbo v0, "webviewZoom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMinZoom > mMaxZoom!!! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1413
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    .line 1415
    :cond_0
    return-void
.end method

.method private setDefaultZoomScale(F)V
    .locals 5
    .param p1, "defaultScale"    # F

    .prologue
    const-wide/16 v3, 0x0

    .line 350
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    .line 351
    .local v0, "originalDefault":F
    iput p1, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    .line 352
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, p1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mInvDefaultScale:F

    .line 353
    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v1, p1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mDefaultMaxZoomScale:F

    .line 354
    const/high16 v1, 0x3e800000    # 0.25f

    mul-float/2addr v1, p1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mDefaultMinZoomScale:F

    .line 355
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    .line 357
    div-float v1, p1, v0

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    .line 361
    :goto_0
    float-to-double v1, v0

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    float-to-double v1, v1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_2

    .line 363
    div-float v1, p1, v0

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    .line 367
    :goto_1
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    invoke-static {v1, v2}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    .line 370
    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->sanitizeMinMaxScales()V

    .line 371
    return-void

    .line 359
    :cond_1
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mDefaultMaxZoomScale:F

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    goto :goto_0

    .line 365
    :cond_2
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mDefaultMinZoomScale:F

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    goto :goto_1
.end method

.method private setZoomOverviewWidth(I)V
    .locals 2
    .param p1, "width"    # I

    .prologue
    .line 1008
    if-nez p1, :cond_0

    .line 1009
    sget v0, Landroid/webkitsec/WebViewClassic;->DEFAULT_VIEWPORT_WIDTH:I

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mZoomOverviewWidth:I

    .line 1013
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mInvZoomOverviewWidth:F

    .line 1014
    return-void

    .line 1011
    :cond_0
    iput p1, p0, Landroid/webkitsec/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0
.end method

.method private setZoomScale(FZZ)V
    .locals 17
    .param p1, "scale"    # F
    .param p2, "reflowText"    # Z
    .param p3, "force"    # Z

    .prologue
    .line 847
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    cmpg-float v13, p1, v13

    if-gez v13, :cond_7

    const/4 v2, 0x1

    .line 848
    .local v2, "isScaleLessThanMinZoom":Z
    :goto_0
    invoke-virtual/range {p0 .. p1}, Landroid/webkitsec/ZoomManager;->computeScaleWithLimits(F)F

    move-result p1

    .line 851
    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_8

    .line 852
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    .line 857
    :goto_1
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v13

    invoke-virtual {v13}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v13

    if-nez v13, :cond_0

    .line 858
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    .line 861
    :cond_0
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    cmpl-float v13, p1, v13

    if-nez v13, :cond_1

    if-eqz p3, :cond_6

    .line 862
    :cond_1
    move-object/from16 v0, p0

    iget v4, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    .line 863
    .local v4, "oldScale":F
    move-object/from16 v0, p0

    iget v3, v0, Landroid/webkitsec/ZoomManager;->mInvActualScale:F

    .line 865
    .local v3, "oldInvScale":F
    move-object/from16 v0, p0

    iget v13, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    cmpl-float v13, p1, v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z

    if-nez v13, :cond_2

    .line 866
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;

    move-object/from16 v0, p0

    iget v14, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    move/from16 v0, p1

    invoke-virtual {v13, v14, v0}, Landroid/webkitsec/CallbackProxy;->onScaleChanged(FF)V

    .line 868
    :cond_2
    sget-boolean v13, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v13, :cond_3

    .line 869
    const-string v13, "ZoomManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "setZoomScale mActualScale = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "scale = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mActualScale:F

    .line 872
    const/high16 v13, 0x3f800000    # 1.0f

    div-float v13, v13, p1

    move-object/from16 v0, p0

    iput v13, v0, Landroid/webkitsec/ZoomManager;->mInvActualScale:F

    .line 874
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->drawHistory()Z

    move-result v13

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    if-nez v13, :cond_5

    .line 882
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v5

    .line 883
    .local v5, "oldX":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    .line 884
    .local v6, "oldY":I
    mul-float v8, p1, v3

    .line 885
    .local v8, "ratio":F
    int-to-float v13, v5

    mul-float/2addr v13, v8

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v8, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    mul-float/2addr v14, v15

    add-float v11, v13, v14

    .line 886
    .local v11, "sx":F
    int-to-float v13, v6

    mul-float/2addr v13, v8

    const/high16 v14, 0x3f800000    # 1.0f

    sub-float v14, v8, v14

    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v16

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float v12, v13, v14

    .line 890
    .local v12, "sy":F
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v13, v13, Landroid/webkitsec/WebViewClassic;->mViewManager:Landroid/webkitsec/ViewManager;

    invoke-virtual {v13}, Landroid/webkitsec/ViewManager;->scaleAll()V

    .line 894
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/webkitsec/WebViewClassic;->pinLocX(I)I

    move-result v9

    .line 895
    .local v9, "scrollX":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/webkitsec/WebViewClassic;->pinLocY(I)I

    move-result v10

    .line 898
    .local v10, "scrollY":I
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 899
    .local v7, "pkgName":Ljava/lang/String;
    if-eqz v7, :cond_4

    const-string v13, "com.android.email"

    invoke-virtual {v7, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 900
    move-object/from16 v0, p0

    iget-boolean v13, v0, Landroid/webkitsec/ZoomManager;->mIsZooming:Z

    if-eqz v13, :cond_4

    .line 901
    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 905
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13, v9, v10}, Landroid/webkitsec/WebViewClassic;->updateScrollCoordinates(II)Z

    move-result v13

    if-nez v13, :cond_5

    .line 909
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v13}, Landroid/webkitsec/WebViewClassic;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 915
    .end local v5    # "oldX":I
    .end local v6    # "oldY":I
    .end local v7    # "pkgName":Ljava/lang/String;
    .end local v8    # "ratio":F
    .end local v9    # "scrollX":I
    .end local v10    # "scrollY":I
    .end local v11    # "sx":F
    .end local v12    # "sy":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move/from16 v0, p2

    invoke-virtual {v13, v0}, Landroid/webkitsec/WebViewClassic;->sendViewSizeZoom(Z)Z

    .line 917
    .end local v3    # "oldInvScale":F
    .end local v4    # "oldScale":F
    :cond_6
    return-void

    .line 847
    .end local v2    # "isScaleLessThanMinZoom":Z
    :cond_7
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 854
    .restart local v2    # "isScaleLessThanMinZoom":Z
    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v13

    move/from16 v0, p1

    invoke-static {v0, v13}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v13

    if-nez v13, :cond_9

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    goto/16 :goto_1

    :cond_9
    const/4 v13, 0x0

    goto :goto_2
.end method

.method private setupZoomOverviewWidth(Landroid/webkitsec/WebViewCore$DrawData;I)Z
    .locals 4
    .param p1, "drawData"    # Landroid/webkitsec/WebViewCore$DrawData;
    .param p2, "viewWidth"    # I

    .prologue
    .line 1587
    iget-object v2, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    .line 1588
    .local v1, "settings":Landroid/webkitsec/WebSettings;
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mZoomOverviewWidth:I

    .line 1589
    .local v0, "newZoomOverviewWidth":I
    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1590
    iget-object v2, p1, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-lez v2, :cond_0

    .line 1593
    sget v2, Landroid/webkitsec/WebViewClassic;->sMaxViewportWidth:I

    iget-object v3, p1, Landroid/webkitsec/WebViewCore$DrawData;->mContentSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1600
    :cond_0
    :goto_0
    iget v2, p0, Landroid/webkitsec/ZoomManager;->mZoomOverviewWidth:I

    if-eq v0, v2, :cond_2

    .line 1601
    invoke-direct {p0, v0}, Landroid/webkitsec/ZoomManager;->setZoomOverviewWidth(I)V

    .line 1602
    const/4 v2, 0x1

    .line 1604
    :goto_1
    return v2

    .line 1598
    :cond_1
    int-to-float v2, p2

    iget v3, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    div-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_0

    .line 1604
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private startSmoothZoomAnimation(ZZF)V
    .locals 31
    .param p1, "reflowText"    # Z
    .param p2, "force"    # Z
    .param p3, "forceScale"    # F

    .prologue
    .line 507
    const/16 v20, 0x0

    .line 509
    .local v20, "newScale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    move/from16 v29, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v30

    invoke-virtual/range {v27 .. v30}, Landroid/webkitsec/WebViewClassic;->getBlockRect(IIF)Landroid/graphics/Rect;

    move-result-object v7

    .line 511
    .local v7, "cBlockRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebSettingsClassic;->enableDoubleTapBlockZoom()Z

    move-result v27

    if-nez v27, :cond_1

    .line 512
    move/from16 v20, p3

    .line 513
    const/high16 v27, 0x3f800000    # 1.0f

    mul-float v27, v27, v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    move/from16 v28, v0

    div-float v21, v27, v28

    .line 514
    .local v21, "scale":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    move/from16 v28, v0

    add-float v27, v27, v28

    mul-float v27, v27, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    move/from16 v28, v0

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v23

    .line 515
    .local v23, "tx":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v28

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    mul-float v28, v28, v20

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->round(F)I

    move-result v28

    move/from16 v0, v23

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Landroid/webkitsec/WebViewClassic;->pinLoc(III)I

    move-result v27

    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v28

    add-int v23, v27, v28

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v22

    .line 518
    .local v22, "titleHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v28, v0

    sub-float v27, v27, v28

    mul-float v27, v27, v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    move/from16 v28, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v29, v0

    sub-float v28, v28, v29

    sub-float v27, v27, v28

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->round(F)I

    move-result v24

    .line 521
    .local v24, "ty":I
    move/from16 v0, v24

    move/from16 v1, v22

    if-gt v0, v1, :cond_0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v27

    :goto_0
    move/from16 v0, v27

    neg-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v28

    add-int v24, v27, v28

    .line 525
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScale:F

    .line 526
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScale:F

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScrollX:I

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScrollY:I

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v27

    sub-int v27, v27, v23

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollX:I

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v27

    sub-int v27, v27, v24

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollY:I

    .line 630
    .end local v21    # "scale":F
    .end local v22    # "titleHeight":I
    .end local v23    # "tx":I
    .end local v24    # "ty":I
    :goto_1
    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    .line 631
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZooming:Z

    .line 633
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/ZoomManager;->mHardwareAccelerated:Z

    move/from16 v27, v0

    if-eqz v27, :cond_e

    .line 634
    const/16 v27, 0x1

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 642
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->onFixedLengthZoomAnimationStart()V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 644
    return-void

    .line 521
    .restart local v21    # "scale":F
    .restart local v22    # "titleHeight":I
    .restart local v23    # "tx":I
    .restart local v24    # "ty":I
    :cond_0
    sub-int v27, v24, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v29

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    mul-float v29, v29, v20

    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-static/range {v27 .. v29}, Landroid/webkitsec/WebViewClassic;->pinLoc(III)I

    move-result v27

    add-int v27, v27, v22

    goto/16 :goto_0

    .line 535
    .end local v21    # "scale":F
    .end local v22    # "titleHeight":I
    .end local v23    # "tx":I
    .end local v24    # "ty":I
    :cond_1
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 536
    .local v8, "cBlockWidth":I
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 539
    .local v6, "cBlockHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v26, v0

    .line 540
    .local v26, "viewWidth":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v25, v0

    .line 542
    .local v25, "viewHeight":F
    const/4 v13, 0x0

    .line 543
    .local v13, "cPadding":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mDoubleTapMaxScale:F

    move/from16 v27, v0

    move/from16 v0, v27

    move/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v17

    .line 545
    .local v17, "doubleTapMaxScale":F
    if-nez p2, :cond_b

    .line 546
    add-int/lit8 v27, v8, 0xa

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v20, v26, v27

    .line 547
    cmpl-float v27, v20, v17

    if-lez v27, :cond_9

    .line 549
    move/from16 v20, v17

    .line 561
    :cond_2
    :goto_3
    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v4, v27, v28

    .line 562
    .local v4, "cBlockCenterX":F
    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v27, v0

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v28, v0

    add-int v27, v27, v28

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v5, v27, v28

    .line 563
    .local v5, "cBlockCenterY":F
    div-float v16, v26, v20

    .line 564
    .local v16, "cViewportWidth":F
    div-float v15, v25, v20

    .line 569
    .local v15, "cViewportHeight":F
    if-nez p2, :cond_4

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    cmpg-float v27, v15, v27

    if-gez v27, :cond_4

    .line 570
    add-int/lit8 v27, v6, 0xa

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v20, v25, v27

    .line 571
    cmpl-float v27, v20, v17

    if-lez v27, :cond_c

    .line 573
    move/from16 v20, v17

    .line 581
    :cond_3
    :goto_4
    div-float v16, v26, v20

    .line 582
    div-float v15, v25, v20

    .line 585
    :cond_4
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 586
    .local v3, "cBestViewport":Landroid/graphics/RectF;
    const/high16 v27, 0x40000000    # 2.0f

    div-float v27, v16, v27

    sub-float v27, v4, v27

    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/RectF;->left:F

    .line 587
    const/high16 v27, 0x40000000    # 2.0f

    div-float v27, v15, v27

    sub-float v27, v5, v27

    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/RectF;->top:F

    .line 588
    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    add-float v27, v27, v16

    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 589
    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    add-float v27, v27, v15

    move/from16 v0, v27

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    div-float v14, v27, v20

    .line 594
    .local v14, "cTitleHeight":F
    const/4 v11, 0x0

    .line 595
    .local v11, "cMinX":F
    neg-float v12, v14

    .line 596
    .local v12, "cMinY":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v9, v0

    .line 597
    .local v9, "cMaxX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v10, v0

    .line 603
    .local v10, "cMaxY":F
    iget v0, v3, Landroid/graphics/RectF;->right:F

    move/from16 v27, v0

    sub-float v18, v27, v9

    .line 604
    .local v18, "extraX":F
    const/16 v27, 0x0

    cmpl-float v27, v18, v27

    if-lez v27, :cond_5

    .line 605
    move/from16 v0, v18

    neg-float v0, v0

    move/from16 v27, v0

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 607
    :cond_5
    iget v0, v3, Landroid/graphics/RectF;->bottom:F

    move/from16 v27, v0

    sub-float v19, v27, v10

    .line 608
    .local v19, "extraY":F
    const/16 v27, 0x0

    cmpl-float v27, v19, v27

    if-lez v27, :cond_6

    .line 609
    const/16 v27, 0x0

    move/from16 v0, v19

    neg-float v0, v0

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 613
    :cond_6
    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    cmpg-float v27, v27, v11

    if-gez v27, :cond_7

    .line 614
    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    sub-float v27, v11, v27

    const/16 v28, 0x0

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 616
    :cond_7
    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    cmpg-float v27, v27, v12

    if-gez v27, :cond_8

    .line 617
    const/16 v27, 0x0

    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v28, v0

    sub-float v28, v12, v28

    move/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    .line 621
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScale:F

    .line 622
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScale:F

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScrollX:I

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomStartScrollY:I

    .line 626
    iget v0, v3, Landroid/graphics/RectF;->left:F

    move/from16 v27, v0

    mul-float v27, v27, v20

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollX:I

    .line 627
    iget v0, v3, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    mul-float v27, v27, v20

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v28

    add-int v27, v27, v28

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollY:I

    goto/16 :goto_1

    .line 550
    .end local v3    # "cBestViewport":Landroid/graphics/RectF;
    .end local v4    # "cBlockCenterX":F
    .end local v5    # "cBlockCenterY":F
    .end local v9    # "cMaxX":F
    .end local v10    # "cMaxY":F
    .end local v11    # "cMinX":F
    .end local v12    # "cMinY":F
    .end local v14    # "cTitleHeight":F
    .end local v15    # "cViewportHeight":F
    .end local v16    # "cViewportWidth":F
    .end local v18    # "extraX":F
    .end local v19    # "extraY":F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move/from16 v27, v0

    cmpg-float v27, v20, v27

    if-gtz v27, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_a

    .line 551
    move/from16 v20, p3

    goto/16 :goto_3

    .line 552
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move/from16 v27, v0

    cmpg-float v27, v20, v27

    if-gez v27, :cond_2

    .line 553
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move/from16 v20, v0

    goto/16 :goto_3

    .line 556
    :cond_b
    move/from16 v20, p3

    goto/16 :goto_3

    .line 574
    .restart local v4    # "cBlockCenterX":F
    .restart local v5    # "cBlockCenterY":F
    .restart local v15    # "cViewportHeight":F
    .restart local v16    # "cViewportWidth":F
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move/from16 v27, v0

    cmpg-float v27, v20, v27

    if-gtz v27, :cond_d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    move/from16 v27, v0

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_d

    .line 575
    move/from16 v20, p3

    goto/16 :goto_4

    .line 576
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move/from16 v27, v0

    cmpg-float v27, v20, v27

    if-gez v27, :cond_3

    .line 577
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    move/from16 v20, v0

    goto/16 :goto_4

    .line 638
    .end local v4    # "cBlockCenterX":F
    .end local v5    # "cBlockCenterY":F
    .end local v6    # "cBlockHeight":I
    .end local v8    # "cBlockWidth":I
    .end local v13    # "cPadding":F
    .end local v15    # "cViewportHeight":F
    .end local v16    # "cViewportWidth":F
    .end local v17    # "doubleTapMaxScale":F
    .end local v25    # "viewHeight":F
    .end local v26    # "viewWidth":F
    :cond_e
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollX:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/ZoomManager;->mBlockZoomTargetScrollY:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Landroid/webkitsec/WebViewClassic;->updateScrollCoordinates(II)Z

    goto/16 :goto_2
.end method

.method private zoom(F)Z
    .locals 4
    .param p1, "zoomMultiplier"    # F

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    const/4 v0, 0x0

    .line 491
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    if-nez v1, :cond_0

    .line 501
    :goto_0
    return v0

    .line 493
    :cond_0
    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    .line 495
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->switchOutDrawHistory()V

    .line 497
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    .line 498
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    .line 499
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    .line 500
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    .line 501
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    mul-float/2addr v1, p1

    iget-object v2, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v1, v0}, Landroid/webkitsec/ZoomManager;->startZoomAnimation(FZ)Z

    move-result v0

    goto :goto_0
.end method

.method private zoomToOverview()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1032
    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v1

    .line 1033
    .local v1, "scrollY":I
    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 1034
    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v5, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Landroid/webkitsec/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 1037
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v0

    .line 1039
    .local v0, "readingScale":F
    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->enableDoubleTapBlockZoom()Z

    move-result v4

    if-nez v4, :cond_2

    .line 1041
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    iget-object v5, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v5}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v5

    if-nez v5, :cond_1

    :goto_0
    invoke-virtual {p0, v4, v2}, Landroid/webkitsec/ZoomManager;->startZoomAnimation(FZ)Z

    .line 1048
    :goto_1
    return-void

    :cond_1
    move v2, v3

    .line 1041
    goto :goto_0

    .line 1045
    :cond_2
    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_3

    move v3, v2

    :cond_3
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    invoke-direct {p0, v3, v2, v4}, Landroid/webkitsec/ZoomManager;->startSmoothZoomAnimation(ZZF)V

    goto :goto_1
.end method

.method private zoomToReadingLevelOrMore()V
    .locals 8

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1052
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v1

    .line 1053
    .local v1, "readingScale":F
    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->enableDoubleTapBlockZoom()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1054
    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget v6, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    iget v7, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    invoke-virtual {v3, v6, v7, v1}, Landroid/webkitsec/WebViewClassic;->getBlockLeftEdge(IIF)I

    move-result v0

    .line 1055
    .local v0, "left":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 1057
    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v3

    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v6

    sub-int v2, v3, v6

    .line 1061
    .local v2, "viewLeft":I
    if-lez v2, :cond_3

    .line 1062
    int-to-float v3, v2

    mul-float/2addr v3, v1

    iget v6, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    sub-float v6, v1, v6

    div-float/2addr v3, v6

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    .line 1068
    .end local v2    # "viewLeft":I
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v3

    if-nez v3, :cond_1

    move v4, v5

    :cond_1
    invoke-virtual {p0, v1, v4}, Landroid/webkitsec/ZoomManager;->startZoomAnimation(FZ)Z

    .line 1073
    .end local v0    # "left":I
    :goto_2
    return-void

    .line 1057
    .restart local v0    # "left":I
    :cond_2
    add-int/lit8 v3, v0, -0x5

    goto :goto_0

    .line 1064
    .restart local v2    # "viewLeft":I
    :cond_3
    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->scrollBy(II)V

    .line 1065
    const/4 v3, 0x0

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    goto :goto_1

    .line 1070
    .end local v0    # "left":I
    .end local v2    # "viewLeft":I
    :cond_4
    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v3

    if-nez v3, :cond_5

    :goto_3
    invoke-direct {p0, v5, v4, v1}, Landroid/webkitsec/ZoomManager;->startSmoothZoomAnimation(ZZF)V

    goto :goto_2

    :cond_5
    move v5, v4

    goto :goto_3
.end method


# virtual methods
.method public GetIsActionPU()Z
    .locals 3

    .prologue
    .line 1753
    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 1754
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GetIsActionPU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveActionPU:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1755
    :cond_0
    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveActionPU:Z

    return v0
.end method

.method public SetIsActionPU(Z)V
    .locals 3
    .param p1, "setValue"    # Z

    .prologue
    .line 1759
    sget-boolean v0, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v0, :cond_0

    .line 1760
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetIsActionPU "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    :cond_0
    if-eqz p1, :cond_1

    .line 1762
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mIsZooming:Z

    .line 1764
    :cond_1
    iput-boolean p1, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveActionPU:Z

    .line 1765
    return-void
.end method

.method public animateZoom(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    .line 746
    iput-boolean v12, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    .line 748
    iget-boolean v8, p0, Landroid/webkitsec/ZoomManager;->mBlockZooming:Z

    if-eqz v8, :cond_1

    .line 749
    invoke-direct {p0, p1}, Landroid/webkitsec/ZoomManager;->animateBlockZoom(Landroid/graphics/Canvas;)V

    .line 818
    :cond_0
    :goto_0
    return-void

    .line 753
    :cond_1
    iget v8, p0, Landroid/webkitsec/ZoomManager;->mZoomScale:F

    cmpl-float v8, v8, v13

    if-nez v8, :cond_2

    .line 754
    const-string/jumbo v8, "webviewZoom"

    const-string v9, "A WebView is attempting to perform a fixed length zoom animation when no zoom is in progress"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 757
    iput-boolean v12, p0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    goto :goto_0

    .line 761
    :cond_2
    iget-wide v8, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-nez v8, :cond_3

    .line 762
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    .line 766
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    sub-long/2addr v8, v10

    long-to-int v0, v8

    .line 767
    .local v0, "interval":I
    const/16 v8, 0x96

    if-ge v0, v8, :cond_4

    .line 768
    int-to-float v8, v0

    const/high16 v9, 0x43160000    # 150.0f

    div-float v2, v8, v9

    .line 769
    .local v2, "ratio":F
    const/high16 v8, 0x3f800000    # 1.0f

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mInvInitialZoomScale:F

    iget v10, p0, Landroid/webkitsec/ZoomManager;->mInvFinalZoomScale:F

    iget v11, p0, Landroid/webkitsec/ZoomManager;->mInvInitialZoomScale:F

    sub-float/2addr v10, v11

    mul-float/2addr v10, v2

    add-float/2addr v9, v10

    div-float v7, v8, v9

    .line 771
    .local v7, "zoomScale":F
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 780
    .end local v2    # "ratio":F
    :goto_1
    iget v8, p0, Landroid/webkitsec/ZoomManager;->mInvInitialZoomScale:F

    mul-float v3, v7, v8

    .line 781
    .local v3, "scale":F
    iget v8, p0, Landroid/webkitsec/ZoomManager;->mInitialScrollX:I

    int-to-float v8, v8

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    add-float/2addr v8, v9

    mul-float/2addr v8, v3

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 782
    .local v5, "tx":I
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v8

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getContentWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v7

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v5, v8, v9}, Landroid/webkitsec/WebViewClassic;->pinLoc(III)I

    move-result v8

    neg-int v8, v8

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v9

    add-int v5, v8, v9

    .line 784
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v4

    .line 785
    .local v4, "titleHeight":I
    iget v8, p0, Landroid/webkitsec/ZoomManager;->mInitialScrollY:I

    int-to-float v8, v8

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    add-float/2addr v8, v9

    int-to-float v9, v4

    sub-float/2addr v8, v9

    mul-float/2addr v8, v3

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    int-to-float v10, v4

    sub-float/2addr v9, v10

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 789
    .local v6, "ty":I
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 790
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_5

    const-string v8, "com.android.email"

    invoke-virtual {v1, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 791
    neg-int v8, v6

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v9

    add-int v6, v8, v9

    .line 798
    :goto_2
    iget-boolean v8, p0, Landroid/webkitsec/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v8, :cond_7

    .line 799
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v9

    sub-int/2addr v9, v5

    iget-object v10, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v10

    sub-int/2addr v10, v6

    invoke-virtual {v8, v9, v10}, Landroid/webkitsec/WebViewClassic;->updateScrollCoordinates(II)Z

    .line 802
    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 803
    invoke-virtual {p0, v7, v12}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    .line 805
    iget v8, p0, Landroid/webkitsec/ZoomManager;->mZoomScale:F

    cmpl-float v8, v8, v13

    if-nez v8, :cond_0

    .line 807
    iput-boolean v12, p0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 812
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8, v12}, Landroid/webkitsec/WebViewClassic;->sendViewSizeZoom(Z)Z

    goto/16 :goto_0

    .line 773
    .end local v1    # "pkgName":Ljava/lang/String;
    .end local v3    # "scale":F
    .end local v4    # "titleHeight":I
    .end local v5    # "tx":I
    .end local v6    # "ty":I
    .end local v7    # "zoomScale":F
    :cond_4
    iget v7, p0, Landroid/webkitsec/ZoomManager;->mZoomScale:F

    .line 775
    .restart local v7    # "zoomScale":F
    iput v13, p0, Landroid/webkitsec/ZoomManager;->mZoomScale:F

    .line 776
    iget-object v8, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->onFixedLengthZoomAnimationEnd()V

    goto/16 :goto_1

    .line 793
    .restart local v1    # "pkgName":Ljava/lang/String;
    .restart local v3    # "scale":F
    .restart local v4    # "titleHeight":I
    .restart local v5    # "tx":I
    .restart local v6    # "ty":I
    :cond_5
    if-gt v6, v4, :cond_6

    invoke-static {v6, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    :goto_3
    neg-int v8, v8

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v9

    add-int v6, v8, v9

    goto :goto_2

    :cond_6
    sub-int v8, v6, v4

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v9

    iget-object v10, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v10}, Landroid/webkitsec/WebViewClassic;->getContentHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v7

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v8, v9, v10}, Landroid/webkitsec/WebViewClassic;->pinLoc(III)I

    move-result v8

    add-int/2addr v8, v4

    goto :goto_3

    .line 815
    :cond_7
    int-to-float v8, v5

    int-to-float v9, v6

    invoke-virtual {p1, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 816
    invoke-virtual {p1, v7, v7}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_0
.end method

.method public final canZoomIn()Z
    .locals 2

    .prologue
    .line 474
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final canZoomOut()Z
    .locals 2

    .prologue
    .line 478
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final clearDocumentAnchor()V
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    .line 437
    return-void
.end method

.method final computeReadingLevelScale(F)F
    .locals 3
    .param p1, "scale"    # F

    .prologue
    .line 405
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    const/high16 v2, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v2

    .line 411
    :goto_0
    return v1

    :cond_0
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mDisplayDensity:F

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapZoomFactor:F

    mul-float/2addr v1, v2

    sget v2, Landroid/webkitsec/ZoomManager;->MIN_DOUBLE_TAP_SCALE_INCREMENT:F

    add-float/2addr v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0
.end method

.method public final computeScaleWithLimits(F)F
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 449
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 450
    iget p1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    .line 454
    :cond_0
    :goto_0
    return p1

    .line 451
    :cond_1
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 452
    iget p1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    goto :goto_0
.end method

.method public dismissZoomPicker()V
    .locals 1

    .prologue
    .line 1734
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;

    move-result-object v0

    .line 1735
    .local v0, "control":Landroid/webkitsec/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1736
    invoke-interface {v0}, Landroid/webkitsec/ZoomControlBase;->hide()V

    .line 1738
    :cond_0
    return-void
.end method

.method public final getDefaultMaxZoomScale()F
    .locals 1

    .prologue
    .line 420
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultMaxZoomScale:F

    return v0
.end method

.method public final getDefaultMinZoomScale()F
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultMinZoomScale:F

    return v0
.end method

.method public final getDefaultScale()F
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    return v0
.end method

.method public final getDocumentAnchorX()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    return v0
.end method

.method public final getDocumentAnchorY()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    return v0
.end method

.method public getExternalZoomPicker()Landroid/view/View;
    .locals 2

    .prologue
    .line 1794
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;

    move-result-object v0

    .line 1795
    .local v0, "control":Landroid/webkitsec/ZoomControlBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    .line 1796
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

    invoke-virtual {v1}, Landroid/webkitsec/ZoomControlExternal;->getControls()Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    move-result-object v1

    .line 1798
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHandleMoveEvForZooming()Z
    .locals 1

    .prologue
    .line 1774
    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveMoveEVForZoom:Z

    return v0
.end method

.method public final getInvDefaultScale()F
    .locals 1

    .prologue
    .line 416
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mInvDefaultScale:F

    return v0
.end method

.method public final getInvScale()F
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mInvActualScale:F

    return v0
.end method

.method public final getMaxZoomScale()F
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    return v0
.end method

.method public final getMinZoomScale()F
    .locals 1

    .prologue
    .line 390
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    return v0
.end method

.method public getMouseWheelListener()Landroid/webkitsec/MouseWheelListener;
    .locals 1

    .prologue
    .line 1138
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;

    return-object v0
.end method

.method public final getReadingLevelScale()F
    .locals 1

    .prologue
    .line 401
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/ZoomManager;->computeReadingLevelScale(F)F

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkitsec/ZoomManager;->computeScaleWithLimits(F)F

    move-result v0

    return v0
.end method

.method public getRegisterTiltListener()Z
    .locals 1

    .prologue
    .line 277
    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->registerTiltListener:Z

    return v0
.end method

.method public final getScale()F
    .locals 1

    .prologue
    .line 374
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    return v0
.end method

.method public getScaleGestureDetector()Landroid/view/ScaleGestureDetector;
    .locals 1

    .prologue
    .line 1134
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object v0
.end method

.method public final getTextWrapScale()F
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    return v0
.end method

.method public getTiltListener()Landroid/webkitsec/TiltListener;
    .locals 1

    .prologue
    .line 1778
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;

    return-object v0
.end method

.method getZoomOverviewScale()F
    .locals 3

    .prologue
    .line 1017
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1018
    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "com.android.email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->isDoubleTapEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1020
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 1022
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/webkitsec/ZoomManager;->mInvZoomOverviewWidth:F

    mul-float/2addr v1, v2

    goto :goto_0
.end method

.method public handleDoubleTap(FF)V
    .locals 7
    .param p1, "lastTouchX"    # F
    .param p2, "lastTouchY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 942
    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    .line 943
    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    .line 944
    .local v2, "settings":Landroid/webkitsec/WebSettingsClassic;
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->isDoubleTapEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1005
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    sget-boolean v4, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v4, :cond_2

    .line 949
    const-string v4, "ZoomManager"

    const-string v5, "handleDoubleTap start "

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/webkitsec/ZoomManager;->setZoomCenter(FF)V

    .line 957
    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    float-to-int v5, p1

    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v4

    iput v4, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    .line 958
    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    float-to-int v5, p2

    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v4

    iput v4, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    .line 959
    invoke-virtual {v2, v0}, Landroid/webkitsec/WebSettingsClassic;->setDoubleTapToastCount(I)V

    .line 962
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->dismissZoomPicker()V

    .line 965
    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 966
    iget v4, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 970
    .local v1, "newTextWrapScale":F
    :goto_1
    iget v4, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    iget v5, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-static {v4, v5}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v4

    if-nez v4, :cond_3

    move v0, v3

    .line 971
    .local v0, "firstTimeReflow":Z
    :cond_3
    if-nez v0, :cond_4

    iget-boolean v4, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    if-eqz v4, :cond_5

    .line 974
    :cond_4
    iput v1, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    .line 979
    :cond_5
    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v4

    if-eqz v4, :cond_7

    iget v4, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-static {v4, v1}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez v0, :cond_7

    iget-boolean v4, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    if-nez v4, :cond_7

    .line 984
    iput v1, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    .line 985
    invoke-virtual {p0, v3}, Landroid/webkitsec/ZoomManager;->refreshZoomScale(Z)V

    .line 998
    :goto_2
    sget-boolean v3, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v3, :cond_0

    .line 999
    const-string v3, "ZoomManager"

    const-string v4, "handleDoubleTap END "

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 968
    .end local v0    # "firstTimeReflow":Z
    .end local v1    # "newTextWrapScale":F
    :cond_6
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    .restart local v1    # "newTextWrapScale":F
    goto :goto_1

    .line 986
    .restart local v0    # "firstTimeReflow":Z
    :cond_7
    iget-boolean v4, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    if-nez v4, :cond_9

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkitsec/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 989
    iget v4, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    .line 990
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v4

    iput v4, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    .line 991
    invoke-virtual {p0, v3}, Landroid/webkitsec/ZoomManager;->refreshZoomScale(Z)V

    .line 994
    :cond_8
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->zoomToOverview()V

    goto :goto_2

    .line 996
    :cond_9
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->zoomToReadingLevelOrMore()V

    goto :goto_2
.end method

.method public init(F)V
    .locals 1
    .param p1, "density"    # F

    .prologue
    .line 313
    sget-boolean v0, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 315
    :cond_0
    iput p1, p0, Landroid/webkitsec/ZoomManager;->mDisplayDensity:F

    .line 316
    invoke-direct {p0, p1}, Landroid/webkitsec/ZoomManager;->setDefaultZoomScale(F)V

    .line 317
    iput p1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    .line 318
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mInvActualScale:F

    .line 320
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v0

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapMaxScale:F

    .line 322
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v0

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    .line 323
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 1

    .prologue
    .line 1727
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;

    move-result-object v0

    .line 1728
    .local v0, "control":Landroid/webkitsec/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1729
    invoke-interface {v0}, Landroid/webkitsec/ZoomControlBase;->show()V

    .line 1731
    :cond_0
    return-void
.end method

.method public isDoubleTapEnabled()Z
    .locals 2

    .prologue
    .line 920
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v0

    .line 921
    .local v0, "settings":Landroid/webkitsec/WebSettings;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFixedLengthAnimationInProgress()Z
    .locals 2

    .prologue
    .line 825
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mBlockZooming:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInZoomOverview()Z
    .locals 1

    .prologue
    .line 1027
    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    return v0
.end method

.method public isPreventingWebkitUpdates()Z
    .locals 1

    .prologue
    .line 1130
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->isZoomAnimating()Z

    move-result v0

    return v0
.end method

.method public final isScaleOverLimits(F)Z
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 458
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    cmpg-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomAnimating()Z
    .locals 1

    .prologue
    .line 821
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mPinchToZoomAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isZoomPickerVisible()Z
    .locals 2

    .prologue
    .line 1741
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;

    move-result-object v0

    .line 1742
    .local v0, "control":Landroid/webkitsec/ZoomControlBase;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkitsec/ZoomControlBase;->isVisible()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isZoomScaleFixed()Z
    .locals 2

    .prologue
    .line 462
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keepZoomPickerVisible()V
    .locals 2

    .prologue
    .line 1787
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;

    move-result-object v0

    .line 1788
    .local v0, "control":Landroid/webkitsec/ZoomControlBase;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mExternalZoomControl:Landroid/webkitsec/ZoomControlExternal;

    if-ne v0, v1, :cond_0

    .line 1789
    invoke-interface {v0}, Landroid/webkitsec/ZoomControlBase;->show()V

    .line 1791
    :cond_0
    return-void
.end method

.method public onFirstLayout(Landroid/webkitsec/WebViewCore$DrawData;)V
    .locals 10
    .param p1, "drawData"    # Landroid/webkitsec/WebViewCore$DrawData;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1616
    sget-boolean v6, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_0

    if-nez p1, :cond_0

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1617
    :cond_0
    sget-boolean v6, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_1

    iget-object v6, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewState:Landroid/webkitsec/WebViewCore$ViewState;

    if-nez v6, :cond_1

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1618
    :cond_1
    sget-boolean v6, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    if-nez v6, :cond_2

    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 1620
    :cond_2
    iget-object v5, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewState:Landroid/webkitsec/WebViewCore$ViewState;

    .line 1621
    .local v5, "viewState":Landroid/webkitsec/WebViewCore$ViewState;
    iget-object v4, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 1622
    .local v4, "viewSize":Landroid/graphics/Point;
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v8, p1, Landroid/webkitsec/WebViewCore$DrawData;->mMinPrefWidth:I

    invoke-virtual {p0, v5, v6, v8}, Landroid/webkitsec/ZoomManager;->updateZoomRange(Landroid/webkitsec/WebViewCore$ViewState;II)V

    .line 1623
    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v6

    invoke-direct {p0, p1, v6}, Landroid/webkitsec/ZoomManager;->setupZoomOverviewWidth(Landroid/webkitsec/WebViewCore$DrawData;I)Z

    .line 1624
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v0

    .line 1625
    .local v0, "overviewScale":F
    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    .line 1626
    .local v3, "settings":Landroid/webkitsec/WebSettingsClassic;
    iget-boolean v6, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1627
    :cond_3
    iget v6, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_9

    iget v6, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    :goto_0
    iput v6, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    .line 1629
    iget v6, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    iget v8, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    .line 1630
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->sanitizeMinMaxScales()V

    .line 1633
    :cond_4
    iget-object v6, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v6}, Landroid/webkitsec/WebViewClassic;->drawHistory()Z

    move-result v6

    if-nez v6, :cond_8

    .line 1635
    iget v6, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_a

    .line 1636
    iget v2, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    .line 1655
    .local v2, "scale":F
    :cond_5
    :goto_1
    const/4 v1, 0x0

    .line 1656
    .local v1, "reflowText":Z
    iget-boolean v6, v5, Landroid/webkitsec/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_7

    .line 1657
    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1659
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1660
    iget v6, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    .line 1662
    :cond_6
    iget v6, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-static {v6, v2}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v1

    .line 1664
    :cond_7
    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-static {v2, v0}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v6

    if-nez v6, :cond_11

    move v6, v7

    :goto_2
    iput-boolean v6, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    .line 1666
    invoke-virtual {p0, v2, v1}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    .line 1669
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->updateZoomPicker()V

    .line 1672
    invoke-virtual {p0, v7}, Landroid/webkitsec/ZoomManager;->setEdgeZoom(Z)V

    .line 1674
    .end local v1    # "reflowText":Z
    .end local v2    # "scale":F
    :cond_8
    return-void

    :cond_9
    move v6, v0

    .line 1627
    goto :goto_0

    .line 1637
    :cond_a
    iget-boolean v6, v5, Landroid/webkitsec/WebViewCore$ViewState;->mIsRestored:Z

    if-nez v6, :cond_b

    iget v6, v5, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_e

    .line 1638
    :cond_b
    iget v6, v5, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_c

    iget v2, v5, Landroid/webkitsec/WebViewCore$ViewState;->mViewScale:F

    .line 1640
    .restart local v2    # "scale":F
    :goto_3
    iget v6, v5, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    cmpl-float v6, v6, v9

    if-lez v6, :cond_d

    iget v6, v5, Landroid/webkitsec/WebViewCore$ViewState;->mTextWrapScale:F

    :goto_4
    iput v6, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    goto :goto_1

    .end local v2    # "scale":F
    :cond_c
    move v2, v0

    .line 1638
    goto :goto_3

    .line 1640
    .restart local v2    # "scale":F
    :cond_d
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v6

    goto :goto_4

    .line 1643
    .end local v2    # "scale":F
    :cond_e
    move v2, v0

    .line 1644
    .restart local v2    # "scale":F
    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_f

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v6

    if-nez v6, :cond_10

    .line 1646
    :cond_f
    iget v6, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1648
    :cond_10
    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1652
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v6

    iput v6, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    goto/16 :goto_1

    .line 1664
    .restart local v1    # "reflowText":Z
    :cond_11
    const/4 v6, 0x0

    goto :goto_2
.end method

.method public onNewPicture(Landroid/webkitsec/WebViewCore$DrawData;)Z
    .locals 11
    .param p1, "drawData"    # Landroid/webkitsec/WebViewCore$DrawData;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1528
    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v5

    .line 1529
    .local v5, "viewWidth":I
    invoke-direct {p0, p1, v5}, Landroid/webkitsec/ZoomManager;->setupZoomOverviewWidth(Landroid/webkitsec/WebViewCore$DrawData;I)Z

    move-result v6

    .line 1530
    .local v6, "zoomOverviewWidthChanged":Z
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getZoomOverviewScale()F

    move-result v1

    .line 1532
    .local v1, "newZoomOverviewScale":F
    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v4

    .line 1533
    .local v4, "settings":Landroid/webkitsec/WebSettingsClassic;
    if-eqz v6, :cond_2

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->isNarrowColumnLayout()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v9

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_0

    iget-boolean v9, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_2

    .line 1538
    :cond_0
    iget v9, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    iget v10, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    invoke-static {v9, v10}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_1

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1540
    :cond_1
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v9

    iput v9, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    .line 1546
    :cond_2
    :goto_0
    iget-boolean v9, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1547
    :cond_3
    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    .line 1548
    iget v9, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    iget v10, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    .line 1549
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->sanitizeMinMaxScales()V

    .line 1553
    :cond_4
    iget v9, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-static {v1, v9}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v2

    .line 1555
    .local v2, "scaleHasDiff":Z
    iget v9, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    sub-float v9, v1, v9

    sget v10, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v9, v9, v10

    if-ltz v9, :cond_a

    move v3, v7

    .line 1559
    .local v3, "scaleLessThanOverview":Z
    :goto_1
    iget-boolean v9, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    if-eqz v9, :cond_b

    iget v9, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    invoke-static {v1, v9}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v9

    if-nez v9, :cond_b

    move v0, v7

    .line 1561
    .local v0, "mobileSiteInOverview":Z
    :goto_2
    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->drawHistory()Z

    move-result v9

    if-nez v9, :cond_d

    if-eqz v3, :cond_5

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getUseWideViewPort()Z

    move-result v9

    if-nez v9, :cond_7

    :cond_5
    iget-boolean v9, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    if-nez v9, :cond_6

    if-eqz v0, :cond_d

    :cond_6
    if-eqz v2, :cond_d

    if-eqz v6, :cond_d

    .line 1565
    :cond_7
    iput-boolean v8, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    .line 1566
    iget v9, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p0, v9}, Landroid/webkitsec/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v9

    if-nez v9, :cond_c

    iget-object v9, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v9

    if-nez v9, :cond_c

    :goto_3
    invoke-virtual {p0, v1, v7}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    .line 1571
    :goto_4
    iget-boolean v7, p1, Landroid/webkitsec/WebViewCore$DrawData;->mFirstLayoutForNonStandardLoad:Z

    if-eqz v7, :cond_8

    invoke-virtual {v4}, Landroid/webkitsec/WebSettingsClassic;->getLoadWithOverviewMode()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1574
    iget-boolean v7, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    iput-boolean v7, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    .line 1577
    :cond_8
    return v2

    .line 1542
    .end local v0    # "mobileSiteInOverview":Z
    .end local v2    # "scaleHasDiff":Z
    .end local v3    # "scaleLessThanOverview":Z
    :cond_9
    iput v1, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    goto :goto_0

    .restart local v2    # "scaleHasDiff":Z
    :cond_a
    move v3, v8

    .line 1555
    goto :goto_1

    .restart local v3    # "scaleLessThanOverview":Z
    :cond_b
    move v0, v8

    .line 1559
    goto :goto_2

    .restart local v0    # "mobileSiteInOverview":Z
    :cond_c
    move v7, v8

    .line 1566
    goto :goto_3

    .line 1569
    :cond_d
    if-nez v2, :cond_e

    :goto_5
    iput-boolean v7, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    goto :goto_4

    :cond_e
    move v7, v8

    goto :goto_5
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 1811
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    .line 1812
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "ow"    # I
    .param p4, "oh"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v6, 0x0

    .line 1420
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->isFixedLengthAnimationInProgress()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1421
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getVisibleTitleHeight()I

    move-result v0

    .line 1422
    .local v0, "visibleTitleHeight":I
    iput v6, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    .line 1423
    int-to-float v1, v0

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    .line 1424
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/webkitsec/WebViewClassic;->viewToContentX(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mAnchorX:I

    .line 1425
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v4}, Landroid/webkitsec/WebViewClassic;->viewToContentY(I)I

    move-result v1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mAnchorY:I

    .line 1429
    .end local v0    # "visibleTitleHeight":I
    :cond_0
    iget-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    if-nez v1, :cond_2

    .line 1434
    const/high16 v4, 0x3f800000    # 1.0f

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v1

    int-to-float v5, v1

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->drawHistory()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getHistoryPictureWidth()I

    move-result v1

    :goto_0
    int-to-float v1, v1

    div-float v1, v5, v1

    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    .line 1438
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_1

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    iget v4, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 1439
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    iput v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    .line 1441
    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->sanitizeMinMaxScales()V

    .line 1444
    :cond_2
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->dismissZoomPicker()V

    .line 1451
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1452
    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v4

    new-instance v5, Landroid/webkitsec/ZoomManager$PostScale;

    if-eq p1, p3, :cond_5

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getUseFixedViewport()Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v2

    :goto_1
    iget-boolean v6, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    if-ge p1, p3, :cond_6

    :goto_2
    invoke-direct {v5, p0, v1, v6, v2}, Landroid/webkitsec/ZoomManager$PostScale;-><init>(Landroid/webkitsec/ZoomManager;ZZZ)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1455
    :cond_3
    return-void

    .line 1434
    :cond_4
    iget v1, p0, Landroid/webkitsec/ZoomManager;->mZoomOverviewWidth:I

    goto :goto_0

    :cond_5
    move v1, v3

    .line 1452
    goto :goto_1

    :cond_6
    move v2, v3

    goto :goto_2
.end method

.method public refreshZoomScale(Z)V
    .locals 2
    .param p1, "reflowText"    # Z

    .prologue
    .line 839
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZZ)V

    .line 840
    return-void
.end method

.method public registerTiltListener()V
    .locals 3

    .prologue
    .line 270
    sget-object v0, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 271
    sget-object v0, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->motionListener:Landroid/hardware/motion/MRListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->registerTiltListener:Z

    .line 274
    :cond_0
    return-void
.end method

.method public restoreZoomState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1702
    const-string/jumbo v0, "scale"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    .line 1703
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    div-float v0, v1, v0

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mInvActualScale:F

    .line 1704
    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    .line 1705
    const-string/jumbo v0, "overview"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    .line 1706
    return-void
.end method

.method public saveZoomState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "b"    # Landroid/os/Bundle;

    .prologue
    .line 1693
    const-string/jumbo v0, "scale"

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1694
    const-string/jumbo v0, "textwrapScale"

    iget v1, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1695
    const-string/jumbo v0, "overview"

    iget-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mInZoomOverview:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1696
    return-void
.end method

.method setEdgeZoom(Z)V
    .locals 10
    .param p1, "enabled"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1677
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 1679
    :try_start_0
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1680
    .local v0, "classx":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v3, v6

    .line 1681
    .local v3, "paramTypes":[Ljava/lang/Class;
    const-string/jumbo v6, "setEnableEdgeZoom"

    invoke-virtual {v0, v6, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1682
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_2

    .line 1683
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getScaleGestureDetector()Landroid/view/ScaleGestureDetector;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->canZoomIn()Z

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->canZoomOut()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    move v4, v5

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v8

    invoke-virtual {v2, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1690
    .end local v0    # "classx":Ljava/lang/Class;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "paramTypes":[Ljava/lang/Class;
    :cond_2
    :goto_0
    return-void

    .line 1685
    :catch_0
    move-exception v1

    .line 1686
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/webkitsec/DebugFlags;->WEB_TOUCH_LOG:Z

    if-eqz v4, :cond_2

    .line 1687
    const-string v4, "ZoomManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onFirstLayout  e = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setHandleMoveEvForZooming(Z)V
    .locals 3
    .param p1, "IsCanZooming"    # Z

    .prologue
    .line 1769
    const-string v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHandleMoveEvForZooming= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    iput-boolean p1, p0, Landroid/webkitsec/ZoomManager;->bIsReceiveMoveEVForZoom:Z

    .line 1771
    return-void
.end method

.method public setHardwareAccelerated()V
    .locals 1

    .prologue
    .line 1803
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mHardwareAccelerated:Z

    .line 1804
    return-void
.end method

.method public final setInitialScaleInPercent(I)V
    .locals 2
    .param p1, "scaleInPercent"    # I

    .prologue
    .line 445
    int-to-float v0, p1

    const v1, 0x3c23d70a    # 0.01f

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mInitialScale:F

    .line 446
    return-void
.end method

.method public final setZoomCenter(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 440
    iput p1, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterX:F

    .line 441
    iput p2, p0, Landroid/webkitsec/ZoomManager;->mZoomCenterY:F

    .line 442
    return-void
.end method

.method public setZoomScale(FZ)V
    .locals 1
    .param p1, "scale"    # F
    .param p2, "reflowText"    # Z

    .prologue
    .line 843
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZZ)V

    .line 844
    return-void
.end method

.method public startZoomAnimation(FZ)Z
    .locals 5
    .param p1, "scale"    # F
    .param p2, "reflowText"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    .line 700
    iput-boolean v2, p0, Landroid/webkitsec/ZoomManager;->mInitialZoomOverview:Z

    .line 701
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    .line 702
    .local v0, "oldScale":F
    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mInitialScrollX:I

    .line 703
    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mInitialScrollY:I

    .line 706
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v3

    invoke-static {p1, v3}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v3

    if-nez v3, :cond_0

    .line 707
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result p1

    .line 710
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    .line 712
    iget v3, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    cmpl-float v3, v0, v3

    if-eqz v3, :cond_2

    .line 713
    iget-boolean v2, p0, Landroid/webkitsec/ZoomManager;->mHardwareAccelerated:Z

    if-eqz v2, :cond_1

    .line 714
    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mInHWAcceleratedZoom:Z

    .line 719
    :cond_1
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/webkitsec/ZoomManager;->mZoomStart:J

    .line 721
    div-float v2, v4, v0

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mInvInitialZoomScale:F

    .line 722
    iget v2, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    div-float v2, v4, v2

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mInvFinalZoomScale:F

    .line 723
    iget v2, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    iput v2, p0, Landroid/webkitsec/ZoomManager;->mZoomScale:F

    .line 724
    iget-object v2, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->onFixedLengthZoomAnimationStart()V

    .line 725
    iget-object v2, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 728
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public supportsMultiTouchZoom()Z
    .locals 1

    .prologue
    .line 1110
    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mSupportMultiTouch:Z

    return v0
.end method

.method public supportsPanDuringZoom()Z
    .locals 1

    .prologue
    .line 1114
    iget-boolean v0, p0, Landroid/webkitsec/ZoomManager;->mAllowPanAndScale:Z

    return v0
.end method

.method public unregisterTiltListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 281
    sget-object v0, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_1

    .line 282
    sget-object v0, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkitsec/ZoomManager;->motionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 284
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;

    invoke-virtual {v0, v2}, Landroid/webkitsec/TiltListener;->setTiltUse(Z)V

    .line 286
    :cond_0
    iput-boolean v2, p0, Landroid/webkitsec/ZoomManager;->registerTiltListener:Z

    .line 288
    :cond_1
    return-void
.end method

.method public updateDefaultZoomDensity(F)V
    .locals 6
    .param p1, "density"    # F

    .prologue
    .line 335
    sget-boolean v2, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-gtz v2, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 337
    :cond_0
    iget v2, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    sub-float v2, p1, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sget v3, Landroid/webkitsec/ZoomManager;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 339
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultScale:F

    .line 341
    .local v0, "originalDefault":F
    iput p1, p0, Landroid/webkitsec/ZoomManager;->mDisplayDensity:F

    .line 342
    invoke-direct {p0, p1}, Landroid/webkitsec/ZoomManager;->setDefaultZoomScale(F)V

    .line 343
    float-to-double v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    div-float v1, p1, v0

    .line 345
    .local v1, "scaleChange":F
    :goto_0
    iget v2, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZ)V

    .line 347
    .end local v0    # "originalDefault":F
    .end local v1    # "scaleChange":F
    :cond_1
    return-void

    .line 343
    .restart local v0    # "originalDefault":F
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public updateDoubleTapZoom(I)V
    .locals 5
    .param p1, "doubleTapZoom"    # I

    .prologue
    const/4 v2, 0x1

    .line 829
    iget v3, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    sub-float/2addr v3, v4

    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    move v1, v2

    .line 830
    .local v1, "zoomIn":Z
    :goto_0
    int-to-float v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapZoomFactor:F

    .line 831
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    .line 832
    invoke-virtual {p0}, Landroid/webkitsec/ZoomManager;->getReadingLevelScale()F

    move-result v3

    iput v3, p0, Landroid/webkitsec/ZoomManager;->mDoubleTapMaxScale:F

    .line 833
    if-eqz v1, :cond_1

    iget v0, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    .line 835
    .local v0, "newScale":F
    :goto_1
    invoke-direct {p0, v0, v2, v2}, Landroid/webkitsec/ZoomManager;->setZoomScale(FZZ)V

    .line 836
    return-void

    .line 829
    .end local v0    # "newScale":F
    .end local v1    # "zoomIn":Z
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 833
    .restart local v1    # "zoomIn":Z
    :cond_1
    iget v3, p0, Landroid/webkitsec/ZoomManager;->mTextWrapScale:F

    iget v4, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_1
.end method

.method public updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1077
    sget-boolean v3, Landroid/webkitsec/ZoomManager;->$assertionsDisabled:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 1079
    :cond_0
    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    .line 1080
    .local v2, "settings":Landroid/webkitsec/WebSettings;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1081
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "android.hardware.touchscreen.multitouch"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->supportZoom()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getBuiltInZoomControls()Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Landroid/webkitsec/ZoomManager;->mSupportMultiTouch:Z

    .line 1085
    const-string v3, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "android.hardware.faketouch.multitouch.distinct"

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    move v5, v4

    :cond_3
    iput-boolean v5, p0, Landroid/webkitsec/ZoomManager;->mAllowPanAndScale:Z

    .line 1089
    iget-boolean v3, p0, Landroid/webkitsec/ZoomManager;->mSupportMultiTouch:Z

    if-eqz v3, :cond_6

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-nez v3, :cond_6

    .line 1090
    new-instance v0, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;

    invoke-direct {v0, p0, v6}, Landroid/webkitsec/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkitsec/ZoomManager;Landroid/webkitsec/ZoomManager$1;)V

    .line 1091
    .local v0, "listener":Landroid/webkitsec/ZoomManager$ScaleDetectorListener;
    new-instance v3, Landroid/view/ScaleGestureDetector;

    invoke-direct {v3, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v3, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 1095
    new-instance v3, Landroid/webkitsec/TiltListener;

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-direct {v3, p1, v0, v4}, Landroid/webkitsec/TiltListener;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/view/ScaleGestureDetector;)V

    iput-object v3, p0, Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;

    .line 1096
    new-instance v3, Landroid/webkitsec/MouseWheelListener;

    iget-object v4, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-direct {v3, p1, v0, v4}, Landroid/webkitsec/MouseWheelListener;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/view/ScaleGestureDetector;)V

    iput-object v3, p0, Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;

    .line 1098
    sget-object v3, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v3, :cond_4

    .line 1099
    const-string/jumbo v3, "motion_recognition"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object v3, Landroid/webkitsec/ZoomManager;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1107
    .end local v0    # "listener":Landroid/webkitsec/ZoomManager$ScaleDetectorListener;
    :cond_4
    :goto_1
    return-void

    :cond_5
    move v3, v5

    .line 1081
    goto :goto_0

    .line 1102
    :cond_6
    iget-boolean v3, p0, Landroid/webkitsec/ZoomManager;->mSupportMultiTouch:Z

    if-nez v3, :cond_4

    iget-object v3, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    if-eqz v3, :cond_4

    .line 1103
    iput-object v6, p0, Landroid/webkitsec/ZoomManager;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 1104
    iput-object v6, p0, Landroid/webkitsec/ZoomManager;->mTiltListener:Landroid/webkitsec/TiltListener;

    .line 1105
    iput-object v6, p0, Landroid/webkitsec/ZoomManager;->mMouseWheelListener:Landroid/webkitsec/MouseWheelListener;

    goto :goto_1
.end method

.method public updateZoomPicker()V
    .locals 1

    .prologue
    .line 1746
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->getCurrentZoomControl()Landroid/webkitsec/ZoomControlBase;

    move-result-object v0

    .line 1747
    .local v0, "control":Landroid/webkitsec/ZoomControlBase;
    if-eqz v0, :cond_0

    .line 1748
    invoke-interface {v0}, Landroid/webkitsec/ZoomControlBase;->update()V

    .line 1750
    :cond_0
    return-void
.end method

.method public updateZoomRange(Landroid/webkitsec/WebViewCore$ViewState;II)V
    .locals 4
    .param p1, "viewState"    # Landroid/webkitsec/WebViewCore$ViewState;
    .param p2, "viewWidth"    # I
    .param p3, "minPrefWidth"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 1496
    iget v0, p1, Landroid/webkitsec/WebViewCore$ViewState;->mMinScale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    .line 1497
    iget-boolean v0, p1, Landroid/webkitsec/WebViewCore$ViewState;->mMobileSite:Z

    if-eqz v0, :cond_1

    .line 1498
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p3, v0, :cond_0

    .line 1499
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    .line 1500
    iput-boolean v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    .line 1513
    :goto_0
    iget v0, p1, Landroid/webkitsec/WebViewCore$ViewState;->mMaxScale:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_3

    .line 1514
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultMaxZoomScale:F

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    .line 1518
    :goto_1
    invoke-direct {p0}, Landroid/webkitsec/ZoomManager;->sanitizeMinMaxScales()V

    .line 1519
    return-void

    .line 1502
    :cond_0
    iget v0, p1, Landroid/webkitsec/WebViewCore$ViewState;->mDefaultScale:F

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    .line 1503
    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1506
    :cond_1
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mDefaultMinZoomScale:F

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    .line 1507
    iput-boolean v2, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1510
    :cond_2
    iget v0, p1, Landroid/webkitsec/WebViewCore$ViewState;->mMinScale:F

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScale:F

    .line 1511
    iput-boolean v1, p0, Landroid/webkitsec/ZoomManager;->mMinZoomScaleFixed:Z

    goto :goto_0

    .line 1516
    :cond_3
    iget v0, p1, Landroid/webkitsec/WebViewCore$ViewState;->mMaxScale:F

    iput v0, p0, Landroid/webkitsec/ZoomManager;->mMaxZoomScale:F

    goto :goto_1
.end method

.method public willScaleTriggerZoom(F)Z
    .locals 1
    .param p1, "scale"    # F

    .prologue
    .line 470
    iget v0, p0, Landroid/webkitsec/ZoomManager;->mActualScale:F

    invoke-static {p1, v0}, Landroid/webkitsec/ZoomManager;->exceedsMinScaleIncrement(FF)Z

    move-result v0

    return v0
.end method

.method public zoomIn()Z
    .locals 1

    .prologue
    .line 482
    const/high16 v0, 0x3fa00000    # 1.25f

    invoke-direct {p0, v0}, Landroid/webkitsec/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 1

    .prologue
    .line 486
    const v0, 0x3f4ccccd    # 0.8f

    invoke-direct {p0, v0}, Landroid/webkitsec/ZoomManager;->zoom(F)Z

    move-result v0

    return v0
.end method
