.class final Landroid/webkitsec/WebViewInputDispatcher;
.super Ljava/lang/Object;
.source "WebViewInputDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebViewInputDispatcher$1;,
        Landroid/webkitsec/WebViewInputDispatcher$TouchStream;,
        Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;,
        Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;,
        Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;,
        Landroid/webkitsec/WebViewInputDispatcher$UiHandler;,
        Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;,
        Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DEBUG:Z = false

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final ENABLE_EVENT_BATCHING:Z = true

.field public static ENABLE_TOUCH_PERFORMANCE_PATCH:Z = false

.field public static final EVENT_TYPE_CLICK:I = 0x4

.field public static final EVENT_TYPE_DOUBLE_TAP:I = 0x5

.field public static final EVENT_TYPE_HIT_TEST:I = 0x6

.field public static final EVENT_TYPE_HOVER:I = 0x1

.field public static final EVENT_TYPE_LONG_PRESS:I = 0x3

.field public static final EVENT_TYPE_SCROLL:I = 0x2

.field public static final EVENT_TYPE_TOUCH:I = 0x0

.field public static final FLAG_PRIVATE:I = 0x1

.field public static final FLAG_WEBKIT_IN_PROGRESS:I = 0x2

.field public static final FLAG_WEBKIT_TIMEOUT:I = 0x4

.field public static final FLAG_WEBKIT_TRANSFORMED_EVENT:I = 0x8

.field private static final HITTEST_TIMEOUT:I = 0x20

.field private static final LONG_PRESS_TIMEOUT:I

.field private static final MAX_DISPATCH_EVENT_POOL_SIZE:I = 0xa

.field private static final PRESSED_STATE_DURATION:I

.field static final PREVENT_DEFAULT_MAYBE_YES:I = 0x0

.field static final PREVENT_DEFAULT_NO:I = 0x2

.field static final PREVENT_DEFAULT_YES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WebViewInputDispatcher"

.field private static final TAP_TIMEOUT:I

.field private static final WEBKIT_TIMEOUT_MILLIS:J = 0xc8L


# instance fields
.field private mButtonActionMouse:Z

.field private mClickOnSelectHandleCenter:Z

.field private mDispatchEventPool:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

.field private mDispatchEventPoolSize:I

.field private mDoubleTapSlopSquared:F

.field private mInitialDownX:F

.field private mInitialDownY:F

.field private mIsDoubleTapCandidate:Z

.field private mIsTapCandidate:Z

.field private mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

.field private final mLock:Ljava/lang/Object;

.field private mPostClickScheduled:Z

.field private mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

.field private mPostHideTapHighlightScheduled:Z

.field mPostHitTestScheduled:Z

.field private mPostLastWebKitScale:F

.field private mPostLastWebKitXOffset:I

.field private mPostLastWebKitYOffset:I

.field private mPostLongPressScheduled:Z

.field private mPostSendTouchEventsToWebKit:Z

.field private mPostShowTapHighlightScheduled:Z

.field private final mPostTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

.field mPreventDefault:I

.field private mPreventDefaultYes:Z

.field private mTouchInput:Z

.field private mTouchSlopSquared:F

.field private mUIShouldSkipEvent:Z

.field private final mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

.field private final mUiDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

.field private mUiDispatchScheduled:Z

.field private final mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

.field private final mUiTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

.field private final mWebKitCallbacks:Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

.field private final mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

.field private mWebKitDispatchScheduled:Z

.field private final mWebKitHandler:Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;

.field private mWebKitTimeoutScheduled:Z

.field private mWebKitTimeoutTime:J

.field private final mWebKitTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

