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

    .prologue
    .line 165
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

    .prologue
    const/4 v1, 0x0

    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 285
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 312
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 194
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 203
    const v0, 0x1010076

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 212
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 105
    const/4 v7, 0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 106
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 107
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 108
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 109
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 112
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 113
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 117
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    .line 118
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    .line 138
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 139
    const/4 v7, 0x2

    new-array v7, v7, [I

    iput-object v7, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 140
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 147
    const/16 v7, 0x3e8

    iput v7, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 150
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 152
    const/4 v7, 0x0

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 153
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 154
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    .line 157
    const/4 v7, -0x1

    iput v7, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 160
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    .line 170
    new-instance v7, Landroid/widget/PopupWindow$1;

    invoke-direct {v7, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v7, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 221
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 222
    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    iput-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 224
    sget-object v7, Lcom/android/internal/R$styleable;->PopupWindow:[I

    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 228
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 230
    const/4 v7, 0x1

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 231
    .local v2, "animStyle":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 233
    const v7, 0x10301f8

    if-ne v2, v7, :cond_0

    const/4 v2, -0x1

    .end local v2    # "animStyle":I
    :cond_0
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1110073

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Landroid/widget/PopupWindow;->mIsExtendActionBar:Z

    .line 248
    iget-object v7, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    instance-of v7, v7, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v7, :cond_2

    .line 249
    iget-object v3, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/StateListDrawable;

    .line 252
    .local v3, "background":Landroid/graphics/drawable/StateListDrawable;
    sget-object v7, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v1

    .line 256
    .local v1, "aboveAnchorStateIndex":I
    invoke-virtual {v3}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result v5

    .line 257
    .local v5, "count":I
    const/4 v4, -0x1

    .line 258
    .local v4, "belowAnchorStateIndex":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_1

    .line 259
    if-eq v6, v1, :cond_3

    .line 260
    move v4, v6

    .line 267
    :cond_1
    const/4 v7, -0x1

    if-eq v1, v7, :cond_4

    const/4 v7, -0x1

    if-eq v4, v7, :cond_4

    .line 268
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 269
    invoke-virtual {v3, v4}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 275
    .end local v1    # "aboveAnchorStateIndex":I
    .end local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .end local v4    # "belowAnchorStateIndex":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_2
    :goto_1
    return-void

    .line 258
    .restart local v1    # "aboveAnchorStateIndex":I
    .restart local v3    # "background":Landroid/graphics/drawable/StateListDrawable;
    .restart local v4    # "belowAnchorStateIndex":I
    .restart local v5    # "count":I
    .restart local v6    # "i":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 271
    :cond_4
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 272
    const/4 v7, 0x0

    iput-object v7, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, p1, v0, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 298
    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 1
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 327
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    .line 328
    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIZ)V
    .locals 4
    .param p1, "contentView"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "focusable"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput v1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 105
    iput v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 106
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 107
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 108
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 109
    iput v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 112
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 113
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 117
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    .line 138
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 139
    new-array v0, v3, [I

    iput-object v0, p0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 147
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 150
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 152
    iput v1, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 153
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 154
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    .line 157
    iput v2, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 160
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    .line 170
    new-instance v0, Landroid/widget/PopupWindow$1;

    invoke-direct {v0, p0}, Landroid/widget/PopupWindow$1;-><init>(Landroid/widget/PopupWindow;)V

    iput-object v0, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 343
    if-eqz p1, :cond_0

    .line 344
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 345
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    .line 347
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 348
    invoke-virtual {p0, p2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 349
    invoke-virtual {p0, p3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 350
    invoke-virtual {p0, p4}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 351
    return-void
.end method

.method static synthetic access$000(Landroid/widget/PopupWindow;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/PopupWindow;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/PopupWindow;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget v0, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    return v0
.end method

.method static synthetic access$500(Landroid/widget/PopupWindow;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .prologue
    .line 68
    invoke-direct/range {p0 .. p5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/widget/PopupWindow;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/PopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 68
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/PopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method static synthetic access$800()[I
    .locals 1

    .prologue
    .line 68
    sget-object v0, Landroid/widget/PopupWindow;->ABOVE_ANCHOR_STATE_SET:[I

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/PopupWindow;)Landroid/view/View$OnTouchListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/PopupWindow;

    .prologue
    .line 68
    iget-object v0, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1162
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1163
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-eqz v0, :cond_1

    .line 1164
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_0

    const v0, 0x10301f2

    .line 1170
    :goto_0
    return v0

    .line 1164
    :cond_0
    const v0, 0x10301f1

    goto :goto_0

    .line 1168
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1170
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    goto :goto_0
.end method

.method private computeFlags(I)I
    .locals 3
    .param p1, "curFlags"    # I

    .prologue
    const/high16 v2, 0x20000

    .line 1118
    const v0, -0x868219

    and-int/2addr p1, v0

    .line 1126
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    if-eqz v0, :cond_0

    .line 1127
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 1129
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    if-nez v0, :cond_9

    .line 1130
    or-int/lit8 p1, p1, 0x8

    .line 1131
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1132
    or-int/2addr p1, v2

    .line 1137
    :cond_1
    :goto_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    if-nez v0, :cond_2

    .line 1138
    or-int/lit8 p1, p1, 0x10

    .line 1140
    :cond_2
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    if-eqz v0, :cond_3

    .line 1141
    const/high16 v0, 0x40000

    or-int/2addr p1, v0

    .line 1143
    :cond_3
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    if-nez v0, :cond_4

    .line 1144
    or-int/lit16 p1, p1, 0x200

    .line 1146
    :cond_4
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isSplitTouchEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1147
    const/high16 v0, 0x800000

    or-int/2addr p1, v0

    .line 1149
    :cond_5
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    if-eqz v0, :cond_6

    .line 1150
    or-int/lit16 p1, p1, 0x100

    .line 1152
    :cond_6
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    if-eqz v0, :cond_7

    .line 1153
    const/high16 v0, 0x10000

    or-int/2addr p1, v0

    .line 1155
    :cond_7
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    if-eqz v0, :cond_8

    .line 1156
    or-int/lit8 p1, p1, 0x20

    .line 1158
    :cond_8
    return p1

    .line 1134
    :cond_9
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1135
    or-int/2addr p1, v2

    goto :goto_0
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 1089
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1094
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1095
    iget v1, p0, Landroid/widget/PopupWindow;->mWidth:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1096
    iget v1, p0, Landroid/widget/PopupWindow;->mHeight:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1097
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 1098
    iget-object v1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1102
    :goto_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1104
    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    if-eqz v1, :cond_0

    .line 1105
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1106
    iget v1, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1109
    :cond_0
    iget v1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1110
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 1111
    iget v1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 1112
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

    .line 1114
    return-object v0

    .line 1100
    :cond_1
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    goto :goto_0
.end method

.method private findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z
    .locals 40
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "gravity"    # I

    .prologue
    .line 1190
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1191
    .local v5, "anchorHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget v37, v37, v38

    add-int v37, v37, p3

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1193
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

    .line 1195
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v37

    move/from16 v0, p5

    move/from16 v1, v37

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v37

    and-int/lit8 v11, v37, 0x7

    .line 1197
    .local v11, "hgrav":I
    const/16 v37, 0x5

    move/from16 v0, v37

    if-ne v11, v0, :cond_0

    .line 1199
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

    .line 1202
    :cond_0
    const/4 v15, 0x0

    .line 1204
    .local v15, "onTop":Z
    const/16 v37, 0x33

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1207
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 1208
    .local v8, "displayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1215
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsExtendActionBar:Z

    move/from16 v37, v0

    if-eqz v37, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v37

    const/high16 v38, 0x40000000    # 2.0f

    and-int v37, v37, v38

    if-eqz v37, :cond_2

    .line 1216
    const/4 v12, 0x0

    .line 1217
    .local v12, "isStatusbarVisible":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v27

    .line 1218
    .local v27, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v27, :cond_1

    .line 1219
    invoke-virtual/range {v27 .. v27}, Landroid/view/ViewRootImpl;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v32

    .line 1220
    .local v32, "winLp":Landroid/view/WindowManager$LayoutParams;
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

    .line 1222
    const/4 v12, 0x1

    .line 1224
    .end local v32    # "winLp":Landroid/view/WindowManager$LayoutParams;
    :cond_1
    if-eqz v12, :cond_2

    .line 1225
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

    .line 1230
    .end local v12    # "isStatusbarVisible":Z
    .end local v27    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    add-int v37, v37, v5

    add-int v21, v37, p4

    .line 1232
    .local v21, "screenY":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v19

    .line 1234
    .local v19, "root":Landroid/view/View;
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v31

    .line 1235
    .local v31, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v33, 0x0

    .line 1237
    .local v33, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v31

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v37, v0

    if-eqz v37, :cond_3

    move-object/from16 v33, v31

    .line 1238
    check-cast v33, Landroid/view/WindowManager$LayoutParams;

    .line 1240
    :cond_3
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 1241
    .local v28, "visibleDisplayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1244
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    move/from16 v37, v0

    if-eqz v37, :cond_4

    .line 1245
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1247
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

    .line 1252
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    move/from16 v37, v0

    if-eqz v37, :cond_6

    .line 1253
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v22

    .line 1254
    .local v22, "scrollX":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v23

    .line 1255
    .local v23, "scrollY":I
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

    .line 1257
    .local v17, "r":Landroid/graphics/Rect;
    const/16 v37, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->requestRectangleOnScreen(Landroid/graphics/Rect;Z)Z

    .line 1262
    .end local v17    # "r":Landroid/graphics/Rect;
    .end local v22    # "scrollX":I
    .end local v23    # "scrollY":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x0

    aget v37, v37, v38

    add-int v37, v37, p3

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1264
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

    .line 1267
    const/16 v37, 0x5

    move/from16 v0, v37

    if-ne v11, v0, :cond_7

    .line 1268
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

    .line 1272
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v37, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1273
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

    .line 1275
    :goto_0
    if-eqz v15, :cond_16

    .line 1276
    const/16 v37, 0x53

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1277
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

    .line 1284
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

    .line 1285
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

    .line 1286
    .local v7, "diff":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    sub-int v37, v37, v7

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1287
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    if-gtz v37, :cond_8

    .line 1288
    const/16 v37, 0x0

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1295
    .end local v7    # "diff":I
    :cond_8
    const/16 v26, 0x1

    .line 1296
    .local v26, "typeNormal":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    if-eqz v37, :cond_9

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v14

    .line 1298
    .local v14, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v37

    if-eqz v37, :cond_9

    .line 1300
    const/16 v26, 0x0

    .line 1304
    .end local v14    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    move/from16 v37, v0

    if-eqz v37, :cond_13

    if-eqz v26, :cond_13

    .line 1308
    iget v0, v8, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v38, v0

    sub-int v9, v37, v38

    .line 1310
    .local v9, "displayFrameWidth":I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v38, v0

    add-int v18, v37, v38

    .line 1311
    .local v18, "right":I
    move/from16 v0, v18

    if-le v0, v9, :cond_a

    .line 1312
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    sub-int v38, v18, v9

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1314
    :cond_a
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v37, v0

    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v38, v0

    move/from16 v0, v37

    move/from16 v1, v38

    if-ge v0, v1, :cond_b

    .line 1315
    iget v0, v8, Landroid/graphics/Rect;->left:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1316
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    move/from16 v0, v37

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v37

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1319
    :cond_b
    if-eqz v15, :cond_17

    .line 1320
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

    .line 1325
    .local v16, "popupTop":I
    const/16 v24, 0x0

    .line 1326
    .local v24, "statusBarHeight":I
    const-string/jumbo v37, "window"

    invoke-static/range {v37 .. v37}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v34

    .line 1328
    .local v34, "wm":Landroid/view/IWindowManager;
    :try_start_0
    invoke-interface/range {v34 .. v34}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v37

    if-eqz v37, :cond_c

    .line 1329
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

    .line 1336
    :cond_c
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v24

    if-ge v0, v1, :cond_d

    .line 1337
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v37, v0

    sub-int v38, v24, v16

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1343
    .end local v16    # "popupTop":I
    .end local v24    # "statusBarHeight":I
    .end local v34    # "wm":Landroid/view/IWindowManager;
    :cond_d
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    move/from16 v37, v0

    if-eqz v37, :cond_13

    if-eqz v33, :cond_13

    .line 1346
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v38, v0

    sub-int v30, v37, v38

    .line 1347
    .local v30, "visibleDisplayFrameWidth":I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    sub-int v29, v37, v38

    .line 1349
    .local v29, "visibleDisplayFrameHeight":I
    const/16 v35, 0x0

    .line 1350
    .local v35, "xRootInScreen":I
    const/16 v36, 0x0

    .line 1351
    .local v36, "yRootInScreen":I
    const/16 v37, 0x2

    move/from16 v0, v37

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 1353
    .local v20, "rootLocation":[I
    invoke-virtual/range {v19 .. v20}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1355
    const/16 v18, 0x0

    .line 1356
    const/4 v13, 0x0

    .line 1357
    .local v13, "left":I
    const/16 v25, 0x0

    .line 1358
    .local v25, "top":I
    const/4 v6, 0x0

    .line 1361
    .local v6, "bottom":I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x3

    const/16 v38, 0x3

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_18

    .line 1362
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v35, v0

    .line 1375
    :cond_e
    :goto_4
    const/16 v37, 0x0

    aget v37, v20, v37

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v38, v0

    add-int v37, v37, v38

    add-int v18, v37, p3

    .line 1376
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v37, v0

    move/from16 v0, v18

    move/from16 v1, v37

    if-le v0, v1, :cond_f

    .line 1377
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

    .line 1380
    :cond_f
    const/16 v37, 0x0

    aget v37, v20, v37

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    add-int v13, v37, v38

    .line 1381
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v37, v0

    move/from16 v0, v37

    if-ge v13, v0, :cond_10

    .line 1382
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

    .line 1386
    :cond_10
    const/16 v37, 0x33

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1387
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

    .line 1389
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x30

    const/16 v38, 0x30

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1a

    .line 1390
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v36, v0

    .line 1397
    :cond_11
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    move/from16 v37, v0

    if-eqz v37, :cond_1c

    .line 1398
    const/16 v37, 0x1

    aget v37, v20, v37

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v38, v0

    add-int v37, v37, v38

    add-int v6, v37, p4

    .line 1399
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move/from16 v0, v37

    if-le v6, v0, :cond_12

    .line 1400
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    sub-int v38, v6, v38

    sub-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1401
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1404
    :cond_12
    const/16 v37, 0x1

    aget v37, v20, v37

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    add-int v25, v37, v38

    .line 1405
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    move/from16 v0, v25

    move/from16 v1, v37

    if-ge v0, v1, :cond_13

    .line 1406
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

    .line 1423
    .end local v6    # "bottom":I
    .end local v9    # "displayFrameWidth":I
    .end local v13    # "left":I
    .end local v18    # "right":I
    .end local v20    # "rootLocation":[I
    .end local v25    # "top":I
    .end local v29    # "visibleDisplayFrameHeight":I
    .end local v30    # "visibleDisplayFrameWidth":I
    .end local v35    # "xRootInScreen":I
    .end local v36    # "yRootInScreen":I
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

    .line 1424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mScreenLocation:[I

    move-object/from16 v37, v0

    const/16 v38, 0x1

    aget v37, v37, v38

    add-int v37, v37, p4

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1427
    :cond_14
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    const/high16 v38, 0x10000000

    or-int v37, v37, v38

    move/from16 v0, v37

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1429
    return v15

    .line 1273
    .end local v26    # "typeNormal":Z
    :cond_15
    const/4 v15, 0x0

    goto/16 :goto_0

    .line 1279
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

    .line 1331
    .restart local v9    # "displayFrameWidth":I
    .restart local v16    # "popupTop":I
    .restart local v18    # "right":I
    .restart local v24    # "statusBarHeight":I
    .restart local v26    # "typeNormal":Z
    .restart local v34    # "wm":Landroid/view/IWindowManager;
    :catch_0
    move-exception v10

    .line 1332
    .local v10, "e":Landroid/os/RemoteException;
    const-string v37, "PopupWindow"

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1340
    .end local v10    # "e":Landroid/os/RemoteException;
    .end local v16    # "popupTop":I
    .end local v24    # "statusBarHeight":I
    .end local v34    # "wm":Landroid/view/IWindowManager;
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

    .line 1363
    .restart local v6    # "bottom":I
    .restart local v13    # "left":I
    .restart local v20    # "rootLocation":[I
    .restart local v25    # "top":I
    .restart local v29    # "visibleDisplayFrameHeight":I
    .restart local v30    # "visibleDisplayFrameWidth":I
    .restart local v35    # "xRootInScreen":I
    .restart local v36    # "yRootInScreen":I
    :cond_18
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x5

    const/16 v38, 0x5

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_19

    .line 1364
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

    .line 1365
    :cond_19
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x1

    const/16 v38, 0x1

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_e

    .line 1366
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v37, v0

    sub-int v37, v30, v37

    div-int/lit8 v37, v37, 0x2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v38, v0

    add-int v35, v37, v38

    goto/16 :goto_4

    .line 1391
    :cond_1a
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x50

    const/16 v38, 0x50

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_1b

    .line 1392
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

    .line 1393
    :cond_1b
    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v37, v0

    and-int/lit8 v37, v37, 0x10

    const/16 v38, 0x10

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_11

    .line 1394
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v37, v0

    sub-int v37, v29, v37

    div-int/lit8 v37, v37, 0x2

    move-object/from16 v0, v33

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    add-int v36, v37, v38

    goto/16 :goto_5

    .line 1409
    :cond_1c
    const/16 v37, 0x1

    aget v37, v20, v37

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    add-int v37, v37, v38

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v38, v0

    add-int v37, v37, v38

    add-int v6, v37, p4

    .line 1410
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    move/from16 v0, v37

    if-le v6, v0, :cond_1d

    .line 1411
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

    .line 1414
    :cond_1d
    const/16 v37, 0x1

    aget v37, v20, v37

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v38, v0

    add-int v25, v37, v38

    .line 1415
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v37, v0

    move/from16 v0, v25

    move/from16 v1, v37

    if-ge v0, v1, :cond_13

    .line 1416
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
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "y"    # I
    .param p3, "height"    # I
    .param p4, "isAboveAnchor"    # Z

    .prologue
    .line 1811
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1812
    .local v0, "contentFrame":Landroid/graphics/Rect;
    move v3, p3

    .line 1813
    .local v3, "newHeight":I
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleContentFrame(Landroid/graphics/Rect;)V

    .line 1814
    if-nez p4, :cond_3

    .line 1815
    add-int v4, p2, p3

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v4, v5, :cond_0

    .line 1816
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v4, p2

    .line 1817
    .local v1, "distanceToBottom":I
    move v3, v1

    .line 1825
    .end local v1    # "distanceToBottom":I
    :cond_0
    :goto_0
    if-eq v3, p3, :cond_2

    .line 1826
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_1

    .line 1827
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1828
    iget-object v4, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    :cond_1
    move p3, v3

    .line 1832
    .end local p3    # "height":I
    :cond_2
    return p3

    .line 1820
    .restart local p3    # "height":I
    :cond_3
    sub-int v4, p2, p3

    iget v5, v0, Landroid/graphics/Rect;->top:I

    if-ge v4, v5, :cond_0

    iget v4, v0, Landroid/graphics/Rect;->top:I

    if-le p2, v4, :cond_0

    .line 1821
    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, p2, v4

    .line 1822
    .local v2, "distanceToTop":I
    move v3, v2

    goto :goto_0
.end method

.method private getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "outRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x0

    .line 1434
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1472
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1439
    .local v0, "displayFrame":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1441
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 1443
    .local v2, "root":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 1444
    .local v5, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, 0x0

    .line 1446
    .local v6, "wlp":Landroid/view/WindowManager$LayoutParams;
    instance-of v7, v5, Landroid/view/WindowManager$LayoutParams;

    if-eqz v7, :cond_2

    move-object v6, v5

    .line 1447
    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1450
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1451
    .local v4, "visibleDisplayFrame":Landroid/graphics/Rect;
    iput v9, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1452
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1453
    .local v1, "dm":Landroid/util/DisplayMetrics;
    iget-object v7, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1455
    if-eqz v6, :cond_3

    .line 1456
    iget v7, v6, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    iget v8, v6, Landroid/view/WindowManager$LayoutParams;->subtreeSystemUiVisibility:I

    or-int v3, v7, v8

    .line 1457
    .local v3, "systemUiVisibility":I
    and-int/lit16 v7, v3, 0x404

    if-nez v7, :cond_3

    .line 1459
    iget-object v7, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105000c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    .line 1462
    .end local v3    # "systemUiVisibility":I
    :cond_3
    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 1463
    iget v7, p0, Landroid/widget/PopupWindow;->mStatusBarHeight:I

    iput v7, v4, Landroid/graphics/Rect;->top:I

    .line 1464
    iget v7, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v7, v4, Landroid/graphics/Rect;->right:I

    .line 1465
    iget v7, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v7, v4, Landroid/graphics/Rect;->bottom:I

    .line 1467
    iget-boolean v7, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    if-eqz v7, :cond_4

    .line 1468
    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1471
    :cond_4
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1055
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 1056
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1060
    :cond_0
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    if-eqz v0, :cond_1

    .line 1061
    iget v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1065
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1066
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1067
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1068
    return-void
.end method

.method private preparePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 6
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 1014
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v4, :cond_1

    .line 1015
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "You must specify a valid content view by calling setContentView() before attempting to show the popup."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1019
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    .line 1020
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1021
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    const/4 v0, -0x1

    .line 1022
    .local v0, "height":I
    if-eqz v1, :cond_2

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v5, -0x2

    if-ne v4, v5, :cond_2

    .line 1024
    const/4 v0, -0x2

    .line 1029
    :cond_2
    new-instance v3, Landroid/widget/PopupWindow$PopupViewContainer;

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/widget/PopupWindow$PopupViewContainer;-><init>(Landroid/widget/PopupWindow;Landroid/content/Context;)V

    .line 1030
    .local v3, "popupViewContainer":Landroid/widget/PopupWindow$PopupViewContainer;
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v2, v4, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1033
    .local v2, "listParams":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v4, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v3, v4, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1036
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1040
    .end local v0    # "height":I
    .end local v1    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "listParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "popupViewContainer":Landroid/widget/PopupWindow$PopupViewContainer;
    :goto_0
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getRawLayoutDirection()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const/4 v4, 0x1

    :goto_1
    iput-boolean v4, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    .line 1042
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupWidth:I

    .line 1043
    iget v4, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v4, p0, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1044
    return-void

    .line 1038
    :cond_3
    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    iput-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    goto :goto_0

    .line 1040
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private registerForScrollChanged(Landroid/view/View;III)V
    .locals 2
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    .line 1991
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1993
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1994
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1995
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    if-eqz v0, :cond_0

    .line 1996
    iget-object v1, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1999
    :cond_0
    iput p2, p0, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 2000
    iput p3, p0, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 2001
    iput p4, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    .line 2002
    return-void
.end method

.method private setLayoutDirectionFromAnchor()V
    .locals 3

    .prologue
    .line 1071
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1072
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 1073
    .local v0, "anchor":Landroid/view/View;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/widget/PopupWindow;->mPopupViewInitialLayoutDirectionInherited:Z

    if-eqz v1, :cond_0

    .line 1074
    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutDirection(I)V

    .line 1077
    .end local v0    # "anchor":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private setWindowPopup(Z)V
    .locals 0
    .param p1, "isWindowPopup"    # Z

    .prologue
    .line 1475
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    .line 1476
    return-void
.end method

.method private unregisterForScrollChanged()V
    .locals 4

    .prologue
    .line 1978
    iget-object v1, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1979
    .local v1, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v0, 0x0

    .line 1980
    .local v0, "anchor":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1981
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "anchor":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 1983
    .restart local v0    # "anchor":Landroid/view/View;
    :cond_0
    if-eqz v0, :cond_1

    .line 1984
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    .line 1985
    .local v2, "vto":Landroid/view/ViewTreeObserver;
    iget-object v3, p0, Landroid/widget/PopupWindow;->mOnScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1987
    .end local v2    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1988
    return-void
.end method

.method private update(Landroid/view/View;ZIIZIII)V
    .locals 27
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "updateLocation"    # Z
    .param p3, "xoff"    # I
    .param p4, "yoff"    # I
    .param p5, "updateDimension"    # Z
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "gravity"    # I

    .prologue
    .line 1871
    invoke-virtual/range {p0 .. p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v5, :cond_1

    .line 1965
    :cond_0
    :goto_0
    return-void

    .line 1875
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    move-object/from16 v16, v0

    .line 1876
    .local v16, "oldAnchor":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
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

    .line 1877
    .local v15, "needsUpdate":Z
    :goto_1
    if-eqz v16, :cond_3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 v0, p1

    if-ne v5, v0, :cond_3

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    if-nez v5, :cond_c

    .line 1878
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 1886
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager$LayoutParams;

    .line 1888
    .local v7, "p":Landroid/view/WindowManager$LayoutParams;
    if-eqz p5, :cond_5

    .line 1889
    const/4 v5, -0x1

    move/from16 v0, p6

    if-ne v0, v5, :cond_d

    .line 1890
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupWidth:I

    move/from16 p6, v0

    .line 1894
    :goto_3
    const/4 v5, -0x1

    move/from16 v0, p7

    if-ne v0, v5, :cond_e

    .line 1895
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    move/from16 p7, v0

    .line 1901
    :cond_5
    :goto_4
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->x:I

    move/from16 v24, v0

    .line 1902
    .local v24, "x":I
    iget v0, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v25, v0

    .line 1904
    .local v25, "y":I
    if-eqz p2, :cond_f

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p8

    .line 1905
    invoke-direct/range {v5 .. v10}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 1911
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    if-eqz v5, :cond_9

    .line 1912
    const/16 v26, 0x0

    .line 1913
    .local v26, "yRootInScreen":I
    const/16 v19, 0x0

    .line 1914
    .local v19, "top":I
    const/4 v14, 0x0

    .line 1916
    .local v14, "bottom":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v17

    .line 1918
    .local v17, "root":Landroid/view/View;
    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v18, v0

    .line 1919
    .local v18, "rootLocation":[I
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1921
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    .line 1922
    .local v22, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v23, 0x0

    .line 1924
    .local v23, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v22

    instance-of v5, v0, Landroid/view/WindowManager$LayoutParams;

    if-eqz v5, :cond_6

    move-object/from16 v23, v22

    .line 1925
    check-cast v23, Landroid/view/WindowManager$LayoutParams;

    .line 1927
    :cond_6
    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    .line 1928
    .local v20, "visibleDisplayFrame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1929
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v21, v5, v6

    .line 1930
    .local v21, "visibleDisplayFrameHeight":I
    if-eqz v23, :cond_9

    .line 1931
    move-object/from16 v0, v23

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x30

    const/16 v6, 0x30

    if-ne v5, v6, :cond_10

    .line 1932
    move-object/from16 v0, v23

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v26, v0

    .line 1939
    :cond_7
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/PopupWindow;->SUPPORT_RESIZING_TO_CLIP_TO_SCREEN:Z

    if-eqz v5, :cond_12

    .line 1940
    const/4 v5, 0x1

    aget v5, v18, v5

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v6

    add-int v5, v5, p7

    add-int v14, v5, p4

    .line 1941
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v14, v5, :cond_8

    .line 1942
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v5, v14, v5

    sub-int p7, p7, v5

    .line 1943
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    .line 1945
    :cond_8
    const/4 v5, 0x1

    aget v5, v18, v5

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v19, v5, v6

    .line 1946
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v19

    if-ge v0, v5, :cond_9

    .line 1947
    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v6, v19

    add-int/2addr v5, v6

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1964
    .end local v14    # "bottom":I
    .end local v17    # "root":Landroid/view/View;
    .end local v18    # "rootLocation":[I
    .end local v19    # "top":I
    .end local v20    # "visibleDisplayFrame":Landroid/graphics/Rect;
    .end local v21    # "visibleDisplayFrameHeight":I
    .end local v22    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v26    # "yRootInScreen":I
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

    .line 1876
    .end local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    .end local v15    # "needsUpdate":Z
    .end local v24    # "x":I
    .end local v25    # "y":I
    :cond_b
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 1879
    .restart local v15    # "needsUpdate":Z
    :cond_c
    if-eqz v15, :cond_4

    .line 1881
    move/from16 v0, p3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorXoff:I

    .line 1882
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchorYoff:I

    .line 1883
    move/from16 v0, p8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    goto/16 :goto_2

    .line 1892
    .restart local v7    # "p":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupWidth:I

    goto/16 :goto_3

    .line 1897
    :cond_e
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/PopupWindow;->mPopupHeight:I

    goto/16 :goto_4

    .line 1907
    .restart local v24    # "x":I
    .restart local v25    # "y":I
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

    .line 1933
    .restart local v14    # "bottom":I
    .restart local v17    # "root":Landroid/view/View;
    .restart local v18    # "rootLocation":[I
    .restart local v19    # "top":I
    .restart local v20    # "visibleDisplayFrame":Landroid/graphics/Rect;
    .restart local v21    # "visibleDisplayFrameHeight":I
    .restart local v22    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v23    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .restart local v26    # "yRootInScreen":I
    :cond_10
    move-object/from16 v0, v23

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x50

    const/16 v6, 0x50

    if-ne v5, v6, :cond_11

    .line 1934
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int v26, v5, v6

    goto/16 :goto_6

    .line 1935
    :cond_11
    move-object/from16 v0, v23

    iget v5, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    and-int/lit8 v5, v5, 0x10

    const/16 v6, 0x10

    if-ne v5, v6, :cond_7

    .line 1936
    iget v5, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int v5, v21, v5

    div-int/lit8 v5, v5, 0x2

    move-object/from16 v0, v23

    iget v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v26, v5, v6

    goto/16 :goto_6

    .line 1950
    :cond_12
    const/4 v5, 0x1

    aget v5, v18, v5

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Landroid/widget/PopupWindow;->mPopupHeight:I

    add-int/2addr v5, v6

    add-int v14, v5, p4

    .line 1951
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    if-le v14, v5, :cond_13

    .line 1952
    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v6, v14, v6

    sub-int/2addr v5, v6

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1955
    :cond_13
    const/4 v5, 0x1

    aget v5, v18, v5

    iget v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    add-int v19, v5, v6

    .line 1956
    move-object/from16 v0, v20

    iget v5, v0, Landroid/graphics/Rect;->top:I

    move/from16 v0, v19

    if-ge v0, v5, :cond_9

    .line 1957
    iget v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    move-object/from16 v0, v20

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int v6, v6, v19

    add-int/2addr v5, v6

    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_7

    .line 1964
    .end local v14    # "bottom":I
    .end local v17    # "root":Landroid/view/View;
    .end local v18    # "rootLocation":[I
    .end local v19    # "top":I
    .end local v20    # "visibleDisplayFrame":Landroid/graphics/Rect;
    .end local v21    # "visibleDisplayFrameHeight":I
    .end local v22    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "wlp":Landroid/view/WindowManager$LayoutParams;
    .end local v26    # "yRootInScreen":I
    :cond_14
    const/4 v13, 0x0

    goto/16 :goto_8
.end method

.method private updateAboveAnchor(Z)V
    .locals 2
    .param p1, "aboveAnchor"    # Z

    .prologue
    .line 970
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eq p1, v0, :cond_0

    .line 971
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    .line 973
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 977
    iget-object v0, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 978
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    if-eqz v0, :cond_1

    .line 979
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mAboveAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 988
    :cond_0
    :goto_0
    return-void

    .line 981
    :cond_1
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mBelowAnchorBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 984
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1617
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1618
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 1620
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 1623
    :try_start_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1624
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1629
    :goto_0
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1632
    :cond_0
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1634
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_1

    .line 1635
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    .line 1639
    :cond_1
    return-void

    .line 1626
    :cond_2
    :try_start_1
    const-string v0, "PopupWindow"

    const-string/jumbo v1, "mPopupView\'s parent already removed. so we don\'t remove this view."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1629
    :catchall_0
    move-exception v0

    move-object v1, v0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1630
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1632
    :cond_3
    iput-object v3, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    .line 1634
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_4

    .line 1635
    iget-object v0, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_4
    throw v1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 787
    iget v0, p0, Landroid/widget/PopupWindow;->mHeight:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 1489
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;I)I
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I

    .prologue
    .line 1504
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v0

    return v0
.end method

.method public getMaxAvailableHeight(Landroid/view/View;IZ)I
    .locals 20
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "yOffset"    # I
    .param p3, "ignoreBottomDecorations"    # Z

    .prologue
    .line 1525
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 1526
    .local v4, "displayFrame":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .line 1528
    .local v9, "isTypePenWindow":Z
    if-nez p1, :cond_1

    .line 1529
    const-string v18, "PopupWindow"

    const-string v19, "anchor is null, cannot do getMaxAvailableHeight."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1530
    const/4 v13, -0x1

    .line 1606
    :cond_0
    :goto_0
    return v13

    .line 1533
    :cond_1
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1537
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4}, Landroid/widget/PopupWindow;->getVisibleDisplayRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1538
    if-eqz p1, :cond_2

    .line 1539
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v14

    .line 1540
    .local v14, "root":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 1541
    .local v16, "vlp":Landroid/view/ViewGroup$LayoutParams;
    const/16 v17, 0x0

    .line 1543
    .local v17, "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v17, v16

    .line 1544
    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 1545
    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v18, v0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x200

    move/from16 v18, v0

    if-nez v18, :cond_7

    const/4 v10, 0x0

    .line 1546
    .local v10, "mIsWindowPopupOutsideBound":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Landroid/widget/PopupWindow;->setWindowPopup(Z)V

    .line 1551
    .end local v10    # "mIsWindowPopupOutsideBound":Z
    .end local v14    # "root":Landroid/view/View;
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v11

    .line 1553
    .local v11, "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v11, :cond_3

    invoke-virtual {v11}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 1554
    const/4 v9, 0x1

    .line 1560
    .end local v11    # "mwStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
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

    .line 1561
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    .line 1562
    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/WindowManager$LayoutParams;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v17, v16

    .line 1563
    check-cast v17, Landroid/view/WindowManager$LayoutParams;

    .line 1564
    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    move-object/from16 v0, v17

    iget v7, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1565
    .local v7, "flags":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v15

    .line 1567
    .local v15, "systemUiVisibility":I
    const/high16 v18, 0x40000000    # 2.0f

    and-int v18, v18, v15

    if-eqz v18, :cond_4

    const/high16 v18, 0x4000000

    and-int v18, v18, v7

    if-eqz v18, :cond_4

    and-int/lit16 v0, v7, 0x400

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 1572
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 1573
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

    .line 1580
    .end local v7    # "flags":I
    .end local v15    # "systemUiVisibility":I
    .end local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .end local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/PopupWindow;->mDrawingLocation:[I

    .line 1581
    .local v2, "anchorPos":[I
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1583
    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 1584
    .local v3, "bottomEdge":I
    if-eqz p3, :cond_5

    .line 1585
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 1586
    .local v12, "res":Landroid/content/res/Resources;
    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    move-object/from16 v0, v18

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 1588
    .end local v12    # "res":Landroid/content/res/Resources;
    :cond_5
    const/16 v18, 0x1

    aget v18, v2, v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v19

    add-int v18, v18, v19

    sub-int v18, v3, v18

    sub-int v5, v18, p2

    .line 1589
    .local v5, "distanceToBottom":I
    const/16 v18, 0x1

    aget v18, v2, v18

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int v6, v18, p2

    .line 1592
    .local v6, "distanceToTop":I
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1595
    .local v13, "returnedHeight":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/PopupWindow;->mIsWindowPopupOutsideBound:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 1596
    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    iget v0, v4, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    div-int/lit8 v8, v18, 0x2

    .line 1597
    .local v8, "halfScreenSize":I
    invoke-static {v8, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1601
    .end local v8    # "halfScreenSize":I
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    if-eqz v18, :cond_0

    .line 1602
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/PopupWindow;->mTempRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1603
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

    .line 1545
    .end local v2    # "anchorPos":[I
    .end local v3    # "bottomEdge":I
    .end local v5    # "distanceToBottom":I
    .end local v6    # "distanceToTop":I
    .end local v13    # "returnedHeight":I
    .restart local v14    # "root":Landroid/view/View;
    .restart local v16    # "vlp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v17    # "wlp":Landroid/view/WindowManager$LayoutParams;
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_1
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 538
    iget v0, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 813
    iget v0, p0, Landroid/widget/PopupWindow;->mWidth:I

    return v0
.end method

.method public getWindowLayoutType()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    return v0
.end method

.method public isAboveAnchor()Z
    .locals 1

    .prologue
    .line 1002
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    return v0
.end method

.method public isClippingEnabled()Z
    .locals 1

    .prologue
    .line 612
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    return v0
.end method

.method public isFocusable()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    return v0
.end method

.method public isLayoutInScreenEnabled()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    return v0
.end method

.method public isOutsideTouchable()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 837
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    return v0
.end method

.method public isSplitTouchEnabled()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 662
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-gez v2, :cond_2

    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_2

    .line 663
    iget-object v2, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_1

    .line 665
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 663
    goto :goto_0

    .line 665
    :cond_2
    iget v2, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    if-eq v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public isTouchable()Z
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    return v0
.end method

.method setAllowScrollingAnchorParent(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 651
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mAllowScrollingAnchorParent:Z

    .line 652
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "animationStyle"    # I

    .prologue
    .line 411
    iput p1, p0, Landroid/widget/PopupWindow;->mAnimationStyle:I

    .line 412
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 369
    iput-object p1, p0, Landroid/widget/PopupWindow;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 370
    return-void
.end method

.method public setClipToScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 640
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClipToScreen:Z

    .line 641
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 642
    return-void

    .line 641
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setClippingEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 630
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mClippingEnabled:Z

    .line 631
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "contentView"    # Landroid/view/View;

    .prologue
    .line 437
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    iput-object p1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    .line 443
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 444
    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    .line 447
    :cond_2
    iget-object v0, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 448
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
    .param p1, "dimBehind"    # Z
    .param p2, "dimAmount"    # F

    .prologue
    .line 121
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mDimBehind:Z

    .line 122
    iput p2, p0, Landroid/widget/PopupWindow;->mDimAmount:F

    .line 123
    return-void
.end method

.method public setFocusable(Z)V
    .locals 0
    .param p1, "focusable"    # Z

    .prologue
    .line 488
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mFocusable:Z

    .line 489
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 802
    iput p1, p0, Landroid/widget/PopupWindow;->mHeight:I

    .line 803
    return-void
.end method

.method public setIgnoreCheekPress()V
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mIgnoreCheekPress:Z

    .line 394
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 514
    iput p1, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    .line 515
    return-void
.end method

.method public setLayoutInMultiWindowScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2018
    return-void
.end method

.method public setLayoutInScreenEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 705
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInScreen:Z

    .line 706
    return-void
.end method

.method public setLayoutInsetDecor(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 721
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mLayoutInsetDecor:Z

    .line 722
    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0
    .param p1, "onDismissListener"    # Landroid/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 1647
    iput-object p1, p0, Landroid/widget/PopupWindow;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 1648
    return-void
.end method

.method public setOutsideTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 601
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mOutsideTouchable:Z

    .line 602
    return-void
.end method

.method public setShowForAllUsers(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 2009
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mShowForAllUsers:Z

    .line 2010
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 0
    .param p1, "mode"    # I

    .prologue
    .line 528
    iput p1, p0, Landroid/widget/PopupWindow;->mSoftInputMode:I

    .line 529
    return-void
.end method

.method public setSplitTouchEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 682
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Landroid/widget/PopupWindow;->mSplitTouchEnabled:I

    .line 683
    return-void

    .line 682
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchInterceptor(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .param p1, "l"    # Landroid/view/View$OnTouchListener;

    .prologue
    .line 457
    iput-object p1, p0, Landroid/widget/PopupWindow;->mTouchInterceptor:Landroid/view/View$OnTouchListener;

    .line 458
    return-void
.end method

.method public setTouchModal(Z)V
    .locals 1
    .param p1, "touchModal"    # Z

    .prologue
    .line 749
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/PopupWindow;->mNotTouchModal:Z

    .line 750
    return-void

    .line 749
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTouchable(Z)V
    .locals 0
    .param p1, "touchable"    # Z

    .prologue
    .line 568
    iput-boolean p1, p0, Landroid/widget/PopupWindow;->mTouchable:Z

    .line 569
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 828
    iput p1, p0, Landroid/widget/PopupWindow;->mWidth:I

    .line 829
    return-void
.end method

.method public setWindowLayoutMode(II)V
    .locals 0
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    .line 775
    iput p1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 776
    iput p2, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 777
    return-void
.end method

.method public setWindowLayoutType(I)V
    .locals 0
    .param p1, "layoutType"    # I

    .prologue
    .line 732
    iput p1, p0, Landroid/widget/PopupWindow;->mWindowLayoutType:I

    .line 733
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 906
    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 907
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 1
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I

    .prologue
    .line 926
    const v0, 0x800033

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 927
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "gravity"    # I

    .prologue
    const/4 v1, 0x1

    .line 947
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 967
    :cond_0
    :goto_0
    return-void

    .line 951
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/PopupWindow;->registerForScrollChanged(Landroid/view/View;III)V

    .line 953
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 954
    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 956
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 957
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .line 959
    invoke-direct/range {v0 .. v5}, Landroid/widget/PopupWindow;->findDropDownPosition(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;III)Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->updateAboveAnchor(Z)V

    .line 961
    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v0, :cond_2

    iget v0, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 962
    :cond_2
    iget v0, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v0, :cond_3

    iget v0, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v0, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 964
    :cond_3
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 966
    invoke-direct {p0, v2}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/os/IBinder;III)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 870
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 892
    :cond_0
    :goto_0
    return-void

    .line 874
    :cond_1
    invoke-direct {p0}, Landroid/widget/PopupWindow;->unregisterForScrollChanged()V

    .line 876
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsShowing:Z

    .line 877
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/PopupWindow;->mIsDropdown:Z

    .line 879
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 880
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 882
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->preparePopup(Landroid/view/WindowManager$LayoutParams;)V

    .line 883
    if-nez p2, :cond_2

    .line 884
    const p2, 0x800033

    .line 886
    :cond_2
    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 887
    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 888
    iput p4, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 889
    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v1, :cond_3

    iget v1, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 890
    :cond_3
    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v1, :cond_4

    iget v1, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    iput v1, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 891
    :cond_4
    invoke-direct {p0, v0}, Landroid/widget/PopupWindow;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public showAtLocation(Landroid/view/View;III)V
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "gravity"    # I
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 855
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3, p4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 856
    return-void
.end method

.method public update()V
    .locals 6

    .prologue
    .line 1658
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v4, :cond_1

    .line 1683
    :cond_0
    :goto_0
    return-void

    .line 1662
    :cond_1
    iget-object v4, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    .line 1665
    .local v2, "p":Landroid/view/WindowManager$LayoutParams;
    const/4 v3, 0x0

    .line 1667
    .local v3, "update":Z
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v0

    .line 1668
    .local v0, "newAnim":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v0, v4, :cond_2

    .line 1669
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1670
    const/4 v3, 0x1

    .line 1673
    :cond_2
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v4}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v1

    .line 1674
    .local v1, "newFlags":I
    iget v4, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v1, v4, :cond_3

    .line 1675
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1676
    const/4 v3, 0x1

    .line 1679
    :cond_3
    if-eqz v3, :cond_0

    .line 1680
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1681
    iget-object v4, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v5, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v4, v5, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public update(II)V
    .locals 7
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 1694
    iget-object v0, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager$LayoutParams;

    .line 1696
    .local v6, "p":Landroid/view/WindowManager$LayoutParams;
    iget v1, v6, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v2, v6, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v5, 0x0

    move-object v0, p0

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1697
    return-void
.end method

.method public update(IIII)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 1711
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 1712
    return-void
.end method

.method public update(IIIIZ)V
    .locals 13
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "force"    # Z

    .prologue
    .line 1729
    const/4 v5, 0x0

    .line 1730
    .local v5, "isMultiWindow":Z
    iget-object v2, p0, Landroid/widget/PopupWindow;->mAnchor:Ljava/lang/ref/WeakReference;

    .line 1731
    .local v2, "anchorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/View;>;"
    const/4 v1, 0x0

    .line 1732
    .local v1, "anchor":Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1733
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "anchor":Landroid/view/View;
    check-cast v1, Landroid/view/View;

    .line 1735
    .restart local v1    # "anchor":Landroid/view/View;
    :cond_0
    iget-object v11, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    if-eqz v11, :cond_1

    .line 1736
    iget-object v11, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    instance-of v11, v11, Landroid/app/Activity;

    if-eqz v11, :cond_1

    .line 1737
    iget-object v11, p0, Landroid/widget/PopupWindow;->mContext:Landroid/content/Context;

    check-cast v11, Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v6

    .line 1738
    .local v6, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v11

    if-eqz v11, :cond_1

    .line 1740
    const/4 v5, 0x1

    .line 1744
    .end local v6    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_1
    if-eqz v1, :cond_2

    .line 1745
    invoke-virtual {v1}, Landroid/view/View;->isMultiWindow()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v5, 0x1

    .line 1747
    :cond_2
    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    iget v11, p0, Landroid/widget/PopupWindow;->mInputMethodMode:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    .line 1748
    iget-boolean v11, p0, Landroid/widget/PopupWindow;->mAboveAnchor:Z

    move/from16 v0, p4

    invoke-direct {p0, v1, p2, v0, v11}, Landroid/widget/PopupWindow;->getMultiWindowMaximumHeight(Landroid/view/View;IIZ)I

    move-result p4

    .line 1751
    :cond_3
    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_4

    .line 1752
    move/from16 v0, p3

    iput v0, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    .line 1753
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1756
    :cond_4
    const/4 v11, -0x1

    move/from16 v0, p4

    if-eq v0, v11, :cond_5

    .line 1757
    move/from16 v0, p4

    iput v0, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    .line 1758
    move/from16 v0, p4

    invoke-virtual {p0, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1761
    :cond_5
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Landroid/widget/PopupWindow;->mContentView:Landroid/view/View;

    if-nez v11, :cond_7

    .line 1807
    :cond_6
    :goto_0
    return-void

    .line 1765
    :cond_7
    iget-object v11, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager$LayoutParams;

    .line 1767
    .local v9, "p":Landroid/view/WindowManager$LayoutParams;
    move/from16 v10, p5

    .line 1769
    .local v10, "update":Z
    iget v11, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    if-gez v11, :cond_e

    iget v4, p0, Landroid/widget/PopupWindow;->mWidthMode:I

    .line 1770
    .local v4, "finalWidth":I
    :goto_1
    const/4 v11, -0x1

    move/from16 v0, p3

    if-eq v0, v11, :cond_8

    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v11, v4, :cond_8

    .line 1771
    iput v4, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    iput v4, v9, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1772
    const/4 v10, 0x1

    .line 1775
    :cond_8
    iget v11, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    if-gez v11, :cond_f

    iget v3, p0, Landroid/widget/PopupWindow;->mHeightMode:I

    .line 1776
    .local v3, "finalHeight":I
    :goto_2
    const/4 v11, -0x1

    move/from16 v0, p4

    if-eq v0, v11, :cond_9

    iget v11, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v11, v3, :cond_9

    .line 1777
    iput v3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    iput v3, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1778
    const/4 v10, 0x1

    .line 1781
    :cond_9
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eq v11, p1, :cond_a

    .line 1782
    iput p1, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1783
    const/4 v10, 0x1

    .line 1786
    :cond_a
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    if-eq v11, p2, :cond_b

    .line 1787
    iput p2, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1788
    const/4 v10, 0x1

    .line 1791
    :cond_b
    invoke-direct {p0}, Landroid/widget/PopupWindow;->computeAnimationResource()I

    move-result v7

    .line 1792
    .local v7, "newAnim":I
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    if-eq v7, v11, :cond_c

    .line 1793
    iput v7, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1794
    const/4 v10, 0x1

    .line 1797
    :cond_c
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v11}, Landroid/widget/PopupWindow;->computeFlags(I)I

    move-result v8

    .line 1798
    .local v8, "newFlags":I
    iget v11, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    if-eq v8, v11, :cond_d

    .line 1799
    iput v8, v9, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1800
    const/4 v10, 0x1

    .line 1803
    :cond_d
    if-eqz v10, :cond_6

    .line 1804
    invoke-direct {p0}, Landroid/widget/PopupWindow;->setLayoutDirectionFromAnchor()V

    .line 1805
    iget-object v11, p0, Landroid/widget/PopupWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v12, p0, Landroid/widget/PopupWindow;->mPopupView:Landroid/view/View;

    invoke-interface {v11, v12, v9}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1769
    .end local v3    # "finalHeight":I
    .end local v4    # "finalWidth":I
    .end local v7    # "newAnim":I
    .end local v8    # "newFlags":I
    :cond_e
    iget v4, p0, Landroid/widget/PopupWindow;->mLastWidth:I

    goto :goto_1

    .line 1775
    .restart local v4    # "finalWidth":I
    :cond_f
    iget v3, p0, Landroid/widget/PopupWindow;->mLastHeight:I

    goto :goto_2
.end method

.method public update(Landroid/view/View;II)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    const/4 v2, 0x0

    .line 1846
    const/4 v5, 0x1

    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v4, v2

    move v6, p2

    move v7, p3

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1847
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 9
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "xoff"    # I
    .param p3, "yoff"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    const/4 v2, 0x1

    .line 1865
    iget v8, p0, Landroid/widget/PopupWindow;->mAnchoredGravity:I

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    move v5, v2

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v8}, Landroid/widget/PopupWindow;->update(Landroid/view/View;ZIIZIII)V

    .line 1866
    return-void
.end method
