.class public Landroid/widget/PopupWindow;
.super Ljava/lang/Object;
.source "PopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/PopupWindow$PopupViewContainer;,
        Landroid/widget/PopupWindow$OnDismissListener;
    }
.end annotation


# static fields
.field private static final ABOVE_ANCHOR_STATE_SET:[I

.field private static final DEFAULT_ANCHORED_GRAVITY:I = 0x800033

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2


# instance fields
.field private SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

.field private mAboveAnchor:Z

.field private mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mAllowScrollingAnchorParent:Z

.field private mAnchor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mAnchorXoff:I

.field private mAnchorYoff:I

.field private mAnchoredGravity:I

.field private mAnimationStyle:I

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private mClipToScreen:Z

.field private mClippingEnabled:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDimAmount:F

.field private mDimBehind:Z

.field private mDrawingLocation:[I

.field private mFocusable:Z

.field private mHeight:I

.field private mHeightMode:I

.field private mIgnoreCheekPress:Z

.field private mInputMethodMode:I

.field private mIsDropdown:Z

.field private mIsExtendActionBar:Z

.field private mIsShowing:Z

.field private mIsWindowPopupOutsideBound:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLayoutInScreen:Z

.field private mLayoutInsetDecor:Z

.field private mNotTouchModal:Z

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private mOutsideTouchable:Z

.field private mPopupHeight:I

.field private mPopupView:Landroid/view/View;

.field private mPopupViewInitialLayoutDirectionInherited:Z

.field private mPopupWidth:I

.field private mScreenLocation:[I

.field private mShowForAllUsers:Z

.field private mSoftInputMode:I

.field private mSplitTouchEnabled:I

.field private mStatusBarHeight:I

.field private mTempRect:Landroid/graphics/Rect;

.field private mTouchInterceptor:Landroid/view/View$OnTouchListener;

.field private mTouchable:Z

.field private mWidth:I

.field private mWidthMode:I

.field private mWindowLayoutType:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100aa

    aput v2, v0, v1

    sput-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/16 v7, 0x3e8

    iput v7, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    new-instance v7, Landroid/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const v7, 0x10301f8

    if-ne v2, v7, :cond_0

    const/4 v2, -0x1

    :cond_0
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110073

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsExtendActionBar:Z

    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_2

    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    sget-object v7, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    const/4 v4, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    if-eq v6, v1, :cond_3

    move v4, v6

    :cond_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    iput v1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;)I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$800()[I
    .locals 1

    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10301f2

    :goto_0
    return v0

    :cond_0
    const v0, 0x10301f1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3

    const/high16 v2, 0x20000

    const v0, -0x868219

    and-int/2addr p1, v0

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    const v0, 0x8000

    or-int/2addr p1, v0

    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    or-int/lit8 p1, p1, 0x8

    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    or-int/2addr p1, v2

    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    or-int/lit8 p1, p1, 0x10

    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    or-int/lit16 p1, p1, 0x200

    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    or-int/lit16 p1, p1, 0x100

    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    or-int/lit8 p1, p1, 0x20

    :cond_8
    return p1

    :cond_9
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    :cond_0
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PopupWindow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v0

    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 40

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget v37, v37, v38

    add-int v37, v37, p3

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    add-int v37, v37, v5

    add-int v37, v37, p4

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v37

    move/from16 v0, p5

    move/from16 v1, v37

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v37

    and-int/lit8 v11, v37, 0x7

    const/16 v37, 0x5

    move/from16 v0, v37

    if-ne v11, v0, :cond_0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v38, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v39

    sub-int v38, v38, v39

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    const/4 v15, 0x0

    const/16 v37, 0x33

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsExtendActionBar:Z

    move/from16 v37, v0

    if-eqz v37, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v37

    const/high16 v38, 0x40000000    # 2.0f

    and-int v37, v37, v38

    if-eqz v37, :cond_2

    const/4 v12, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v27

    if-eqz v27, :cond_1

    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewRootImpl;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v32

    if-eqz v32, :cond_1

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v37, v0

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0x400

    move/from16 v37, v0

    if-nez v37, :cond_1

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v37, v0

    const/high16 v38, 0x4000000

    and-int v37, v37, v38

    if-eqz v37, :cond_1

    const/4 v12, 0x1

    :cond_1
    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x105000c

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v37

    move/from16 v0, v37

    iput v0, v8, Landroid/graphics/Rect;->top:I

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    add-int v37, v37, v5

    add-int v21, v37, p4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    const/16 v33, 0x0

    move-object/from16 v0, v31

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v37, v0

    if-eqz v37, :cond_3

    move-object/from16 v33, v31

    check-cast v33, Landroid/view/WindowManager$LayoutParams;

    :cond_3
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    move/from16 v37, v0

    if-eqz v37, :cond_4

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v37, v0

    add-int v37, v37, v21

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v38

    sub-int v37, v37, v38

    if-lez v37, :cond_8

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v37, v0

    if-eqz v37, :cond_6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v23

    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v37, v0

    add-int v37, v37, v22

    add-int v37, v37, p3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v38, v0

    add-int v38, v38, v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v39

    add-int v38, v38, v39

    add-int v38, v38, p4

    move-object/from16 v0, v17

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v37

    move/from16 v4, v38

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v37, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget v37, v37, v38

    add-int v37, v37, p3

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v38

    add-int v37, v37, v38

    add-int v37, v37, p4

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    const/16 v37, 0x5

    move/from16 v0, v37

    if-ne v11, v0, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v38, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v39

    sub-int v38, v38, v39

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget v38, v38, v39

    sub-int v37, v37, v38

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v38

    sub-int v37, v37, v38

    sub-int v37, v37, p4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget v38, v38, v39

    sub-int v38, v38, p4

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v39, v0

    sub-int v38, v38, v39

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_15

    const/4 v15, 0x1

    :goto_0
    if-eqz v15, :cond_16

    const/16 v37, 0x53

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v37

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v38, v0

    const/16 v39, 0x1

    aget v38, v38, v39

    sub-int v37, v37, v38

    add-int v37, v37, p4

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v38

    sub-int v37, v37, v38

    if-lez v37, :cond_8

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 v38, v0

    add-int v37, v37, v38

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v38

    sub-int v7, v37, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    sub-int v37, v37, v7

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    if-gtz v37, :cond_8

    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_8
    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    if-eqz v37, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v37

    if-eqz v37, :cond_9

    const/16 v26, 0x0

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v37, v0

    if-eqz v37, :cond_13

    if-eqz v26, :cond_13

    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v38, v0

    sub-int v9, v37, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v38, v0

    add-int v18, v37, v38

    move/from16 v0, v18

    if-le v0, v9, :cond_a

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    sub-int v38, v18, v9

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_a
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_b

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v37, v0

    move/from16 v0, v37

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_b
    if-eqz v15, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    sub-int v37, v37, p4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 v38, v0

    sub-int v16, v37, v38

    const/16 v24, 0x0

    const-string/jumbo v37, "window"

    invoke-static/range {v37 .. v37}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v34

    :try_start_0
    invoke-interface/range {v34 .. v34}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v37

    if-eqz v37, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v37

    const v38, 0x105000c

    invoke-virtual/range {v37 .. v38}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v24

    :cond_c
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v37, v0

    sub-int v38, v24, v16

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    move/from16 v37, v0

    if-eqz v37, :cond_13

    if-eqz v33, :cond_13

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v38, v0

    sub-int v30, v37, v38

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    sub-int v29, v37, v38

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->getLocationOnScreen([I)V

    const/16 v18, 0x0

    const/4 v13, 0x0

    const/16 v25, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x3

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v35, v0

    :cond_e
    :goto_4
    const/16 v37, 0x0

    aget v37, v20, v37

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v38, v0

    add-int v37, v37, v38

    add-int v18, v37, p3

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    move/from16 v0, v18

    move/from16 v1, v37

    if-le v0, v1, :cond_f

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v38, v0

    sub-int v38, v18, v38

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_f
    const/16 v37, 0x0

    aget v37, v20, v37

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    add-int v13, v37, v38

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v13, v0, :cond_10

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v38, v0

    sub-int v38, v38, v13

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_10
    const/16 v37, 0x33

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v38

    add-int v37, v37, v38

    add-int v37, v37, p4

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x30

    const/16 v38, 0x30

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v36, v0

    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    move/from16 v37, v0

    if-eqz v37, :cond_1c

    const/16 v37, 0x1

    aget v37, v20, v37

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v38, v0

    add-int v37, v37, v38

    add-int v6, v37, p4

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move/from16 v0, v37

    if-le v6, v0, :cond_12

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v37, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v38, v6, v38

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    :cond_12
    const/16 v37, 0x1

    aget v37, v20, v37

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    add-int v25, v37, v38

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    move/from16 v0, v25

    move/from16 v1, v37

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v37, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    sub-int v38, v38, v25

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_13
    :goto_6
    if-nez v26, :cond_14

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v37, v0

    iget v0, v8, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-le v0, v1, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    add-int v37, v37, p4

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_14
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    const/high16 v38, 0x10000000

    or-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return v15

    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v38

    add-int v37, v37, v38

    add-int v37, v37, p4

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_1

    :catch_0
    move-exception v10

    const-string v37, "PopupWindow"

    invoke-virtual {v10}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_17
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v37, v0

    iget v0, v8, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    invoke-static/range {v37 .. v38}, Ljava/lang/Math;->max(II)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_3

    :cond_18
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x5

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_19

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getWidth()I

    move-result v38

    sub-int v37, v37, v38

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    sub-int v35, v37, v38

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x1

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_e

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v37, v0

    sub-int v37, v30, v37

    div-int/lit8 v37, v37, 0x2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    add-int v35, v37, v38

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x50

    const/16 v38, 0x50

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getHeight()I

    move-result v38

    sub-int v37, v37, v38

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    sub-int v36, v37, v38

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x10

    const/16 v38, 0x10

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v37, v0

    sub-int v37, v29, v37

    div-int/lit8 v37, v37, 0x2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    add-int v36, v37, v38

    goto/16 :goto_5

    :cond_1c
    const/16 v37, 0x1

    aget v37, v20, v37

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    move/from16 v38, v0

    add-int v37, v37, v38

    add-int v6, v37, p4

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move/from16 v0, v37

    if-le v6, v0, :cond_1d

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v37, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v38, v6, v38

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_1d
    const/16 v37, 0x1

    aget v37, v20, v37

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    add-int v25, v37, v38

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    move/from16 v0, v25

    move/from16 v1, v37

    if-ge v0, v1, :cond_13

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v37, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    sub-int v38, v38, v25

    add-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_6
.end method

.method private getMultiWindowMaximumHeight(Landroid/view/View;IIZ)I
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move v3, p3

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    if-nez p4, :cond_3

    add-int v4, p2, p3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, p2

    move v3, v1

    :cond_0
    :goto_0
    if-eq v3, p3, :cond_2

    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget-object v4, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    :cond_1
    move p3, v3

    :cond_2
    return p3

    :cond_3
    sub-int v4, p2, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-le p2, v4, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v4

    move v3, v2

    goto :goto_0
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10

    const/4 v9, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const/4 v6, 0x0

    instance-of v7, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_2

    move-object v6, v5

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput v9, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    if-eqz v6, :cond_3

    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v7, v8

    and-int/lit16 v7, v3, 0x404

    if-nez v7, :cond_3

    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    :cond_3
    iput v9, v4, Landroid/graphics/Rect;->left:I

    iget v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    if-eqz v7, :cond_4

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_4
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    if-eqz v0, :cond_1

    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v0, -0x1

    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    const/4 v0, -0x2

    :cond_2
    new-instance v3, Landroid/widget/PopupWindow$PopupViewContainer;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupViewContainer;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow$PopupViewContainer;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/widget/PopupWindow$PopupViewContainer;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    :goto_0
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    iget v4, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    return-void

    :cond_3
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    :cond_0
    return-void
.end method

.method private setWindowPopup(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private update(Landroid/view/View;ZIIZIII)V
    .locals 27

    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    if-eqz p2, :cond_b

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p3

    if-ne v5, v0, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p4

    if-eq v5, v0, :cond_b

    :cond_2
    const/4 v15, 0x1

    :goto_1
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_3

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v5, :cond_c

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    if-eqz p5, :cond_5

    const/4 v5, -0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    :goto_3
    const/4 v5, -0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    :cond_5
    :goto_4
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v25, v0

    if-eqz p2, :cond_f

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p8

    invoke-direct/range {v5 .. v10}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    :goto_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v5, :cond_9

    const/16 v26, 0x0

    const/16 v19, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v17

    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v22

    instance-of v5, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_6

    move-object/from16 v23, v22

    check-cast v23, Landroid/view/WindowManager$LayoutParams;

    :cond_6
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v21, v5, v6

    if-eqz v23, :cond_9

    move-object/from16 v0, v23

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_10

    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v26, v0

    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    if-eqz v5, :cond_12

    const/4 v5, 0x1

    aget v5, v18, v5

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v6

    add-int v5, v5, p7

    add-int v14, v5, p4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v14, v5, :cond_8

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v14, v5

    sub-int p7, p7, v5

    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    :cond_8
    const/4 v5, 0x1

    aget v5, v18, v5

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v19, v5, v6

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v19

    if-ge v0, v5, :cond_9

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v6, v19

    add-int/2addr v5, v6

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_9
    :goto_7
    iget v9, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v10, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v0, v24

    if-ne v0, v5, :cond_a

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v0, v25

    if-eq v0, v5, :cond_14

    :cond_a
    const/4 v13, 0x1

    :goto_8
    move-object/from16 v8, p0

    move/from16 v11, p6

    move/from16 v12, p7

    invoke-virtual/range {v8 .. v13}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_1

    :cond_c
    if-eqz v15, :cond_4

    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    goto/16 :goto_2

    :cond_d
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto/16 :goto_3

    :cond_e
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto/16 :goto_4

    :cond_f
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    move-object/from16 v0, p0

    iget v9, v0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    goto/16 :goto_5

    :cond_10
    move-object/from16 v0, v23

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x50

    const/16 v6, 0x50

    if-ne v5, v6, :cond_11

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v26, v5, v6

    goto/16 :goto_6

    :cond_11
    move-object/from16 v0, v23

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_7

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->height:I

    sub-int v5, v21, v5

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v26, v5, v6

    goto/16 :goto_6

    :cond_12
    const/4 v5, 0x1

    aget v5, v18, v5

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v5, v6

    add-int v14, v5, p4

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v14, v5, :cond_13

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v14, v6

    sub-int/2addr v5, v6

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    :cond_13
    const/4 v5, 0x1

    aget v5, v18, v5

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v19, v5, v6

    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v19

    if-ge v0, v5, :cond_9

    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v6, v19

    add-int/2addr v5, v6

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_7

    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_8
.end method

.method private updateAboveAnchor(Z)V
    .locals 2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    :try_start_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    const-string v0, "PopupWindow"

    const-string/jumbo v1, "mPopupView\'s parent already removed. so we don\'t remove this view."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_4
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 20

    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    const/4 v9, 0x0

    if-nez p1, :cond_1

    const-string v18, "PopupWindow"

    const-string v19, "anchor is null, cannot do getMaxAvailableHeight."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, -0x1

    :cond_0
    :goto_0
    return v13

    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    if-eqz p1, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    const/16 v17, 0x0

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v17, v16

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    if-nez v18, :cond_7

    const/4 v10, 0x0

    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/PopupWindow;->setWindowPopup(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/4 v9, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsExtendActionBar:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    if-nez v18, :cond_4

    if-eqz p1, :cond_4

    const/16 v18, 0x1

    move/from16 v0, v18

    if-eq v9, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v17, v16

    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, v17

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v15

    const/high16 v18, 0x40000000    # 2.0f

    and-int v18, v18, v15

    if-eqz v18, :cond_4

    const/high16 v18, 0x4000000

    and-int v18, v18, v7

    if-eqz v18, :cond_4

    and-int/lit16 v0, v7, 0x400

    move/from16 v18, v0

    if-nez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x105000c

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    move/from16 v0, v18

    iput v0, v4, Landroid/graphics/Rect;->top:I

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    if-eqz p3, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_5
    const/16 v18, 0x1

    aget v18, v2, v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v19

    add-int v18, v18, v19

    sub-int v18, v3, v18

    sub-int v5, v18, p2

    const/16 v18, 0x1

    aget v18, v2, v18

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int v6, v18, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v8, v18, 0x2

    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    add-int v18, v18, v19

    sub-int v13, v13, v18

    goto/16 :goto_0

    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method public getSoftInputMode()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    goto :goto_0
.end method

.method public setDimBehind(ZF)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    iput p2, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    return-void
.end method

.method public setFocusable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return-void
.end method

.method public setLayoutInMultiWindowScreenEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return-void
.end method

.method public setShowForAllUsers(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0

    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1

    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v0, :cond_2

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v0, :cond_3

    iget v0, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    if-nez p2, :cond_2

    const p2, 0x800033

    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    return-void
.end method

.method public update()V
    .locals 6

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v3, 0x1

    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, 0x1

    :cond_3
    if-eqz v3, :cond_0

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    return-void
.end method

.method public update(IIIIZ)V
    .locals 13

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    :cond_0
    iget-object v11, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v11, :cond_1

    iget-object v11, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    instance-of v11, v11, Landroid/app/Activity;

    if-eqz v11, :cond_1

    iget-object v11, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    if-eqz v11, :cond_1

    const/4 v5, 0x1

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->isMultiWindow()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v5, 0x1

    :cond_2
    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    iget v11, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    iget-boolean v11, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    move/from16 v0, p4

    invoke-direct {p0, v1, p2, v0, v11}, Landroid/widget/PopupWindow;->getMultiWindowMaximumHeight(Landroid/view/View;IIZ)I

    move-result p4

    :cond_3
    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_4

    move/from16 v0, p3

    iput v0, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    :cond_4
    const/4 v11, -0x1

    move/from16 v0, p4

    if-eq v0, v11, :cond_5

    move/from16 v0, p4

    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    :cond_5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v11, :cond_7

    :cond_6
    :goto_0
    return-void

    :cond_7
    iget-object v11, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    move/from16 v10, p5

    iget v11, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v11, :cond_e

    iget v4, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    :goto_1
    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_8

    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    if-eq v11, v4, :cond_8

    iput v4, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v4, v9, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v10, 0x1

    :cond_8
    iget v11, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v11, :cond_f

    iget v3, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    :goto_2
    const/4 v11, -0x1

    move/from16 v0, p4

    if-eq v0, v11, :cond_9

    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v11, v3, :cond_9

    iput v3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v3, v9, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v10, 0x1

    :cond_9
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v11, p1, :cond_a

    iput p1, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    const/4 v10, 0x1

    :cond_a
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v11, p2, :cond_b

    iput p2, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v10, 0x1

    :cond_b
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v7

    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v7, v11, :cond_c

    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    const/4 v10, 0x1

    :cond_c
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v11}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v8

    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v8, v11, :cond_d

    iput v8, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v10, 0x1

    :cond_d
    if-eqz v10, :cond_6

    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    iget-object v11, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v12, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v11, v12, v9}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_e
    iget v4, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    :cond_f
    iget v3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 9

    const/4 v2, 0x0

    const/4 v5, 0x1

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 9

    const/4 v2, 0x1

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    return-void
.end method