.field private mWebkitShouldSkipEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 78
    const-class v0, Landroid/webkitsec/WebViewInputDispatcher;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->$assertionsDisabled:Z

    .line 80
    sput-boolean v1, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    .line 148
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/webkitsec/WebViewInputDispatcher;->TAP_TIMEOUT:I

    .line 149
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sget v2, Landroid/webkitsec/WebViewInputDispatcher;->TAP_TIMEOUT:I

    add-int/2addr v0, v2

    sput v0, Landroid/webkitsec/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    .line 151
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/webkitsec/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    .line 152
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    sput v0, Landroid/webkitsec/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    .line 248
    sput-boolean v1, Landroid/webkitsec/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    return-void

    :cond_0
    move v0, v1

    .line 78
    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;)V
    .locals 4
    .param p1, "uiCallbacks"    # Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;
    .param p2, "webKitCallbacks"    # Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    .line 97
    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v3}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    .line 108
    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebkitShouldSkipEvent:Z

    .line 118
    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v3}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    .line 119
    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v3}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    .line 127
    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-direct {v1, v3}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;-><init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    .line 128
    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-direct {v1, v3}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;-><init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    .line 136
    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUIShouldSkipEvent:Z

    .line 252
    iput v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefault:I

    .line 626
    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    .line 895
    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchInput:Z

    .line 896
    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mClickOnSelectHandleCenter:Z

    .line 255
    iput-object p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    .line 256
    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    invoke-interface {p1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->getUiLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/WebViewInputDispatcher$UiHandler;-><init>(Landroid/webkitsec/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    .line 258
    iput-object p2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    .line 259
    new-instance v1, Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;

    invoke-interface {p2}, Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;->getWebKitLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;-><init>(Landroid/webkitsec/WebViewInputDispatcher;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;

    .line 261
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 264
    .local v0, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    .line 266
    iget v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    iget v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    .line 267
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchSlopSquared:F

    .line 270
    iget v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchSlopSquared:F

    iget v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchSlopSquared:F

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchSlopSquared:F

    .line 271
    return-void
.end method

.method static synthetic access$300(Landroid/webkitsec/WebViewInputDispatcher;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewInputDispatcher;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkitsec/WebViewInputDispatcher;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewInputDispatcher;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->handleWebKitTimeout()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkitsec/WebViewInputDispatcher;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewInputDispatcher;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->postLongPress()V

    return-void
.end method

.method static synthetic access$600(Landroid/webkitsec/WebViewInputDispatcher;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewInputDispatcher;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->postClick()V

    return-void
.end method

.method static synthetic access$700(Landroid/webkitsec/WebViewInputDispatcher;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewInputDispatcher;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->postShowTapHighlight(Z)V

    return-void
.end method

.method static synthetic access$800(Landroid/webkitsec/WebViewInputDispatcher;Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewInputDispatcher;
    .param p1, "x1"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->handleHitTestMsg(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    return-void
.end method

.method static synthetic access$900(Landroid/webkitsec/WebViewInputDispatcher;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/WebViewInputDispatcher;
    .param p1, "x1"    # Z

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    return-void
.end method

.method private batchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 2
    .param p1, "in"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .param p2, "tail"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 1229
    if-eqz p2, :cond_0

    iget-object v0, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iget v1, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iget v1, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iget v1, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iget v1, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iget v1, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1235
    iget-object v0, p2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    iget-object v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->addBatch(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1237
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 580
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    .line 581
    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v2, :cond_1

    .line 596
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    iget-object v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v2}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->canZoomOutOrZoomIn()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    iget v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 591
    .local v0, "deltaX":I
    iget v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 592
    .local v1, "deltaY":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDoubleTapSlopSquared:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 593
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 594
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    goto :goto_0
.end method

.method private checkForSlopLocked(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 659
    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v2, :cond_1

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 662
    :cond_1
    iget v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mInitialDownX:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int v0, v2, v3

    .line 663
    .local v0, "deltaX":I
    iget v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mInitialDownY:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    sub-int v1, v2, v3

    .line 664
    .local v1, "deltaY":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchSlopSquared:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 665
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 666
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 667
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_0
.end method

.method private copyDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .locals 3
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 1257
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 1258
    .local v0, "copy":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    iget-object v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v1, :cond_0

    .line 1259
    iget-object v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1261
    :cond_0
    iget v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    iput v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 1262
    iget v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    iput v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1263
    iget-wide v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1264
    iget v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    .line 1265
    iget v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    .line 1266
    iget v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    .line 1267
    iget-object v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1268
    return-object v0
.end method

.method private dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "eventType"    # I
    .param p3, "flags"    # I

    .prologue
    .line 1078
    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1079
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatchUiEvent: event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", eventType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", flags="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1, p2, p3}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    .line 1083
    return-void
.end method

.method private dispatchUiEvents(Z)V
    .locals 9
    .param p1, "calledFromHandler"    # Z

    .prologue
    const/4 v8, 0x1

    .line 1015
    sget-boolean v4, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1016
    const-string v4, "WebViewInputDispatcher"

    const-string v5, "dispatchUiEvents Enter "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    :cond_0
    :goto_0
    iget-object v5, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1023
    :try_start_0
    iget-object v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 1024
    .local v0, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    if-nez v0, :cond_3

    .line 1025
    iget-boolean v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-eqz v4, :cond_1

    .line 1026
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    .line 1027
    if-nez p1, :cond_1

    .line 1028
    iget-object v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 1031
    :cond_1
    sget-boolean v4, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 1032
    const-string v4, "WebViewInputDispatcher"

    const-string v6, "dispatchUiEvents Finish "

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    :cond_2
    monitor-exit v5

    return-void

    .line 1037
    :cond_3
    iget-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1038
    .local v1, "event":Landroid/view/MotionEvent;
    if-eqz v1, :cond_4

    iget v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_4

    .line 1039
    const/high16 v4, 0x3f800000    # 1.0f

    iget v6, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    div-float/2addr v4, v6

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->scale(F)V

    .line 1040
    iget v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    neg-int v4, v4

    int-to-float v4, v4

    iget v6, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v4, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1041
    iget v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1044
    :cond_4
    if-eqz v0, :cond_5

    iget-object v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 1045
    const/4 v4, 0x0

    iput-boolean v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchInput:Z

    .line 1048
    :cond_5
    iget v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 1049
    .local v2, "eventType":I
    if-nez v2, :cond_6

    .line 1050
    iget-object v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v4, v1}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 1051
    sget-boolean v4, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v4, :cond_6

    if-nez v1, :cond_6

    iget-object v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v4, :cond_6

    .line 1052
    const-string v4, "WebViewInputDispatcher"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dispatchUiEvents: dropped event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    :cond_6
    iget v3, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1058
    .local v3, "flags":I
    iget-object v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-ne v1, v4, :cond_7

    .line 1059
    const/4 v4, 0x0

    iput-object v4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1061
    :cond_7
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 1063
    const/4 v4, 0x4

    if-ne v2, v4, :cond_8

    .line 1064
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    .line 1066
    :cond_8
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1069
    if-eqz v1, :cond_0

    .line 1070
    invoke-direct {p0, v1, v2, v3}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchUiEvent(Landroid/view/MotionEvent;II)V

    .line 1071
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    goto/16 :goto_0

    .line 1066
    .end local v0    # "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .end local v1    # "event":Landroid/view/MotionEvent;
    .end local v2    # "eventType":I
    .end local v3    # "flags":I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "eventType"    # I
    .param p3, "flags"    # I

    .prologue
    .line 912
    sget-boolean v1, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 913
    const-string v1, "WebViewInputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWebKitEvent: event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", eventType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    invoke-interface {v1, p0, p1, p2, p3}, Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;->dispatchWebKitEvent(Landroid/webkitsec/WebViewInputDispatcher;Landroid/view/MotionEvent;II)Z

    move-result v0

    .line 918
    .local v0, "preventDefault":Z
    sget-boolean v1, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 919
    const-string v1, "WebViewInputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchWebKitEvent: preventDefault="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_1
    return v0
.end method

.method private dispatchWebKitEvents(Z)V
    .locals 14
    .param p1, "calledFromHandler"    # Z

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 741
    sget-boolean v8, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v8, :cond_0

    .line 742
    const-string v8, "WebViewInputDispatcher"

    const-string v9, "dispatchWebKitEvents Enter "

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    :cond_0
    :goto_0
    iget-object v8, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 755
    :try_start_0
    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v9, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 756
    .local v0, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    if-nez v0, :cond_3

    .line 757
    iget-boolean v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-eqz v6, :cond_1

    .line 758
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    .line 759
    if-nez p1, :cond_1

    .line 760
    iget-object v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 764
    :cond_1
    sget-boolean v6, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v6, :cond_2

    .line 765
    const-string v6, "WebViewInputDispatcher"

    const-string v7, "dispatchWebKitEvents Finish "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 767
    :cond_2
    monitor-exit v8

    return-void

    .line 770
    :cond_3
    iget-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 771
    .local v1, "event":Landroid/view/MotionEvent;
    if-eqz v1, :cond_4

    .line 772
    iget v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    int-to-float v9, v9

    iget v10, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 773
    iget v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    invoke-virtual {v1, v9}, Landroid/view/MotionEvent;->scale(F)V

    .line 774
    iget v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v9, v9, 0x8

    iput v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 777
    :cond_4
    iget v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 778
    .local v2, "eventType":I
    if-nez v2, :cond_5

    .line 779
    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v9, v1}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 780
    sget-boolean v9, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v9, :cond_5

    if-nez v1, :cond_5

    iget-object v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v9, :cond_5

    .line 781
    const-string v9, "WebViewInputDispatcher"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dispatchWebKitEvents: dropped event "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_5
    iget v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v9, v9, 0x2

    iput v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 786
    iget v3, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 787
    .local v3, "flags":I
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 791
    if-nez v1, :cond_b

    .line 792
    const/4 v4, 0x0

    .line 820
    .local v4, "preventDefault":Z
    :goto_1
    iget-object v8, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 821
    :try_start_1
    iget v3, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 822
    and-int/lit8 v9, v3, -0x3

    iput v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 823
    iget-object v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eq v1, v9, :cond_e

    move v5, v6

    .line 825
    .local v5, "recycleEvent":Z
    :goto_2
    if-eqz v0, :cond_6

    iget-object v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v9, :cond_6

    iget-object v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v9}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v6, :cond_6

    .line 826
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchInput:Z

    .line 829
    :cond_6
    and-int/lit8 v9, v3, 0x4

    if-eqz v9, :cond_f

    .line 831
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 862
    :cond_7
    :goto_3
    sget-boolean v9, Landroid/webkitsec/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    if-eqz v9, :cond_8

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-ne v9, v12, :cond_8

    iget-boolean v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefaultYes:Z

    if-nez v9, :cond_8

    iget v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-nez v9, :cond_8

    iget v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefault:I

    if-nez v9, :cond_8

    .line 866
    if-eqz v4, :cond_13

    .line 868
    const/4 v9, 0x1

    iput v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefault:I

    .line 881
    :goto_4
    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    const/4 v10, 0x0

    invoke-interface {v9, v10}, Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;->blockWebkitDraw(Z)V

    .line 884
    :cond_8
    if-eqz v1, :cond_9

    if-eqz v5, :cond_9

    .line 885
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 888
    :cond_9
    const/4 v9, 0x4

    if-ne v2, v9, :cond_a

    .line 889
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleHideTapHighlightLocked()V

    .line 891
    :cond_a
    monitor-exit v8

    goto/16 :goto_0

    .end local v5    # "recycleEvent":Z
    :catchall_0
    move-exception v6

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 787
    .end local v0    # "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .end local v1    # "event":Landroid/view/MotionEvent;
    .end local v2    # "eventType":I
    .end local v3    # "flags":I
    .end local v4    # "preventDefault":Z
    :catchall_1
    move-exception v6

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 795
    .restart local v0    # "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .restart local v1    # "event":Landroid/view/MotionEvent;
    .restart local v2    # "eventType":I
    .restart local v3    # "flags":I
    :cond_b
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-eqz v8, :cond_c

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-ne v8, v13, :cond_d

    .line 796
    :cond_c
    iput-boolean v7, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefaultYes:Z

    .line 798
    invoke-virtual {v1, v7}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v8

    if-ne v8, v13, :cond_d

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v8

    if-ne v8, v12, :cond_d

    .line 800
    iput-boolean v7, p0, Landroid/webkitsec/WebViewInputDispatcher;->mButtonActionMouse:Z

    .line 815
    :cond_d
    invoke-direct {p0, v1, v2, v3}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchWebKitEvent(Landroid/view/MotionEvent;II)Z

    move-result v4

    .restart local v4    # "preventDefault":Z
    goto :goto_1

    :cond_e
    move v5, v7

    .line 823
    goto :goto_2

    .line 834
    .restart local v5    # "recycleEvent":Z
    :cond_f
    :try_start_3
    sget-boolean v9, Landroid/webkitsec/WebViewInputDispatcher;->$assertionsDisabled:Z

    if-nez v9, :cond_10

    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v9, v9, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    if-eq v9, v0, :cond_10

    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v6

    .line 835
    :cond_10
    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v9}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->dequeue()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 837
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    .line 839
    and-int/lit8 v9, v3, 0x1

    if-eqz v9, :cond_11

    .line 841
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_3

    .line 842
    :cond_11
    if-eqz v4, :cond_12

    .line 844
    iget v9, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-nez v9, :cond_7

    .line 845
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueUiCancelTouchEventIfNeededLocked()V

    .line 846
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 848
    invoke-virtual {v1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    if-nez v9, :cond_7

    .line 849
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefaultYes:Z

    .line 850
    sget-boolean v9, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v9, :cond_7

    .line 851
    const-string v9, "WebViewInputDispatcher"

    const-string v10, "dispatchWebKitEvents: set mPreventDefaultYes to true!"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 858
    :cond_12
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    goto/16 :goto_3

    .line 872
    :cond_13
    const/4 v9, 0x2

    iput v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefault:I

    .line 873
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .line 874
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->handleWebKitTimeout()V

    .line 879
    const-string v9, "WebViewInputDispatcher"

    const-string v10, "DoNotSend"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method private drainStaleWebKitEventsLocked()V
    .locals 3

    .prologue
    .line 930
    iget-object v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 933
    .local v0, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    if-eqz v2, :cond_0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, v2}, Landroid/webkitsec/WebViewInputDispatcher;->isMoveEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 934
    iget-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 935
    .local v1, "next":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 936
    move-object v0, v1

    .line 937
    goto :goto_0

    .line 938
    .end local v1    # "next":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    :cond_0
    iget-object v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iput-object v0, v2, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 939
    return-void
.end method

.method private enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 609
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 610
    .local v1, "eventToEnqueue":Landroid/view/MotionEvent;
    const/4 v2, 0x5

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 612
    .local v7, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 613
    return-void
.end method

.method private enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 1086
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->shouldSkipWebKit(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1087
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueWebKitEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 1097
    :cond_0
    :goto_0
    return-void

    .line 1089
    :cond_1
    const/4 v0, 0x0

    .line 1090
    .local v0, "skipUIEvent":Z
    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUIShouldSkipEvent:Z

    if-eqz v1, :cond_2

    iget v1, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 1091
    const/4 v0, 0x1

    .line 1093
    :cond_2
    if-nez v0, :cond_0

    .line 1094
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueUiEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueHitTestLocked(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 616
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->clearPreviousHitTest()V

    .line 617
    invoke-static {p1}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 618
    .local v1, "eventToEnqueue":Landroid/view/MotionEvent;
    const/4 v2, 0x6

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 623
    .local v7, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 624
    return-void
.end method

.method private enqueueUiCancelTouchEventIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 1189
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1190
    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 1192
    .local v7, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 1194
    .end local v7    # "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    return-void
.end method

.method private enqueueUiEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 1197
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebViewInputDispatcher;->batchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1198
    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1199
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueUiEventLocked: batched event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 1205
    :goto_0
    return-void

    .line 1203
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueUiEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 1208
    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1209
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueUiEventUnbatchedLocked: enqueued event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 1212
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleUiDispatchLocked()V

    .line 1213
    return-void
.end method

.method private enqueueWebKitCancelTouchEventIfNeededLocked()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1129
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->isCancelNeeded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1130
    :cond_0
    const/4 v1, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 1132
    .local v7, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 1133
    iput-boolean v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .line 1135
    .end local v7    # "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    :cond_1
    return-void
.end method

.method private enqueueWebKitEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 1138
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mTail:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, p1, v0}, Landroid/webkitsec/WebViewInputDispatcher;->batchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1139
    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1140
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueWebKitEventLocked: batched event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1142
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 1146
    :goto_0
    return-void

    .line 1144
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueWebKitEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private enqueueWebKitEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 3
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 1149
    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1150
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enqueueWebKitEventUnbatchedLocked: enqueued event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v0, p1}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->enqueue(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 1153
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleWebKitDispatchLocked()V

    .line 1154
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->updateWebKitTimeoutLocked()V

    .line 1155
    return-void
.end method

.method private handleHitTestMsg(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 4
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 641
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    .line 643
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v0, :cond_0

    .line 645
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 646
    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 647
    monitor-exit v1

    .line 656
    :goto_0
    return-void

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 651
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0xc8

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 652
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 653
    :try_start_1
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 654
    monitor-exit v1

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private handleWebKitTimeout()V
    .locals 5

    .prologue
    .line 949
    iget-object v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 950
    :try_start_0
    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-nez v2, :cond_0

    .line 951
    monitor-exit v3

    .line 990
    :goto_0
    return-void

    .line 953
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 955
    sget-boolean v2, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 956
    const-string v2, "WebViewInputDispatcher"

    const-string v4, "handleWebKitTimeout: timeout occurred!"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :cond_1
    iget-object v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->dequeueList()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 962
    .local v0, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    if-nez v0, :cond_2

    .line 963
    monitor-exit v3

    goto :goto_0

    .line 989
    .end local v0    # "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 968
    .restart local v0    # "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    :cond_2
    :try_start_1
    iget v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 969
    iget v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 970
    iget v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    .line 971
    iget-object v0, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 979
    :cond_3
    :goto_1
    if-eqz v0, :cond_5

    .line 980
    iget-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 981
    .local v1, "next":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->skipWebKitEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 982
    move-object v0, v1

    .line 983
    goto :goto_1

    .line 973
    .end local v1    # "next":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    :cond_4
    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->copyDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 974
    iget v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    goto :goto_1

    .line 988
    :cond_5
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    .line 989
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private hideTapCandidateLocked()V
    .locals 2

    .prologue
    .line 444
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 445
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 446
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 447
    return-void
.end method

.method private isClickCandidateLocked(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 599
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-boolean v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-nez v4, :cond_2

    :cond_0
    move v2, v3

    .line 605
    :cond_1
    :goto_0
    return v2

    .line 604
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v6

    sub-long v0, v4, v6

    .line 605
    .local v0, "downDuration":J
    sget v4, Landroid/webkitsec/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    move v2, v3

    goto :goto_0
.end method

.method private isMoveEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 2
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 925
    iget-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "eventType"    # I
    .param p3, "flags"    # I
    .param p4, "webKitXOffset"    # I
    .param p5, "webKitYOffset"    # I
    .param p6, "webKitScale"    # F

    .prologue
    .line 1242
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->obtainUninitializedDispatchEventLocked()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    .line 1243
    .local v0, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    iput-object p1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1244
    iput p2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    .line 1245
    iput p3, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 1246
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0xc8

    add-long/2addr v1, v3

    iput-wide v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    .line 1247
    iput p4, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    .line 1248
    iput p5, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    .line 1249
    iput p6, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    .line 1250
    sget-boolean v1, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1251
    const-string v1, "WebViewInputDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    :cond_0
    return-object v0
.end method

.method private obtainUninitializedDispatchEventLocked()Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1272
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1273
    .local v0, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_0

    .line 1274
    iget v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    .line 1275
    iget-object v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iput-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1276
    iput-object v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1280
    :goto_0
    return-object v0

    .line 1278
    :cond_0
    new-instance v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .end local v0    # "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {v0, v2}, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;-><init>(Landroid/webkitsec/WebViewInputDispatcher$1;)V

    .restart local v0    # "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    goto :goto_0
.end method

.method private postClick()V
    .locals 10

    .prologue
    .line 517
    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 518
    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-nez v0, :cond_0

    .line 519
    monitor-exit v9

    .line 540
    :goto_0
    return-void

    .line 521
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 523
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .line 524
    .local v8, "event":Landroid/view/MotionEvent;
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    .line 525
    :cond_1
    monitor-exit v9

    goto :goto_0

    .line 539
    .end local v8    # "event":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 528
    .restart local v8    # "event":Landroid/view/MotionEvent;
    :cond_2
    :try_start_1
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mButtonActionMouse:Z

    if-eqz v0, :cond_3

    .line 529
    monitor-exit v9

    goto :goto_0

    .line 533
    :cond_3
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->showTapCandidateLocked()V

    .line 534
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->hideKeyboradIfUneditable()V

    .line 535
    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 536
    .local v1, "eventToEnqueue":Landroid/view/MotionEvent;
    const/4 v2, 0x4

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 538
    .local v7, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 539
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private postLongPress()V
    .locals 10

    .prologue
    .line 414
    iget-object v9, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 415
    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-nez v0, :cond_0

    .line 416
    monitor-exit v9

    .line 441
    :goto_0
    return-void

    .line 418
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 420
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v8

    .line 421
    .local v8, "event":Landroid/view/MotionEvent;
    if-nez v8, :cond_1

    .line 422
    monitor-exit v9

    goto :goto_0

    .line 440
    .end local v8    # "event":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 425
    .restart local v8    # "event":Landroid/view/MotionEvent;
    :cond_1
    :try_start_1
    invoke-virtual {v8}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 432
    :pswitch_0
    monitor-exit v9

    goto :goto_0

    .line 435
    :pswitch_1
    invoke-static {v8}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 436
    .local v1, "eventToEnqueue":Landroid/view/MotionEvent;
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 437
    const/4 v2, 0x3

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v7

    .line 439
    .local v7, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v7}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 440
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private postShowTapHighlight(Z)V
    .locals 2
    .param p1, "show"    # Z

    .prologue
    .line 484
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 485
    if-eqz p1, :cond_1

    .line 486
    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-nez v0, :cond_0

    .line 487
    monitor-exit v1

    .line 498
    :goto_0
    return-void

    .line 489
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 496
    :goto_1
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, p1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 497
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 491
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-nez v0, :cond_2

    .line 492
    monitor-exit v1

    goto :goto_0

    .line 494
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 2
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 1284
    iget-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1286
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 1289
    :cond_0
    iget v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    .line 1290
    iget v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPoolSize:I

    .line 1291
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iput-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1292
    iput-object p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mDispatchEventPool:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1294
    :cond_1
    return-void
.end method

.method private scheduleClickLocked()V
    .locals 4

    .prologue
    .line 501
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mClickOnSelectHandleCenter:Z

    if-eqz v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 505
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 506
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    sget v2, Landroid/webkitsec/WebViewInputDispatcher;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private scheduleHideTapHighlightLocked()V
    .locals 4

    .prologue
    .line 470
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 471
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    .line 472
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    sget v2, Landroid/webkitsec/WebViewInputDispatcher;->PRESSED_STATE_DURATION:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 474
    return-void
.end method

.method private scheduleHitTestLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 5
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    const/4 v2, 0x7

    const/4 v4, 0x1

    .line 629
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    if-ne v0, v4, :cond_0

    .line 631
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 632
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    .line 635
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x20

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 636
    iput-boolean v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHitTestScheduled:Z

    .line 637
    return-void
.end method

.method private scheduleLongPressLocked()V
    .locals 4

    .prologue
    .line 400
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 401
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 402
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    sget v2, Landroid/webkitsec/WebViewInputDispatcher;->LONG_PRESS_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 404
    return-void
.end method

.method private scheduleShowTapHighlightLocked()V
    .locals 4

    .prologue
    .line 456
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 457
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 458
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    sget v2, Landroid/webkitsec/WebViewInputDispatcher;->TAP_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 460
    return-void
.end method

.method private scheduleUiDispatchLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1216
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    if-nez v0, :cond_1

    .line 1217
    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1218
    const-string v0, "WebViewInputDispatcher"

    const-string/jumbo v1, "scheduleUiDispatchLocked: send MSG_DISPATCH_UI_EVENTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1221
    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiDispatchScheduled:Z

    .line 1223
    :cond_1
    return-void
.end method

.method private scheduleWebKitDispatchLocked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1158
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    if-nez v0, :cond_1

    .line 1159
    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1160
    const-string v0, "WebViewInputDispatcher"

    const-string/jumbo v1, "scheduleWebKitDispatchLocked: send MSG_DISPATCH_WEBKIT_EVENTS"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_0
    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->ENABLE_TOUCH_PERFORMANCE_PATCH:Z

    if-eqz v0, :cond_2

    .line 1163
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;

    const/4 v1, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 1166
    :goto_0
    iput-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchScheduled:Z

    .line 1168
    :cond_1
    return-void

    .line 1165
    :cond_2
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitHandler:Landroid/webkitsec/WebViewInputDispatcher$WebKitHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method private sendClickNow()V
    .locals 4

    .prologue
    .line 559
    iget-object v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 560
    :try_start_0
    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    if-nez v1, :cond_1

    .line 561
    :cond_0
    monitor-exit v2

    .line 576
    :goto_0
    return-void

    .line 563
    :cond_1
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 565
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    iget-object v0, v1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    .line 566
    .local v0, "event":Landroid/view/MotionEvent;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    .line 567
    :cond_2
    monitor-exit v2

    goto :goto_0

    .line 575
    .end local v0    # "event":Landroid/view/MotionEvent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 569
    .restart local v0    # "event":Landroid/view/MotionEvent;
    :cond_3
    :try_start_1
    sget-boolean v1, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v1, :cond_4

    .line 570
    const-string v1, "WebViewInputDispatcher"

    const-string/jumbo v3, "sendClickNow(): enque EVENT_TYPE_CLICK now!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_4
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->showTapCandidateLocked()V

    .line 573
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->hideKeyboradIfUneditable()V

    .line 574
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    invoke-direct {p0, v1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 575
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private shouldSkipWebKit(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)Z
    .locals 4
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1100
    iget v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v0, v1

    .line 1123
    :cond_0
    :goto_0
    :pswitch_1
    return v0

    .line 1104
    :pswitch_2
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebkitShouldSkipEvent:Z

    goto :goto_0

    .line 1116
    :pswitch_3
    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEvent:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v1

    .line 1118
    goto :goto_0

    .line 1120
    :cond_1
    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1100
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private showTapCandidateLocked()V
    .locals 2

    .prologue
    .line 450
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleHideTapHighlightLocked()V

    .line 451
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 452
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->showTapHighlight(Z)V

    .line 453
    return-void
.end method

.method private skipWebKitEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V
    .locals 1
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .prologue
    .line 993
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mNext:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 994
    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 995
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->recycleDispatchEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 1000
    :goto_0
    return-void

    .line 997
    :cond_0
    iget v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mFlags:I

    .line 998
    invoke-direct {p0, p1}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueUiEventUnbatchedLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    goto :goto_0
.end method

.method private storeLastClickEvent()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 544
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v0, :cond_2

    .line 545
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->getLastEvent()Landroid/view/MotionEvent;

    move-result-object v7

    .line 546
    .local v7, "event":Landroid/view/MotionEvent;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 547
    :cond_0
    iput-object v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 556
    .end local v7    # "event":Landroid/view/MotionEvent;
    :goto_0
    return-void

    .line 550
    .restart local v7    # "event":Landroid/view/MotionEvent;
    :cond_1
    invoke-static {v7}, Landroid/view/MotionEvent;->obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 551
    .local v1, "eventToEnqueue":Landroid/view/MotionEvent;
    const/4 v2, 0x4

    const/4 v3, 0x0

    iget v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    iget v5, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    iget v6, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    goto :goto_0

    .line 554
    .end local v1    # "eventToEnqueue":Landroid/view/MotionEvent;
    .end local v7    # "event":Landroid/view/MotionEvent;
    :cond_2
    iput-object v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLastDispatchEvent:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    goto :goto_0
.end method

.method private unscheduleClickLocked()V
    .locals 2

    .prologue
    .line 510
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    if-eqz v0, :cond_0

    .line 511
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostClickScheduled:Z

    .line 512
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 514
    :cond_0
    return-void
.end method

.method private unscheduleHideTapHighlightLocked()V
    .locals 2

    .prologue
    .line 477
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    .line 478
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostHideTapHighlightScheduled:Z

    .line 479
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 481
    :cond_0
    return-void
.end method

.method private unscheduleLongPressLocked()V
    .locals 2

    .prologue
    .line 407
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    if-eqz v0, :cond_0

    .line 408
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLongPressScheduled:Z

    .line 409
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 411
    :cond_0
    return-void
.end method

.method private unscheduleShowTapHighlightLocked()V
    .locals 2

    .prologue
    .line 463
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    .line 465
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 467
    :cond_0
    return-void
.end method

.method private updateStateTrackersLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "d"    # Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 672
    iget v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitXOffset:I

    iput v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitXOffset:I

    .line 673
    iget v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitYOffset:I

    iput v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitYOffset:I

    .line 674
    iget v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mWebKitScale:F

    iput v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostLastWebKitScale:F

    .line 675
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 676
    .local v0, "action":I
    :goto_0
    iget v2, p1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mEventType:I

    if-eqz v2, :cond_2

    .line 726
    :cond_0
    :goto_1
    return-void

    .end local v0    # "action":I
    :cond_1
    move v0, v1

    .line 675
    goto :goto_0

    .line 680
    .restart local v0    # "action":I
    :cond_2
    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mClickOnSelectHandleCenter:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostShowTapHighlightScheduled:Z

    if-eqz v2, :cond_3

    .line 681
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleShowTapHighlightLocked()V

    .line 684
    :cond_3
    if-eq v0, v1, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-le v1, v4, :cond_5

    .line 686
    :cond_4
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 687
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 688
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 689
    iput-boolean v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    .line 690
    iput-boolean v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 691
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 692
    :cond_5
    if-nez v0, :cond_8

    .line 693
    invoke-direct {p0, p2}, Landroid/webkitsec/WebViewInputDispatcher;->checkForDoubleTapOnDownLocked(Landroid/view/MotionEvent;)V

    .line 695
    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-nez v1, :cond_6

    .line 697
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->sendClickNow()V

    .line 700
    :cond_6
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleLongPressLocked()V

    .line 701
    iput-boolean v4, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsTapCandidate:Z

    .line 702
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mInitialDownX:F

    .line 703
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mInitialDownY:F

    .line 704
    invoke-direct {p0, p2}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueHitTestLocked(Landroid/view/MotionEvent;)V

    .line 705
    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_7

    .line 706
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 708
    :cond_7
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleShowTapHighlightLocked()V

    goto :goto_1

    .line 710
    :cond_8
    if-ne v0, v4, :cond_b

    .line 711
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    invoke-interface {v1, v3}, Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;->blockWebkitDraw(Z)V

    .line 712
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 713
    invoke-direct {p0, p2}, Landroid/webkitsec/WebViewInputDispatcher;->isClickCandidateLocked(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 714
    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mIsDoubleTapCandidate:Z

    if-eqz v1, :cond_9

    .line 715
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 716
    invoke-direct {p0, p2}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueDoubleTapLocked(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 718
    :cond_9
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->scheduleClickLocked()V

    goto :goto_1

    .line 721
    :cond_a
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    goto :goto_1

    .line 723
    :cond_b
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 724
    invoke-direct {p0, p2}, Landroid/webkitsec/WebViewInputDispatcher;->checkForSlopLocked(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method

.method private updateWebKitTimeoutLocked()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1171
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitDispatchEventQueue:Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;

    iget-object v0, v1, Landroid/webkitsec/WebViewInputDispatcher$DispatchEventQueue;->mHead:Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    .line 1172
    .local v0, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    iget-wide v3, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 1184
    :cond_0
    :goto_0
    return-void

    .line 1175
    :cond_1
    iget-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    if-eqz v1, :cond_2

    .line 1176
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    invoke-virtual {v1, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 1177
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 1179
    :cond_2
    if-eqz v0, :cond_0

    .line 1180
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiHandler:Landroid/webkitsec/WebViewInputDispatcher$UiHandler;

    iget-wide v2, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    invoke-virtual {v1, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 1181
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutScheduled:Z

    .line 1182
    iget-wide v1, v0, Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;->mTimeoutTime:J

    iput-wide v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitTimeoutTime:J

    goto :goto_0
.end method


# virtual methods
.method public dispatchUiEvents()V
    .locals 1

    .prologue
    .line 1011
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchUiEvents(Z)V

    .line 1012
    return-void
.end method

.method public dispatchWebKitEvents()V
    .locals 1

    .prologue
    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkitsec/WebViewInputDispatcher;->dispatchWebKitEvents(Z)V

    .line 738
    return-void
.end method

.method public isTouchInputHere()Z
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchInput:Z

    return v0
.end method

.method public postPointerEvent(Landroid/view/MotionEvent;IIF)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "webKitXOffset"    # I
    .param p3, "webKitYOffset"    # I
    .param p4, "webKitScale"    # F

    .prologue
    const/4 v9, 0x1

    const/4 v0, 0x0

    .line 323
    if-nez p1, :cond_0

    .line 324
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "event cannot be null"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 327
    :cond_0
    sget-boolean v3, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 328
    const-string v3, "WebViewInputDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "postPointerEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v7

    .line 333
    .local v7, "action":I
    packed-switch v7, :pswitch_data_0

    .line 396
    :goto_0
    :pswitch_0
    return v0

    .line 340
    :pswitch_1
    const/4 v2, 0x0

    .line 354
    .local v2, "eventType":I
    :goto_1
    iget-object v10, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 356
    move-object v1, p1

    .line 357
    .local v1, "eventToEnqueue":Landroid/view/MotionEvent;
    if-nez v2, :cond_4

    .line 359
    :try_start_0
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->storeLastClickEvent()V

    .line 361
    iget-object v3, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostTouchStream:Landroid/webkitsec/WebViewInputDispatcher$TouchStream;

    invoke-virtual {v3, p1}, Landroid/webkitsec/WebViewInputDispatcher$TouchStream;->update(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    .line 362
    if-nez v1, :cond_3

    .line 363
    sget-boolean v3, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v3, :cond_2

    .line 364
    const-string v3, "WebViewInputDispatcher"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "postPointerEvent: dropped event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_2
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleLongPressLocked()V

    .line 367
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->unscheduleClickLocked()V

    .line 368
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->hideTapCandidateLocked()V

    .line 369
    monitor-exit v10

    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 343
    .end local v1    # "eventToEnqueue":Landroid/view/MotionEvent;
    .end local v2    # "eventType":I
    :pswitch_2
    const/4 v2, 0x2

    .line 344
    .restart local v2    # "eventType":I
    goto :goto_1

    .line 348
    .end local v2    # "eventType":I
    :pswitch_3
    const/4 v2, 0x1

    .line 349
    .restart local v2    # "eventType":I
    goto :goto_1

    .line 372
    .restart local v1    # "eventToEnqueue":Landroid/view/MotionEvent;
    :cond_3
    if-nez v7, :cond_4

    :try_start_1
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eqz v0, :cond_4

    .line 373
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPreventDefault:I

    .line 376
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUiCallbacks:Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;

    invoke-interface {v0, v1}, Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 377
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    .line 378
    iget-object v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebKitCallbacks:Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;->blockWebkitDraw(Z)V

    .line 387
    :cond_4
    :goto_2
    if-ne v1, p1, :cond_5

    .line 388
    invoke-virtual {p1}, Landroid/view/MotionEvent;->copy()Landroid/view/MotionEvent;

    move-result-object v1

    .line 391
    :cond_5
    const/4 v3, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Landroid/webkitsec/WebViewInputDispatcher;->obtainDispatchEventLocked(Landroid/view/MotionEvent;IIIIF)Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;

    move-result-object v8

    .line 393
    .local v8, "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    invoke-direct {p0, v8, p1}, Landroid/webkitsec/WebViewInputDispatcher;->updateStateTrackersLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;Landroid/view/MotionEvent;)V

    .line 394
    invoke-direct {p0, v8}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueEventLocked(Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;)V

    .line 395
    monitor-exit v10

    move v0, v9

    .line 396
    goto :goto_0

    .line 379
    .end local v8    # "d":Landroid/webkitsec/WebViewInputDispatcher$DispatchEvent;
    :cond_6
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z

    if-eqz v0, :cond_4

    .line 381
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostDoNotSendTouchEventsToWebKitUntilNextGesture:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 333
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public setClickOnSelectHandleCenter(Z)V
    .locals 0
    .param p1, "ClickOnSelectHandleCenter"    # Z

    .prologue
    .line 907
    iput-boolean p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mClickOnSelectHandleCenter:Z

    .line 908
    return-void
.end method

.method public setTouchInputCameHere(Z)V
    .locals 0
    .param p1, "touchInputHere"    # Z

    .prologue
    .line 899
    iput-boolean p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mTouchInput:Z

    .line 900
    return-void
.end method

.method public setUIShouldSkipEvent(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 303
    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputDispatcher->UIShouldSkipEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 307
    :try_start_0
    iput-boolean p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mUIShouldSkipEvent:Z

    .line 308
    monitor-exit v1

    .line 309
    return-void

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWebKitWantsTouchEvents(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 280
    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 281
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "webkitWantsTouchEvents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 284
    :try_start_0
    iget-boolean v0, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    if-eq v0, p1, :cond_2

    .line 285
    if-nez p1, :cond_1

    .line 286
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->enqueueWebKitCancelTouchEventIfNeededLocked()V

    .line 288
    :cond_1
    iput-boolean p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mPostSendTouchEventsToWebKit:Z

    .line 290
    :cond_2
    monitor-exit v1

    .line 291
    return-void

    .line 290
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWebkitShouldSkipEvent(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 294
    sget-boolean v0, Landroid/webkitsec/WebViewInputDispatcher;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 295
    const-string v0, "WebViewInputDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InputDispatcher->WebkitShouldSkipEven: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 298
    :try_start_0
    iput-boolean p1, p0, Landroid/webkitsec/WebViewInputDispatcher;->mWebkitShouldSkipEvent:Z

    .line 299
    monitor-exit v1

    .line 300
    return-void

    .line 299
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public skipWebkitForRemainingTouchStream()V
    .locals 0

    .prologue
    .line 944
    invoke-direct {p0}, Landroid/webkitsec/WebViewInputDispatcher;->handleWebKitTimeout()V

    .line 945
    return-void
.end method
