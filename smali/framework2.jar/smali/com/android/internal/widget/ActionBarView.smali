.class public Lcom/android/internal/widget/ActionBarView;
.super Lcom/android/internal/widget/AbsActionBarView;
.source "ActionBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;,
        Lcom/android/internal/widget/ActionBarView$HomeView;,
        Lcom/android/internal/widget/ActionBarView$SavedState;
    }
.end annotation


# static fields
.field private static final ACTION_SET_MOUSE_POS:Ljava/lang/String; = "com.sec.android.spc.eventcontrol.ACTION_SET_MOUSE_POS"

.field private static final DEFAULT_CUSTOM_GRAVITY:I = 0x800013

.field public static final DISPLAY_DEFAULT:I = 0x0

.field private static final DISPLAY_FORCED_RESERVE_OVERFLOW:I = 0x1000

.field private static final DISPLAY_RELAYOUT_MASK:I = 0x3f

.field private static final MOUSE_EVENT:Ljava/lang/String; = "event"

.field private static final MOUSE_X:Ljava/lang/String; = "x"

.field private static final MOUSE_Y:Ljava/lang/String; = "y"

.field private static final TAG:Ljava/lang/String; = "ActionBarView"

.field public static final TITLE_HOVER_POPUP_POS_OFFSET_Y:I = 0x3

.field private static final mIgnoreHapticFeedbackSetting:I = 0x3


# instance fields
.field private mActionBarItemBackgroundRes:I

.field private mActionBarTitleHoveredBackgroundRes:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Landroid/app/ActionBar$OnNavigationListener;

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCustomNavView:Landroid/view/View;

.field private mDisplayOptions:I

.field mExpandedActionView:Landroid/view/View;

.field private final mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

.field private mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

.field private mForcedReserveOverflow:Z

.field private mHomeDescription:Ljava/lang/CharSequence;

.field private mHomeDescriptionRes:I

.field private mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

.field private mHomeLayoutRes:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIncludeTabs:Z

.field private mIndeterminateProgressStyle:I

.field private mIndeterminateProgressView:Landroid/widget/ProgressBar;

.field private mIsActionBarNonExtended:Z

.field private mIsCollapsable:Z

.field private mIsCollapsed:Z

.field private mIsExtendActionBar:Z

.field private mIsExtendedActionBarView:Z

.field private mIsParentThemeDeviceDefault:Z

.field private mIsTitleHoveredBackground:Z

.field private mIsgetScrollingTabExtended:Z

.field private mItemPadding:I

.field private mListNavLayout:Landroid/widget/LinearLayout;

.field private mLogo:Landroid/graphics/drawable/Drawable;

.field private mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

.field private mMenuPrepared:Z

.field private mMultiWindowMenuButton:Landroid/view/View;

.field private final mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mNavigationMode:I

.field private mOldContentHeight:I

.field private mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

.field private mProgressBarPadding:I

.field private mProgressStyle:I

.field private mProgressView:Landroid/widget/ProgressBar;

.field private mReserveMultiWindow:Z

.field private mRestoreExpandedMenuItemId:I

.field private mRestoredInstanced:Z

.field mScafe:Ljava/lang/String;

.field private mSpinner:Landroid/widget/Spinner;

.field private mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

.field private mSubtitle:Ljava/lang/CharSequence;

.field private mSubtitleStyleRes:I

.field private mSubtitleView:Landroid/widget/TextView;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field private mTabSelector:Ljava/lang/Runnable;

.field private mTitle:Ljava/lang/CharSequence;

.field private final mTitleHoverListener:Landroid/view/View$OnHoverListener;

.field private mTitleLayout:Landroid/widget/LinearLayout;

.field private mTitleStyleRes:I

.field private mTitleView:Landroid/widget/TextView;

.field private final mUpClickListener:Landroid/view/View$OnClickListener;

.field private mUpGoerFive:Landroid/view/ViewGroup;

.field private mUpMargin:I

.field private mUserTitle:Z

.field private mWM:Landroid/view/WindowManager;

.field private mWasHomeEnabled:Z

.field mWindowCallback:Landroid/view/Window$Callback;

.field private mWindowHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 331
    invoke-direct/range {p0 .. p2}, Lcom/android/internal/widget/AbsActionBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 214
    const-string/jumbo v2, "ro.build.scafe"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mScafe:Ljava/lang/String;

    .line 218
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mIsActionBarNonExtended:Z

    .line 220
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mWM:Landroid/view/WindowManager;

    .line 221
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mWindowHeight:I

    .line 248
    new-instance v2, Lcom/android/internal/widget/ActionBarView$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$1;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 260
    new-instance v2, Lcom/android/internal/widget/ActionBarView$2;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$2;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    .line 270
    new-instance v2, Lcom/android/internal/widget/ActionBarView$3;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$3;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    .line 288
    new-instance v2, Lcom/android/internal/widget/ActionBarView$4;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/internal/widget/ActionBarView$4;-><init>(Lcom/android/internal/widget/ActionBarView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitleHoverListener:Landroid/view/View$OnHoverListener;

    .line 334
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 337
    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    .line 338
    .local v15, "outValue":Landroid/util/TypedValue;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x101046c

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v15, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 339
    iget v2, v15, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_0

    .line 340
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    .line 344
    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v3, 0x10102ce

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 347
    .local v9, "a":Landroid/content/res/TypedArray;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 348
    .local v10, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 349
    .local v17, "pm":Landroid/content/pm/PackageManager;
    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 351
    const/4 v2, 0x5

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 352
    const/16 v2, 0x9

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 353
    const/4 v2, 0x6

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 354
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 356
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 358
    .local v14, "inflater":Landroid/view/LayoutInflater;
    const/16 v2, 0xf

    const v3, 0x1090019

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    .line 363
    .local v13, "homeResId":I
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayoutRes:I

    .line 366
    const v2, 0x109001b

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    .line 368
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v14, v13, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v14, v13, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 371
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionViewUpListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1040850

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v18

    .line 379
    .local v18, "upBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v18, :cond_1

    .line 380
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual/range {v18 .. v18}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 382
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 383
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 385
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    .line 386
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    .line 387
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    .line 388
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    .line 391
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    .line 392
    const/16 v2, 0x10

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10500b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpMargin:I

    .line 398
    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 400
    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v11

    .line 401
    .local v11, "customNavId":I
    if-eqz v11, :cond_2

    .line 402
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v14, v11, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 403
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 404
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    or-int/lit8 v2, v2, 0x10

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 407
    :cond_2
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 409
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 412
    const-string/jumbo v2, "window"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mWM:Landroid/view/WindowManager;

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mWM:Landroid/view/WindowManager;

    if-eqz v2, :cond_3

    .line 414
    new-instance v12, Landroid/util/DisplayMetrics;

    invoke-direct {v12}, Landroid/util/DisplayMetrics;-><init>()V

    .line 415
    .local v12, "displayMetrics":Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 416
    iget v2, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mWindowHeight:I

    .line 418
    .end local v12    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x105000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/AbsActionBarView;->mStatusHeight:I

    .line 419
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/AbsActionBarView;->mStatusHeight:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentMaxHeight:I

    .line 420
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1110073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mIsExtendActionBar:Z

    .line 421
    new-instance v16, Landroid/util/TypedValue;

    invoke-direct/range {v16 .. v16}, Landroid/util/TypedValue;-><init>()V

    .line 422
    .local v16, "outValue2":Landroid/util/TypedValue;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010466

    const/4 v4, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 423
    move-object/from16 v0, v16

    iget v2, v0, Landroid/util/TypedValue;->data:I

    if-eqz v2, :cond_4

    .line 424
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mIsActionBarNonExtended:Z

    .line 425
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView;->mIsExtendedActionBarView:Z

    .line 427
    new-instance v2, Lcom/android/internal/view/menu/ActionMenuItem;

    const/4 v4, 0x0

    const v5, 0x102002c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/internal/view/menu/ActionMenuItem;-><init>(Landroid/content/Context;IIIILjava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    .line 429
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mUpClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 430
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 434
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 438
    :cond_5
    sget-object v2, Lcom/android/internal/R$styleable;->Theme:[I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 440
    const/16 v2, 0xcd

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mActionBarItemBackgroundRes:I

    .line 442
    const/16 v2, 0xf7

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/internal/widget/ActionBarView;->mActionBarTitleHoveredBackgroundRes:I

    .line 444
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/internal/widget/ActionBarView;->mAudioManager:Landroid/media/AudioManager;

    .line 448
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/widget/ActionBarView;)Landroid/app/ActionBar$OnNavigationListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/widget/ActionBarView;)Landroid/media/AudioManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/internal/widget/ActionBarView;Landroid/media/AudioManager;)Landroid/media/AudioManager;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;
    .param p1, "x1"    # Landroid/media/AudioManager;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mAudioManager:Landroid/media/AudioManager;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/internal/widget/ActionBarView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/widget/ActionBarView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/widget/ActionBarView;)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/internal/widget/ActionBarView;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIsTitleHoveredBackground:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ActionBarView$HomeView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/widget/ActionBarView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;
    .param p1, "x1"    # Z

    .prologue
    .line 125
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsTitleHoveredBackground:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/Spinner;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/internal/widget/ActionBarView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/widget/ActionBarView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/internal/widget/ActionBarView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionBarItemBackgroundRes:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/widget/ActionBarView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/internal/widget/ActionBarView;)Lcom/android/internal/view/menu/ActionMenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/widget/ActionBarView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/internal/widget/ActionBarView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/internal/widget/ActionBarView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/widget/ActionBarView;

    .prologue
    .line 125
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mActionBarTitleHoveredBackgroundRes:I

    return v0
.end method

.method private buildHomeContentDescription()Ljava/lang/CharSequence;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 847
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    .line 848
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 857
    .local v0, "homeDesc":Ljava/lang/CharSequence;
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    .line 858
    .local v3, "title":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 859
    .local v2, "subtitle":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 861
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 862
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040853

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v2, v6, v8

    aput-object v0, v6, v9

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 871
    :goto_1
    return-object v1

    .line 850
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    .end local v2    # "subtitle":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_0
    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_1

    .line 851
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040850

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 853
    .end local v0    # "homeDesc":Ljava/lang/CharSequence;
    :cond_1
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104084f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .restart local v0    # "homeDesc":Ljava/lang/CharSequence;
    goto :goto_0

    .line 866
    .restart local v2    # "subtitle":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040852

    new-array v6, v9, [Ljava/lang/Object;

    aput-object v3, v6, v7

    aput-object v0, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "result":Ljava/lang/String;
    goto :goto_1

    .end local v1    # "result":Ljava/lang/String;
    :cond_3
    move-object v1, v0

    .line 871
    goto :goto_1
.end method

.method private configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V
    .locals 4
    .param p1, "builder"    # Lcom/android/internal/view/menu/MenuBuilder;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 701
    if-eqz p1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 703
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/android/internal/view/menu/MenuBuilder;->addMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 710
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 706
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->initForMenu(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 707
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->updateMenuView(Z)V

    .line 708
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->updateMenuView(Z)V

    goto :goto_0
.end method

.method private initTitle()V
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 1191
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-nez v3, :cond_6

    .line 1192
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1194
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_8

    .line 1195
    const v3, 0x10900df

    invoke-virtual {v0, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 1202
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v4, 0x10202cb

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 1203
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const v4, 0x10202cc

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 1206
    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getHoverUIFeatureLevel()I

    move-result v3

    if-ge v3, v5, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_2

    .line 1207
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 1208
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/View;->setHoverPopupType(I)V

    .line 1210
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v2

    .line 1211
    .local v2, "titleHoverPopupWindow":Landroid/widget/HoverPopupWindow;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->setFHGuideLineEnabled(Z)V

    .line 1212
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 1214
    .local v1, "titleHoverPopupPosOffsetY":I
    invoke-virtual {v2, v6, v1}, Landroid/widget/HoverPopupWindow;->setPopupPosOffset(II)V

    .line 1215
    invoke-virtual {v2, v6}, Landroid/widget/HoverPopupWindow;->setGuideLineFadeOffset(I)V

    .line 1216
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 1217
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 1219
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 1220
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 1224
    .end local v1    # "titleHoverPopupPosOffsetY":I
    .end local v2    # "titleHoverPopupWindow":Landroid/widget/HoverPopupWindow;
    :cond_2
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    if-eqz v3, :cond_3

    .line 1225
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/internal/widget/ActionBarView;->mTitleStyleRes:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1227
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    .line 1228
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1231
    :cond_4
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    if-eqz v3, :cond_5

    .line 1232
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleStyleRes:I

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1234
    :cond_5
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    .line 1235
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1236
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1240
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_6
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1241
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1242
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1245
    :cond_7
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1249
    :goto_1
    return-void

    .line 1198
    .restart local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_8
    const v3, 0x109001a

    invoke-virtual {v0, v3, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 1247
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :cond_9
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setDisplayHomeAsUpOptionsWithAnimation(IJ)V
    .locals 9
    .param p1, "options"    # I
    .param p2, "duration"    # J

    .prologue
    const/4 v0, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 894
    iget v8, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v8, v0, :cond_2

    .line 895
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 897
    and-int/lit8 v8, v0, 0x3f

    if-eqz v8, :cond_8

    .line 898
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 900
    and-int/lit8 v8, v0, 0x4

    if-eqz v8, :cond_0

    .line 901
    and-int/lit8 v8, p1, 0x4

    if-eqz v8, :cond_3

    move v3, v6

    .line 902
    .local v3, "setUp":Z
    :goto_1
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v8, v3, p2, p3}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpWithAnimation(ZJ)V

    .line 908
    if-eqz v3, :cond_0

    .line 909
    invoke-virtual {p0, v6}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 913
    .end local v3    # "setUp":Z
    :cond_0
    and-int/lit8 v8, p1, 0x2

    if-eqz v8, :cond_4

    move v4, v6

    .line 914
    .local v4, "showHome":Z
    :goto_2
    iget v8, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_5

    move v1, v6

    .line 915
    .local v1, "homeAsUp":Z
    :goto_3
    if-nez v4, :cond_6

    if-eqz v1, :cond_6

    move v5, v6

    .line 916
    .local v5, "titleUp":Z
    :goto_4
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 918
    if-nez v4, :cond_1

    if-eqz v5, :cond_7

    :cond_1
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v6, :cond_7

    move v2, v7

    .line 920
    .local v2, "homeVis":I
    :goto_5
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 922
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 928
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v4    # "showHome":Z
    .end local v5    # "titleUp":Z
    :goto_6
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-nez v6, :cond_9

    .line 929
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 941
    :goto_7
    return-void

    .line 894
    .end local v0    # "flagsChanged":I
    :cond_2
    iget v8, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v8

    goto :goto_0

    .restart local v0    # "flagsChanged":I
    :cond_3
    move v3, v7

    .line 901
    goto :goto_1

    :cond_4
    move v4, v7

    .line 913
    goto :goto_2

    .restart local v4    # "showHome":Z
    :cond_5
    move v1, v7

    .line 914
    goto :goto_3

    .restart local v1    # "homeAsUp":Z
    :cond_6
    move v5, v7

    .line 915
    goto :goto_4

    .line 918
    .restart local v5    # "titleUp":Z
    :cond_7
    const/16 v2, 0x8

    goto :goto_5

    .line 924
    .end local v1    # "homeAsUp":Z
    .end local v4    # "showHome":Z
    .end local v5    # "titleUp":Z
    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_6

    .line 932
    :cond_9
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v6, v7}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 933
    and-int/lit8 v6, p1, 0x4

    if-eqz v6, :cond_a

    .line 934
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1040850

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 937
    :cond_a
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x104084f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_7
.end method

.method private setHomeButtonEnabled(ZZ)V
    .locals 1
    .param p1, "enable"    # Z
    .param p2, "recordState"    # Z

    .prologue
    .line 812
    if-eqz p2, :cond_0

    .line 813
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mWasHomeEnabled:Z

    .line 816
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 827
    :goto_0
    return-void

    .line 823
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 824
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/View;->setFocusable(Z)V

    .line 826
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    goto :goto_0
.end method

.method private setTitleImpl(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x0

    .line 767
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 768
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    .line 769
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 770
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 772
    invoke-virtual {p0}, Landroid/view/View;->isHoveringUIEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHoverUIFeatureLevel()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_1

    .line 773
    :cond_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v0

    .line 774
    .local v0, "titleHoverPopupWindow":Landroid/widget/HoverPopupWindow;
    invoke-virtual {v0, p1}, Landroid/widget/HoverPopupWindow;->setContent(Ljava/lang/CharSequence;)V

    .line 775
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getHoverPopupWindow()Landroid/widget/HoverPopupWindow;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/HoverPopupWindow;->setEnabled(Z)V

    .line 778
    .end local v0    # "titleHoverPopupWindow":Landroid/widget/HoverPopupWindow;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_2
    const/4 v1, 0x1

    .line 781
    .local v1, "visible":Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_6

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 783
    .end local v1    # "visible":Z
    :cond_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    if-eqz v2, :cond_4

    .line 784
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mLogoNavItem:Lcom/android/internal/view/menu/ActionMenuItem;

    invoke-virtual {v2, p1}, Lcom/android/internal/view/menu/ActionMenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 786
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 787
    return-void

    :cond_5
    move v1, v2

    .line 778
    goto :goto_0

    .line 781
    .restart local v1    # "visible":Z
    :cond_6
    const/16 v2, 0x8

    goto :goto_1
.end method

.method private updateHomeAccessibility(Z)V
    .locals 2
    .param p1, "homeEnabled"    # Z

    .prologue
    .line 830
    if-nez p1, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 837
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 835
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->buildHomeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateHomeImageLayout()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1300
    const/4 v1, 0x0

    .line 1301
    .local v1, "homeResId":I
    iget v8, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayoutRes:I

    if-eqz v8, :cond_0

    .line 1302
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayoutRes:I

    .line 1312
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1314
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2, v1, p0, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/ActionBarView$HomeView;

    .line 1315
    .local v6, "tempHomeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    const v8, 0x102002c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    .line 1317
    .local v7, "tempiconView":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1318
    .local v3, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v8, v8, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1321
    .local v4, "oldLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v8, v8, Lcom/android/internal/widget/ActionBarView$HomeView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1324
    .local v5, "oldLp_e":Landroid/view/ViewGroup$MarginLayoutParams;
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1325
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1328
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1329
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1331
    return-void

    .line 1304
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v4    # "oldLp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "oldLp_e":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v6    # "tempHomeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v7    # "tempiconView":Landroid/widget/ImageView;
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    sget-object v10, Lcom/android/internal/R$styleable;->ActionBar:[I

    const v11, 0x10102ce

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1307
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v8, 0xf

    const v9, 0x1090019

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 1310
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public collapseActionView()V
    .locals 2

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 720
    .local v0, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :goto_0
    if-eqz v0, :cond_0

    .line 721
    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->collapseActionView()Z

    .line 723
    :cond_0
    return-void

    .line 718
    .end local v0    # "item":Lcom/android/internal/view/menu/MenuItemImpl;
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v1, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    goto :goto_0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .prologue
    .line 1169
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    const v1, 0x800013

    invoke-direct {v0, v1}, Landroid/app/ActionBar$LayoutParams;-><init>(I)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1881
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/app/ActionBar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1886
    if-nez p1, :cond_0

    .line 1887
    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1889
    :cond_0
    return-object p1
.end method

.method public getCustomNavigationView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1154
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 1162
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    return v0
.end method

.method public getDropdownAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method public getDropdownSelectedPosition()I
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 1158
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    return v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public hasEmbeddedTabs()Z
    .locals 1

    .prologue
    .line 604
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    return v0
.end method

.method public hasExpandedActionView()Z
    .locals 1

    .prologue
    .line 713
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initIndeterminateProgress()V
    .locals 5

    .prologue
    .line 547
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    .line 549
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10203b3

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 550
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 552
    return-void
.end method

.method public initProgress()V
    .locals 5

    .prologue
    .line 539
    new-instance v0, Landroid/widget/ProgressBar;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/internal/widget/ActionBarView;->mProgressStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    .line 540
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const v1, 0x10203b4

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    .line 541
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 544
    return-void
.end method

.method public isCollapsed()Z
    .locals 1

    .prologue
    .line 1260
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    return v0
.end method

.method public isSplitActionBar()Z
    .locals 1

    .prologue
    .line 600
    iget-boolean v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    return v0
.end method

.method public isTitleTruncated()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 1338
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    if-nez v4, :cond_1

    .line 1353
    :cond_0
    :goto_0
    return v3

    .line 1342
    :cond_1
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 1343
    .local v2, "titleLayout":Landroid/text/Layout;
    if-eqz v2, :cond_0

    .line 1347
    invoke-virtual {v2}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    .line 1348
    .local v1, "lineCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 1349
    invoke-virtual {v2, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 1350
    const/4 v3, 0x1

    goto :goto_0

    .line 1348
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 10
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/16 v9, 0xc

    const/4 v8, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 452
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 454
    iput-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    .line 455
    iput-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    .line 456
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_0

    .line 457
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 459
    :cond_0
    iput-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    .line 460
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_1

    .line 461
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 464
    :cond_1
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    if-eqz v3, :cond_2

    .line 465
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ActionBarView;->setHomeActionContentDescription(I)V

    .line 469
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->updateHomeImageLayout()V

    .line 477
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v3, :cond_4

    .line 478
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 479
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_3

    .line 480
    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 481
    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 483
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 486
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_4
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mScafe:Ljava/lang/String;

    const-string/jumbo v4, "macchiato"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v3

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_5

    .line 489
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v6, :cond_7

    .line 490
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4, v9}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    iget-object v6, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v6, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v3, v4, v5, v7, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 500
    :cond_5
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 501
    .local v2, "vp":Landroid/view/ViewParent;
    if-eqz v2, :cond_6

    instance-of v3, v2, Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mIsExtendActionBar:Z

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mIsActionBarNonExtended:Z

    if-nez v3, :cond_6

    .line 502
    invoke-virtual {p0, v7, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 503
    iput-boolean v7, p0, Lcom/android/internal/widget/ActionBarView;->mIsExtendedActionBarView:Z

    .line 504
    iget v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    iget v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mStatusHeight:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mContentMaxHeight:I

    .line 506
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mWM:Landroid/view/WindowManager;

    if-eqz v3, :cond_6

    .line 507
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 508
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mWM:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 509
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/android/internal/widget/ActionBarView;->mWindowHeight:I

    .line 513
    .end local v0    # "displayMetrics":Landroid/util/DisplayMetrics;
    :cond_6
    return-void

    .line 495
    .end local v2    # "vp":Landroid/view/ViewParent;
    :cond_7
    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4, v9}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 525
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 526
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mTabSelector:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 527
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideOverflowMenu()Z

    .line 529
    iget-object v0, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->hideSubMenus()Z

    .line 531
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 1174
    invoke-super {p0}, Landroid/view/View;->onFinishInflate()V

    .line 1176
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1177
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1179
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_1

    .line 1180
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 1181
    .local v0, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_1

    .line 1182
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1183
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1185
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1188
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 39
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1679
    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v7, v3, v4

    .line 1681
    .local v7, "contentHeight":I
    if-gtz v7, :cond_1

    .line 1877
    :cond_0
    :goto_0
    return-void

    .line 1686
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isLayoutRtl()Z

    move-result v8

    .line 1687
    .local v8, "isLayoutRtl":Z
    if-eqz v8, :cond_c

    const/16 v22, 0x1

    .line 1688
    .local v22, "direction":I
    :goto_1
    if-eqz v8, :cond_d

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v11

    .line 1691
    .local v11, "menuStart":I
    :goto_2
    if-eqz v8, :cond_e

    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v36, v3, v4

    .line 1692
    .local v36, "x":I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v6

    .line 1694
    .local v6, "y":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    .line 1695
    .local v26, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_10

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_10

    const/16 v32, 0x1

    .line 1697
    .local v32, "showTitle":Z
    :goto_5
    const/16 v33, 0x0

    .line 1698
    .local v33, "startOffset":I
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    .line 1699
    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_11

    .line 1700
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v33

    .line 1707
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move/from16 v0, v36

    move/from16 v1, v33

    invoke-static {v0, v1, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int v5, v36, v3

    .line 1709
    .end local v36    # "x":I
    .local v5, "x":I
    move/from16 v0, v33

    invoke-static {v5, v0, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1711
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v3, :cond_3

    .line 1712
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    packed-switch v3, :pswitch_data_0

    .line 1747
    :cond_3
    :goto_7
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object/from16 v0, p0

    if-ne v3, v0, :cond_4

    .line 1748
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-nez v8, :cond_14

    const/4 v14, 0x1

    :goto_8
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1752
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_5

    .line 1754
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    if-nez v8, :cond_15

    const/4 v14, 0x1

    :goto_9
    move-object/from16 v9, p0

    move v12, v6

    move v13, v7

    invoke-virtual/range {v9 .. v14}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    .line 1755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1758
    :cond_5
    const/16 v20, 0x0

    .line 1759
    .local v20, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v3, :cond_16

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v20, v0

    .line 1765
    :cond_6
    :goto_a
    if-eqz v20, :cond_b

    .line 1766
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v27

    .line 1767
    .local v27, "layoutDirection":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v28

    .line 1768
    .local v28, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v28

    instance-of v3, v0, Landroid/app/ActionBar$LayoutParams;

    if-eqz v3, :cond_17

    check-cast v28, Landroid/app/ActionBar$LayoutParams;

    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v15, v28

    .line 1770
    .local v15, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_b
    if-eqz v15, :cond_18

    iget v0, v15, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v23, v0

    .line 1771
    .local v23, "gravity":I
    :goto_c
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v29

    .line 1773
    .local v29, "navWidth":I
    const/16 v34, 0x0

    .line 1774
    .local v34, "topMargin":I
    const/16 v16, 0x0

    .line 1775
    .local v16, "bottomMargin":I
    if-eqz v15, :cond_7

    .line 1776
    invoke-virtual {v15}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v3

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1777
    invoke-virtual {v15}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    mul-int v3, v3, v22

    add-int/2addr v11, v3

    .line 1778
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v34, v0

    .line 1779
    iget v0, v15, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v16, v0

    .line 1782
    :cond_7
    const v3, 0x800007

    and-int v25, v23, v3

    .line 1784
    .local v25, "hgravity":I
    const/4 v3, 0x1

    move/from16 v0, v25

    if-ne v0, v3, :cond_1c

    .line 1785
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v29

    div-int/lit8 v18, v3, 0x2

    .line 1786
    .local v18, "centeredLeft":I
    if-eqz v8, :cond_1a

    .line 1787
    add-int v19, v18, v29

    .line 1788
    .local v19, "centeredStart":I
    move/from16 v17, v18

    .line 1789
    .local v17, "centeredEnd":I
    move/from16 v0, v19

    if-le v0, v5, :cond_19

    .line 1790
    const/16 v25, 0x5

    .line 1807
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_8
    :goto_d
    const/16 v37, 0x0

    .line 1808
    .local v37, "xpos":I
    move/from16 v0, v25

    move/from16 v1, v27

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1820
    :goto_e
    :pswitch_1
    and-int/lit8 v35, v23, 0x70

    .line 1822
    .local v35, "vgravity":I
    if-nez v23, :cond_9

    .line 1823
    const/16 v35, 0x10

    .line 1826
    :cond_9
    const/16 v38, 0x0

    .line 1827
    .local v38, "ypos":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/ActionBarView;->mIsExtendedActionBarView:Z

    if-eqz v3, :cond_a

    .line 1828
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v38

    .line 1832
    :cond_a
    sparse-switch v35, :sswitch_data_0

    .line 1851
    :goto_f
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v21

    .line 1852
    .local v21, "customWidth":I
    add-int v3, v37, v21

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v4, v4, v38

    move-object/from16 v0, v20

    move/from16 v1, v37

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1854
    move/from16 v0, v21

    invoke-static {v5, v0, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1857
    .end local v15    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v16    # "bottomMargin":I
    .end local v21    # "customWidth":I
    .end local v23    # "gravity":I
    .end local v25    # "hgravity":I
    .end local v27    # "layoutDirection":I
    .end local v29    # "navWidth":I
    .end local v34    # "topMargin":I
    .end local v35    # "vgravity":I
    .end local v37    # "xpos":I
    .end local v38    # "ypos":I
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_0

    .line 1858
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/view/View;->bringToFront()V

    .line 1859
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v24, v3, 0x2

    .line 1861
    .local v24, "halfProgressHeight":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v3, :cond_21

    .line 1863
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/ActionBarView;->mIsExtendedActionBarView:Z

    if-eqz v3, :cond_20

    .line 1864
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    sub-int v9, v7, v24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v10

    add-int/2addr v9, v10

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v10, v12

    add-int v12, v7, v24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    add-int/2addr v12, v13

    invoke-virtual {v3, v4, v9, v10, v12}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1687
    .end local v5    # "x":I
    .end local v6    # "y":I
    .end local v11    # "menuStart":I
    .end local v20    # "customView":Landroid/view/View;
    .end local v22    # "direction":I
    .end local v24    # "halfProgressHeight":I
    .end local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v32    # "showTitle":Z
    .end local v33    # "startOffset":I
    :cond_c
    const/16 v22, -0x1

    goto/16 :goto_1

    .line 1688
    .restart local v22    # "direction":I
    :cond_d
    sub-int v3, p4, p2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    sub-int v11, v3, v4

    goto/16 :goto_2

    .line 1691
    .restart local v11    # "menuStart":I
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v36

    goto/16 :goto_3

    .line 1694
    .restart local v6    # "y":I
    .restart local v36    # "x":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v26, v0

    goto/16 :goto_4

    .line 1695
    .restart local v26    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :cond_10
    const/16 v32, 0x0

    goto/16 :goto_5

    .line 1701
    .restart local v32    # "showTitle":Z
    .restart local v33    # "startOffset":I
    :cond_11
    if-eqz v32, :cond_2

    .line 1702
    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/widget/ActionBarView$HomeView;->getUpWidth()I

    move-result v33

    goto/16 :goto_6

    .line 1716
    .end local v36    # "x":I
    .restart local v5    # "x":I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_3

    .line 1717
    if-eqz v32, :cond_12

    .line 1718
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1720
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1721
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1725
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_3

    .line 1726
    if-eqz v32, :cond_13

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    .line 1727
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/internal/widget/AbsActionBarView;->positionChild(Landroid/view/View;IIIZ)I

    move-result v3

    add-int/2addr v5, v3

    .line 1728
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    invoke-static {v5, v3, v8}, Lcom/android/internal/widget/ActionBarView;->next(IIZ)I

    move-result v5

    goto/16 :goto_7

    .line 1748
    :cond_14
    const/4 v14, 0x0

    goto/16 :goto_8

    .line 1754
    :cond_15
    const/4 v14, 0x0

    goto/16 :goto_9

    .line 1761
    .restart local v20    # "customView":Landroid/view/View;
    :cond_16
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v20, v0

    goto/16 :goto_a

    .line 1768
    .restart local v27    # "layoutDirection":I
    .restart local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_17
    const/4 v15, 0x0

    goto/16 :goto_b

    .line 1770
    .end local v28    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v15    # "ablp":Landroid/app/ActionBar$LayoutParams;
    :cond_18
    const v23, 0x800013

    goto/16 :goto_c

    .line 1791
    .restart local v16    # "bottomMargin":I
    .restart local v17    # "centeredEnd":I
    .restart local v18    # "centeredLeft":I
    .restart local v19    # "centeredStart":I
    .restart local v23    # "gravity":I
    .restart local v25    # "hgravity":I
    .restart local v29    # "navWidth":I
    .restart local v34    # "topMargin":I
    :cond_19
    move/from16 v0, v17

    if-ge v0, v11, :cond_8

    .line 1792
    const/16 v25, 0x3

    goto/16 :goto_d

    .line 1795
    .end local v17    # "centeredEnd":I
    .end local v19    # "centeredStart":I
    :cond_1a
    move/from16 v19, v18

    .line 1796
    .restart local v19    # "centeredStart":I
    add-int v17, v18, v29

    .line 1797
    .restart local v17    # "centeredEnd":I
    move/from16 v0, v19

    if-ge v0, v5, :cond_1b

    .line 1798
    const/16 v25, 0x3

    goto/16 :goto_d

    .line 1799
    :cond_1b
    move/from16 v0, v17

    if-le v0, v11, :cond_8

    .line 1800
    const/16 v25, 0x5

    goto/16 :goto_d

    .line 1803
    .end local v17    # "centeredEnd":I
    .end local v18    # "centeredLeft":I
    .end local v19    # "centeredStart":I
    :cond_1c
    if-nez v23, :cond_8

    .line 1804
    const v25, 0x800003

    goto/16 :goto_d

    .line 1810
    .restart local v37    # "xpos":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mRight:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    sub-int v3, v3, v29

    div-int/lit8 v37, v3, 0x2

    .line 1811
    goto/16 :goto_e

    .line 1813
    :pswitch_5
    if-eqz v8, :cond_1d

    move/from16 v37, v11

    .line 1814
    :goto_10
    goto/16 :goto_e

    :cond_1d
    move/from16 v37, v5

    .line 1813
    goto :goto_10

    .line 1816
    :pswitch_6
    if-eqz v8, :cond_1e

    sub-int v37, v5, v29

    :goto_11
    goto/16 :goto_e

    :cond_1e
    sub-int v37, v11, v29

    goto :goto_11

    .line 1834
    .restart local v35    # "vgravity":I
    .restart local v38    # "ypos":I
    :sswitch_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v31

    .line 1835
    .local v31, "paddedTop":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/View;->mBottom:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int v30, v3, v4

    .line 1837
    .local v30, "paddedBottom":I
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/internal/widget/ActionBarView;->mIsExtendedActionBarView:Z

    if-nez v3, :cond_1f

    .line 1838
    sub-int v3, v30, v31

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v38, v3, 0x2

    goto/16 :goto_f

    .line 1840
    :cond_1f
    sub-int v3, v30, v31

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int v38, v3, v31

    .line 1842
    goto/16 :goto_f

    .line 1844
    .end local v30    # "paddedBottom":I
    .end local v31    # "paddedTop":I
    :sswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int v38, v3, v34

    .line 1845
    goto/16 :goto_f

    .line 1847
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int v38, v3, v16

    goto/16 :goto_f

    .line 1867
    .end local v15    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v16    # "bottomMargin":I
    .end local v23    # "gravity":I
    .end local v25    # "hgravity":I
    .end local v27    # "layoutDirection":I
    .end local v29    # "navWidth":I
    .end local v34    # "topMargin":I
    .end local v35    # "vgravity":I
    .end local v37    # "xpos":I
    .end local v38    # "ypos":I
    .restart local v24    # "halfProgressHeight":I
    :cond_20
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    sub-int v9, v7, v24

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v10, v12

    add-int v12, v7, v24

    invoke-virtual {v3, v4, v9, v10, v12}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1872
    :cond_21
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v0, v24

    neg-int v9, v0

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v12

    add-int/2addr v10, v12

    move/from16 v0, v24

    invoke-virtual {v3, v4, v9, v10, v0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_0

    .line 1712
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1808
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_6
    .end packed-switch

    .line 1832
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .locals 59
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1358
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 1359
    .local v8, "childCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    move/from16 v55, v0

    if-eqz v55, :cond_6

    .line 1360
    const/16 v51, 0x0

    .line 1361
    .local v51, "visibleChildren":I
    const/16 v26, 0x0

    .local v26, "i":I
    :goto_0
    move/from16 v0, v26

    if-ge v0, v8, :cond_2

    .line 1362
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1363
    .local v7, "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v55

    const/16 v56, 0x8

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    if-ne v7, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v55

    if-eqz v55, :cond_1

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    if-eq v7, v0, :cond_1

    .line 1366
    add-int/lit8 v51, v51, 0x1

    .line 1361
    :cond_1
    add-int/lit8 v26, v26, 0x1

    goto :goto_0

    .line 1370
    .end local v7    # "child":Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v46

    .line 1371
    .local v46, "upChildCount":I
    const/16 v26, 0x0

    :goto_1
    move/from16 v0, v26

    move/from16 v1, v46

    if-ge v0, v1, :cond_4

    .line 1372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1373
    .restart local v7    # "child":Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v55

    const/16 v56, 0x8

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_3

    .line 1374
    add-int/lit8 v51, v51, 0x1

    .line 1371
    :cond_3
    add-int/lit8 v26, v26, 0x1

    goto :goto_1

    .line 1378
    .end local v7    # "child":Landroid/view/View;
    :cond_4
    if-nez v51, :cond_6

    .line 1380
    const/16 v55, 0x0

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1381
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1675
    .end local v26    # "i":I
    .end local v46    # "upChildCount":I
    .end local v51    # "visibleChildren":I
    :cond_5
    :goto_2
    return-void

    .line 1385
    :cond_6
    const/16 v55, 0x0

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1388
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsExtendActionBar:Z

    move/from16 v55, v0

    if-eqz v55, :cond_10

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsActionBarNonExtended:Z

    move/from16 v55, v0

    if-nez v55, :cond_10

    .line 1389
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v52

    .line 1390
    .local v52, "vp":Landroid/view/ViewParent;
    const/16 v33, 0x0

    .line 1391
    .local v33, "mActionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    const/16 v28, 0x0

    .line 1392
    .local v28, "isTwGetTabsOnTop":Z
    move-object/from16 v0, v52

    instance-of v0, v0, Lcom/android/internal/widget/ActionBarContainer;

    move/from16 v55, v0

    if-eqz v55, :cond_b

    move-object/from16 v33, v52

    .line 1393
    check-cast v33, Lcom/android/internal/widget/ActionBarContainer;

    .line 1394
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/widget/ActionBarContainer;->getScrollingTabExtended()Z

    move-result v55

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsgetScrollingTabExtended:Z

    .line 1396
    invoke-virtual/range {v33 .. v33}, Lcom/android/internal/widget/ActionBarContainer;->twGetTabsOnTop()Z

    move-result v28

    .line 1398
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v35

    .line 1399
    .local v35, "mCntActionBarViewChild":I
    invoke-virtual/range {v33 .. v33}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v34

    .line 1401
    .local v34, "mCntActionBarContainerChild":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_3
    move/from16 v0, v26

    move/from16 v1, v35

    if-ge v0, v1, :cond_8

    .line 1402
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v55

    move-object/from16 v0, v55

    instance-of v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    move/from16 v55, v0

    if-eqz v55, :cond_7

    .line 1403
    const/16 v28, 0x0

    .line 1401
    :cond_7
    add-int/lit8 v26, v26, 0x1

    goto :goto_3

    .line 1406
    :cond_8
    const/16 v26, 0x0

    :goto_4
    move/from16 v0, v26

    move/from16 v1, v34

    if-ge v0, v1, :cond_a

    .line 1407
    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v55

    move-object/from16 v0, v55

    instance-of v0, v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    move/from16 v55, v0

    if-eqz v55, :cond_9

    .line 1408
    move-object/from16 v0, v33

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v55

    check-cast v55, Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v44, v55

    check-cast v44, Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 1409
    .local v44, "st":Lcom/android/internal/widget/ScrollingTabContainerView;
    invoke-virtual/range {v44 .. v44}, Landroid/view/View;->getVisibility()I

    move-result v55

    const/16 v56, 0x8

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_9

    .line 1410
    const/16 v28, 0x0

    .line 1406
    .end local v44    # "st":Lcom/android/internal/widget/ScrollingTabContainerView;
    :cond_9
    add-int/lit8 v26, v26, 0x1

    goto :goto_4

    .line 1414
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v55, v0

    and-int/lit8 v55, v55, 0x2

    if-eqz v55, :cond_b

    .line 1415
    const/16 v28, 0x0

    .line 1418
    .end local v26    # "i":I
    .end local v34    # "mCntActionBarContainerChild":I
    .end local v35    # "mCntActionBarViewChild":I
    :cond_b
    const/16 v27, 0x0

    .line 1419
    .local v27, "isStatusbarVisible":Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v50

    .line 1420
    .local v50, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v50, :cond_d

    .line 1421
    invoke-virtual/range {v50 .. v50}, Landroid/view/ViewRootImpl;->getWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v54

    .line 1422
    .local v54, "winLp":Landroid/view/WindowManager$LayoutParams;
    if-eqz v54, :cond_11

    move-object/from16 v0, v54

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    move/from16 v55, v0

    move/from16 v0, v55

    and-int/lit16 v0, v0, 0x400

    move/from16 v55, v0

    if-nez v55, :cond_11

    move-object/from16 v0, v54

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v55, v0

    if-ltz v55, :cond_c

    move-object/from16 v0, v54

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v55, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mWindowHeight:I

    move/from16 v56, v0

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_c

    move-object/from16 v0, v54

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    move/from16 v55, v0

    if-nez v55, :cond_11

    move-object/from16 v0, v54

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v55, v0

    shr-int/lit8 v55, v55, 0x4

    const/16 v56, 0x5

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_11

    move-object/from16 v0, v54

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move/from16 v55, v0

    shr-int/lit8 v55, v55, 0x4

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_11

    .line 1426
    :cond_c
    const/16 v27, 0x1

    .line 1431
    .end local v54    # "winLp":Landroid/view/WindowManager$LayoutParams;
    :cond_d
    :goto_5
    const/16 v38, 0x0

    .line 1432
    .local v38, "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    instance-of v0, v0, Landroid/app/Activity;

    move/from16 v55, v0

    if-eqz v55, :cond_12

    .line 1433
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    check-cast v55, Landroid/app/Activity;

    invoke-virtual/range {v55 .. v55}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v38

    .line 1438
    :cond_e
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    move/from16 v55, v0

    if-eqz v55, :cond_13

    if-eqz v27, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsgetScrollingTabExtended:Z

    move/from16 v55, v0

    if-nez v55, :cond_13

    if-nez v28, :cond_13

    if-eqz v38, :cond_f

    if-eqz v38, :cond_13

    invoke-virtual/range {v38 .. v38}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v55

    if-nez v55, :cond_13

    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v55

    const/high16 v56, 0x40000000    # 2.0f

    and-int v55, v55, v56

    const/high16 v56, 0x40000000    # 2.0f

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    if-eqz v55, :cond_13

    .line 1441
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsExtendedActionBarView:Z

    move/from16 v55, v0

    const/16 v56, 0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_10

    .line 1442
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v55, v0

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/ActionBarView;->mOldContentHeight:I

    .line 1443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentMaxHeight:I

    move/from16 v55, v0

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 1444
    const/16 v55, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mStatusHeight:I

    move/from16 v56, v0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v56

    move/from16 v3, v57

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1445
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsExtendedActionBarView:Z

    .line 1455
    .end local v27    # "isStatusbarVisible":Z
    .end local v28    # "isTwGetTabsOnTop":Z
    .end local v33    # "mActionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    .end local v38    # "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v52    # "vp":Landroid/view/ViewParent;
    :cond_10
    :goto_7
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v53

    .line 1456
    .local v53, "widthMode":I
    const/high16 v55, 0x40000000    # 2.0f

    move/from16 v0, v53

    move/from16 v1, v55

    if-eq v0, v1, :cond_14

    .line 1457
    new-instance v55, Ljava/lang/IllegalStateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " can only be used "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, "with android:layout_width=\"match_parent\" (or fill_parent)"

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v55

    .line 1428
    .end local v53    # "widthMode":I
    .restart local v27    # "isStatusbarVisible":Z
    .restart local v28    # "isTwGetTabsOnTop":Z
    .restart local v33    # "mActionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    .restart local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    .restart local v52    # "vp":Landroid/view/ViewParent;
    .restart local v54    # "winLp":Landroid/view/WindowManager$LayoutParams;
    :cond_11
    const/16 v27, 0x0

    goto/16 :goto_5

    .line 1434
    .end local v54    # "winLp":Landroid/view/WindowManager$LayoutParams;
    .restart local v38    # "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    move-object/from16 v0, v55

    instance-of v0, v0, Landroid/content/ContextWrapper;

    move/from16 v55, v0

    if-eqz v55, :cond_e

    .line 1435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/View;->mContext:Landroid/content/Context;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/content/Context;->getAppMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v38

    goto/16 :goto_6

    .line 1447
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsExtendedActionBarView:Z

    move/from16 v55, v0

    if-eqz v55, :cond_10

    .line 1448
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mOldContentHeight:I

    move/from16 v55, v0

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    .line 1449
    const/16 v55, 0x0

    const/16 v56, 0x0

    const/16 v57, 0x0

    const/16 v58, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v55

    move/from16 v2, v56

    move/from16 v3, v57

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1450
    const/16 v55, 0x0

    move/from16 v0, v55

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView;->mIsExtendedActionBarView:Z

    goto/16 :goto_7

    .line 1461
    .end local v27    # "isStatusbarVisible":Z
    .end local v28    # "isTwGetTabsOnTop":Z
    .end local v33    # "mActionBarContainer":Lcom/android/internal/widget/ActionBarContainer;
    .end local v38    # "multindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .end local v50    # "viewRoot":Landroid/view/ViewRootImpl;
    .end local v52    # "vp":Landroid/view/ViewParent;
    .restart local v53    # "widthMode":I
    :cond_14
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 1462
    .local v18, "heightMode":I
    const/high16 v55, -0x80000000

    move/from16 v0, v18

    move/from16 v1, v55

    if-eq v0, v1, :cond_15

    .line 1463
    new-instance v55, Ljava/lang/IllegalStateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v57

    invoke-virtual/range {v57 .. v57}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " can only be used "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string/jumbo v57, "with android:layout_height=\"wrap_content\""

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v55

    .line 1467
    :cond_15
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    .line 1469
    .local v10, "contentWidth":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v55, v0

    if-ltz v55, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v36, v0

    .line 1472
    .local v36, "maxHeight":I
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v55

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v56

    add-int v49, v55, v56

    .line 1473
    .local v49, "verticalPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v40

    .line 1474
    .local v40, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v41

    .line 1475
    .local v41, "paddingRight":I
    sub-int v17, v36, v49

    .line 1476
    .local v17, "height":I
    const/high16 v55, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v55

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1477
    .local v9, "childSpecHeight":I
    const/high16 v55, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v55

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v16

    .line 1479
    .local v16, "exactHeightSpec":I
    sub-int v55, v10, v40

    sub-int v6, v55, v41

    .line 1480
    .local v6, "availableWidth":I
    div-int/lit8 v30, v6, 0x2

    .line 1481
    .local v30, "leftOfCenter":I
    move/from16 v42, v30

    .line 1483
    .local v42, "rightOfCenter":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v55, v0

    if-eqz v55, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getVisibility()I

    move-result v55

    const/16 v56, 0x8

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v55, v0

    and-int/lit8 v55, v55, 0x8

    if-eqz v55, :cond_23

    const/16 v43, 0x1

    .line 1486
    .local v43, "showTitle":Z
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v55, v0

    if-eqz v55, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    .line 1488
    .local v20, "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    :goto_a
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 1490
    .local v21, "homeLp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v55, v0

    if-gez v55, :cond_25

    .line 1491
    const/high16 v55, -0x80000000

    move/from16 v0, v55

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .line 1497
    .local v24, "homeWidthSpec":I
    :goto_b
    const/4 v15, 0x0

    .line 1498
    .local v15, "customView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v55, v0

    if-eqz v55, :cond_26

    .line 1499
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    .line 1506
    :cond_16
    :goto_c
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getShowUp()Z

    move-result v55

    if-eqz v55, :cond_27

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getShowIcon()Z

    move-result v55

    if-nez v55, :cond_27

    .line 1507
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView$HomeView;->hasUpPadding:Z

    .line 1521
    :goto_d
    move-object/from16 v0, v20

    move/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 1523
    const/16 v23, 0x0

    .line 1524
    .local v23, "homeWidth":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getVisibility()I

    move-result v55

    const/16 v56, 0x8

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_17

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v55

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v56, v0

    move-object/from16 v0, v55

    move-object/from16 v1, v56

    if-eq v0, v1, :cond_18

    :cond_17
    if-eqz v43, :cond_19

    .line 1526
    :cond_18
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v23

    .line 1527
    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/widget/ActionBarView$HomeView;->getStartOffset()I

    move-result v55

    add-int v22, v23, v55

    .line 1528
    .local v22, "homeOffsetWidth":I
    const/16 v55, 0x0

    sub-int v56, v6, v22

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1529
    const/16 v55, 0x0

    sub-int v56, v6, v22

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 1546
    .end local v22    # "homeOffsetWidth":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v55, v0

    if-eqz v55, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v55

    move-object/from16 v0, v55

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_1a

    .line 1547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move/from16 v2, v16

    move/from16 v3, v56

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1548
    const/16 v55, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getMeasuredWidth()I

    move-result v56

    sub-int v56, v42, v56

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 1551
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v55, v0

    if-eqz v55, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getVisibility()I

    move-result v55

    const/16 v56, 0x8

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_1b

    .line 1553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v55, v0

    const/16 v56, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move/from16 v2, v56

    invoke-virtual {v0, v1, v6, v9, v2}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1555
    const/16 v55, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mIndeterminateProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getMeasuredWidth()I

    move-result v56

    sub-int v56, v42, v56

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 1559
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    move-object/from16 v55, v0

    if-nez v55, :cond_1c

    .line 1560
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    move/from16 v55, v0

    packed-switch v55, :pswitch_data_0

    .line 1592
    :cond_1c
    :goto_e
    if-eqz v15, :cond_1f

    .line 1593
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v55

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    .line 1594
    .local v32, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, v32

    instance-of v0, v0, Landroid/app/ActionBar$LayoutParams;

    move/from16 v55, v0

    if-eqz v55, :cond_2a

    move-object/from16 v55, v32

    check-cast v55, Landroid/app/ActionBar$LayoutParams;

    move-object/from16 v5, v55

    .line 1597
    .local v5, "ablp":Landroid/app/ActionBar$LayoutParams;
    :goto_f
    const/16 v25, 0x0

    .line 1598
    .local v25, "horizontalMargin":I
    const/16 v48, 0x0

    .line 1599
    .local v48, "verticalMargin":I
    if-eqz v5, :cond_1d

    .line 1600
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    move/from16 v55, v0

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move/from16 v56, v0

    add-int v25, v55, v56

    .line 1601
    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move/from16 v55, v0

    iget v0, v5, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v56, v0

    add-int v48, v55, v56

    .line 1607
    :cond_1d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v55, v0

    if-gtz v55, :cond_2b

    .line 1608
    const/high16 v12, -0x80000000

    .line 1613
    .local v12, "customNavHeightMode":I
    :goto_10
    const/16 v56, 0x0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v55, v0

    if-ltz v55, :cond_2d

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v55, v0

    move/from16 v0, v55

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v55

    :goto_11
    sub-int v55, v55, v48

    move/from16 v0, v56

    move/from16 v1, v55

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1616
    .local v11, "customNavHeight":I
    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v55, v0

    const/16 v56, -0x2

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_2e

    const/high16 v14, 0x40000000    # 2.0f

    .line 1618
    .local v14, "customNavWidthMode":I
    :goto_12
    const/16 v56, 0x0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v55, v0

    if-ltz v55, :cond_2f

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v55, v0

    move/from16 v0, v55

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v55

    :goto_13
    sub-int v55, v55, v25

    move/from16 v0, v56

    move/from16 v1, v55

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1621
    .local v13, "customNavWidth":I
    if-eqz v5, :cond_30

    iget v0, v5, Landroid/app/ActionBar$LayoutParams;->gravity:I

    move/from16 v55, v0

    :goto_14
    and-int/lit8 v19, v55, 0x7

    .line 1626
    .local v19, "hgrav":I
    const/16 v55, 0x1

    move/from16 v0, v19

    move/from16 v1, v55

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v55, v0

    const/16 v56, -0x1

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_1e

    .line 1627
    move/from16 v0, v30

    move/from16 v1, v42

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v55

    mul-int/lit8 v13, v55, 0x2

    .line 1630
    :cond_1e
    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v55

    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v56

    move/from16 v0, v55

    move/from16 v1, v56

    invoke-virtual {v15, v0, v1}, Landroid/view/View;->measure(II)V

    .line 1633
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v55

    add-int v55, v55, v25

    sub-int v6, v6, v55

    .line 1641
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v19    # "hgrav":I
    .end local v25    # "horizontalMargin":I
    .end local v32    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v48    # "verticalMargin":I
    :cond_1f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/ActionBarView;->mIsExtendedActionBarView:Z

    move/from16 v55, v0

    if-nez v55, :cond_31

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v55, v0

    add-int v56, v6, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v57, v0

    const/high16 v58, 0x40000000    # 2.0f

    invoke-static/range {v57 .. v58}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v57

    const/16 v58, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move/from16 v2, v56

    move/from16 v3, v57

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    .line 1648
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v55, v0

    if-eqz v55, :cond_20

    .line 1649
    const/16 v55, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    move-object/from16 v56, v0

    invoke-virtual/range {v56 .. v56}, Landroid/view/View;->getMeasuredWidth()I

    move-result v56

    sub-int v56, v30, v56

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 1652
    :cond_20
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/AbsActionBarView;->mContentHeight:I

    move/from16 v55, v0

    if-gtz v55, :cond_34

    .line 1653
    const/16 v37, 0x0

    .line 1654
    .local v37, "measuredHeight":I
    const/16 v26, 0x0

    .restart local v26    # "i":I
    :goto_16
    move/from16 v0, v26

    if-ge v0, v8, :cond_32

    .line 1655
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v47

    .line 1656
    .local v47, "v":Landroid/view/View;
    invoke-virtual/range {v47 .. v47}, Landroid/view/View;->getMeasuredHeight()I

    move-result v55

    add-int v39, v55, v49

    .line 1657
    .local v39, "paddedViewHeight":I
    move/from16 v0, v39

    move/from16 v1, v37

    if-le v0, v1, :cond_21

    .line 1658
    move/from16 v37, v39

    .line 1654
    :cond_21
    add-int/lit8 v26, v26, 0x1

    goto :goto_16

    .line 1469
    .end local v6    # "availableWidth":I
    .end local v9    # "childSpecHeight":I
    .end local v15    # "customView":Landroid/view/View;
    .end local v16    # "exactHeightSpec":I
    .end local v17    # "height":I
    .end local v20    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .end local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "homeWidth":I
    .end local v24    # "homeWidthSpec":I
    .end local v26    # "i":I
    .end local v30    # "leftOfCenter":I
    .end local v36    # "maxHeight":I
    .end local v37    # "measuredHeight":I
    .end local v39    # "paddedViewHeight":I
    .end local v40    # "paddingLeft":I
    .end local v41    # "paddingRight":I
    .end local v42    # "rightOfCenter":I
    .end local v43    # "showTitle":Z
    .end local v47    # "v":Landroid/view/View;
    .end local v49    # "verticalPadding":I
    :cond_22
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v36

    goto/16 :goto_8

    .line 1483
    .restart local v6    # "availableWidth":I
    .restart local v9    # "childSpecHeight":I
    .restart local v16    # "exactHeightSpec":I
    .restart local v17    # "height":I
    .restart local v30    # "leftOfCenter":I
    .restart local v36    # "maxHeight":I
    .restart local v40    # "paddingLeft":I
    .restart local v41    # "paddingRight":I
    .restart local v42    # "rightOfCenter":I
    .restart local v49    # "verticalPadding":I
    :cond_23
    const/16 v43, 0x0

    goto/16 :goto_9

    .line 1486
    .restart local v43    # "showTitle":Z
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    move-object/from16 v20, v0

    goto/16 :goto_a

    .line 1493
    .restart local v20    # "homeLayout":Lcom/android/internal/widget/ActionBarView$HomeView;
    .restart local v21    # "homeLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_25
    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v55, v0

    const/high16 v56, 0x40000000    # 2.0f

    invoke-static/range {v55 .. v56}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v24

    .restart local v24    # "homeWidthSpec":I
    goto/16 :goto_b

    .line 1500
    .restart local v15    # "customView":Landroid/view/View;
    :cond_26
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    move/from16 v55, v0

    and-int/lit8 v55, v55, 0x10

    if-eqz v55, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    move-object/from16 v55, v0

    if-eqz v55, :cond_16

    .line 1502
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    goto/16 :goto_c

    .line 1509
    :cond_27
    const/16 v55, 0x0

    move/from16 v0, v55

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lcom/android/internal/widget/ActionBarView$HomeView;->hasUpPadding:Z

    goto/16 :goto_d

    .line 1562
    .restart local v23    # "homeWidth":I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v55, v0

    if-eqz v55, :cond_1c

    .line 1563
    if-eqz v43, :cond_28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v55, v0

    mul-int/lit8 v29, v55, 0x2

    .line 1564
    .local v29, "itemPaddingSize":I
    :goto_17
    const/16 v55, 0x0

    sub-int v56, v6, v29

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1565
    const/16 v55, 0x0

    sub-int v56, v30, v29

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 1566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v55, v0

    const/high16 v56, -0x80000000

    move/from16 v0, v56

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v56

    const/high16 v57, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v57

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v57

    invoke-virtual/range {v55 .. v57}, Landroid/view/View;->measure(II)V

    .line 1569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getMeasuredWidth()I

    move-result v31

    .line 1570
    .local v31, "listNavWidth":I
    const/16 v55, 0x0

    sub-int v56, v6, v31

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1571
    const/16 v55, 0x0

    sub-int v56, v30, v31

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 1572
    goto/16 :goto_e

    .line 1563
    .end local v29    # "itemPaddingSize":I
    .end local v31    # "listNavWidth":I
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v29, v0

    goto :goto_17

    .line 1575
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v55, v0

    if-eqz v55, :cond_1c

    .line 1576
    if-eqz v43, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v55, v0

    mul-int/lit8 v29, v55, 0x2

    .line 1577
    .restart local v29    # "itemPaddingSize":I
    :goto_18
    const/16 v55, 0x0

    sub-int v56, v6, v29

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1578
    const/16 v55, 0x0

    sub-int v56, v30, v29

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v30

    .line 1579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v55, v0

    const/high16 v56, -0x80000000

    move/from16 v0, v56

    invoke-static {v6, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v56

    const/high16 v57, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v57

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v57

    invoke-virtual/range {v55 .. v57}, Landroid/view/View;->measure(II)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getMeasuredWidth()I

    move-result v45

    .line 1583
    .local v45, "tabWidth":I
    const/16 v55, 0x0

    sub-int v56, v6, v45

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1584
    const/16 v55, 0x0

    sub-int v56, v30, v45

    invoke-static/range {v55 .. v56}, Ljava/lang/Math;->max(II)I

    move-result v30

    goto/16 :goto_e

    .line 1576
    .end local v29    # "itemPaddingSize":I
    .end local v45    # "tabWidth":I
    :cond_29
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mItemPadding:I

    move/from16 v29, v0

    goto :goto_18

    .line 1594
    .restart local v32    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_2a
    const/4 v5, 0x0

    goto/16 :goto_f

    .line 1610
    .restart local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .restart local v25    # "horizontalMargin":I
    .restart local v48    # "verticalMargin":I
    :cond_2b
    move-object/from16 v0, v32

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v55, v0

    const/16 v56, -0x2

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_2c

    const/high16 v12, 0x40000000    # 2.0f

    .restart local v12    # "customNavHeightMode":I
    :goto_19
    goto/16 :goto_10

    .end local v12    # "customNavHeightMode":I
    :cond_2c
    const/high16 v12, -0x80000000

    goto :goto_19

    .restart local v12    # "customNavHeightMode":I
    :cond_2d
    move/from16 v55, v17

    .line 1613
    goto/16 :goto_11

    .line 1616
    .restart local v11    # "customNavHeight":I
    :cond_2e
    const/high16 v14, -0x80000000

    goto/16 :goto_12

    .restart local v14    # "customNavWidthMode":I
    :cond_2f
    move/from16 v55, v6

    .line 1618
    goto/16 :goto_13

    .line 1621
    .restart local v13    # "customNavWidth":I
    :cond_30
    const v55, 0x800013

    goto/16 :goto_14

    .line 1645
    .end local v5    # "ablp":Landroid/app/ActionBar$LayoutParams;
    .end local v11    # "customNavHeight":I
    .end local v12    # "customNavHeightMode":I
    .end local v13    # "customNavWidth":I
    .end local v14    # "customNavWidthMode":I
    .end local v25    # "horizontalMargin":I
    .end local v32    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v48    # "verticalMargin":I
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    move-object/from16 v55, v0

    add-int v56, v6, v23

    const/high16 v57, 0x40000000    # 2.0f

    move/from16 v0, v17

    move/from16 v1, v57

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v57

    const/16 v58, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v55

    move/from16 v2, v56

    move/from16 v3, v57

    move/from16 v4, v58

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/AbsActionBarView;->measureChildView(Landroid/view/View;III)I

    move-result v6

    goto/16 :goto_15

    .line 1661
    .restart local v26    # "i":I
    .restart local v37    # "measuredHeight":I
    :cond_32
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-virtual {v0, v10, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 1666
    .end local v26    # "i":I
    .end local v37    # "measuredHeight":I
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v55, v0

    if-eqz v55, :cond_33

    .line 1667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    move-object/from16 v55, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v56

    invoke-virtual/range {v55 .. v56}, Lcom/android/internal/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1670
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v55, v0

    if-eqz v55, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v55, v0

    invoke-virtual/range {v55 .. v55}, Landroid/view/View;->getVisibility()I

    move-result v55

    const/16 v56, 0x8

    move/from16 v0, v55

    move/from16 v1, v56

    if-eq v0, v1, :cond_5

    .line 1671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressView:Landroid/widget/ProgressBar;

    move-object/from16 v55, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/ActionBarView;->mProgressBarPadding:I

    move/from16 v56, v0

    mul-int/lit8 v56, v56, 0x2

    sub-int v56, v10, v56

    const/high16 v57, 0x40000000    # 2.0f

    invoke-static/range {v56 .. v57}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v56

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v57

    const/high16 v58, -0x80000000

    invoke-static/range {v57 .. v58}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v57

    invoke-virtual/range {v55 .. v57}, Landroid/view/View;->measure(II)V

    goto/16 :goto_2

    .line 1663
    :cond_34
    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-virtual {v0, v10, v1}, Landroid/view/View;->setMeasuredDimension(II)V

    goto :goto_1a

    .line 1560
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "p"    # Landroid/os/Parcelable;

    .prologue
    .line 1908
    move-object v1, p1

    check-cast v1, Lcom/android/internal/widget/ActionBarView$SavedState;

    .line 1910
    .local v1, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    invoke-virtual {v1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1912
    iget v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v2, :cond_0

    .line 1914
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v3, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1915
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1916
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1923
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_0
    iget v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    if-eqz v2, :cond_1

    .line 1924
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mRestoredInstanced:Z

    .line 1925
    iget v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    iput v2, p0, Lcom/android/internal/widget/ActionBarView;->mRestoreExpandedMenuItemId:I

    .line 1929
    :cond_1
    iget-boolean v2, v1, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    if-eqz v2, :cond_2

    .line 1930
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->postShowOverflowMenu()V

    .line 1932
    :cond_2
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1894
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1895
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/ActionBarView$SavedState;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ActionBarView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1897
    .local v0, "state":Lcom/android/internal/widget/ActionBarView$SavedState;
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v2, :cond_0

    .line 1898
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    iget-object v2, v2, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v2

    iput v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->expandedMenuItemId:I

    .line 1901
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->isOverflowMenuShowing()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/internal/widget/ActionBarView$SavedState;->isOverflowOpen:Z

    .line 1903
    return-object v0
.end method

.method public restoreExpandedActionView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1956
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mRestoredInstanced:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_1

    .line 1957
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget v2, p0, Lcom/android/internal/widget/ActionBarView;->mRestoreExpandedMenuItemId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1958
    .local v0, "item":Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 1959
    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1961
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/widget/ActionBarView;->mRestoredInstanced:Z

    .line 1962
    iput v3, p0, Lcom/android/internal/widget/ActionBarView;->mRestoreExpandedMenuItemId:I

    .line 1964
    .end local v0    # "item":Landroid/view/MenuItem;
    :cond_1
    return-void
.end method

.method public setCallback(Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 0
    .param p1, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 623
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCallback:Landroid/app/ActionBar$OnNavigationListener;

    .line 624
    return-void
.end method

.method public setCollapsable(Z)V
    .locals 0
    .param p1, "collapsable"    # Z

    .prologue
    .line 1256
    iput-boolean p1, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    .line 1257
    return-void
.end method

.method public setContextView(Lcom/android/internal/widget/ActionBarContextView;)V
    .locals 0
    .param p1, "view"    # Lcom/android/internal/widget/ActionBarContextView;

    .prologue
    .line 1252
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 1253
    return-void
.end method

.method public setCustomNavigationView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 726
    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 727
    .local v0, "showCustom":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 728
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 730
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 731
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 733
    :cond_1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    .line 734
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 735
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 737
    :cond_2
    return-void

    .line 726
    .end local v0    # "showCustom":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayHomeAsUpEnabledWithAnimation(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    const-wide/16 v0, 0x12c

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/widget/ActionBarView;->setDisplayHomeAsUpEnabledWithAnimation(ZJ)V

    .line 877
    return-void
.end method

.method public setDisplayHomeAsUpEnabledWithAnimation(ZJ)V
    .locals 4
    .param p1, "showHomeAsUp"    # Z
    .param p2, "duration"    # J

    .prologue
    const/4 v0, -0x1

    .line 882
    iget v3, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v3, v0, :cond_0

    .line 883
    .local v0, "current":I
    :goto_0
    const/4 v1, 0x4

    .line 884
    .local v1, "mask":I
    if-eqz p1, :cond_1

    and-int/lit8 v3, v0, -0x5

    or-int/lit8 v2, v3, 0x4

    .line 887
    .local v2, "options":I
    :goto_1
    invoke-direct {p0, v2, p2, p3}, Lcom/android/internal/widget/ActionBarView;->setDisplayHomeAsUpOptionsWithAnimation(IJ)V

    .line 888
    return-void

    .line 882
    .end local v0    # "current":I
    .end local v1    # "mask":I
    .end local v2    # "options":I
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    goto :goto_0

    .line 884
    .restart local v0    # "current":I
    .restart local v1    # "mask":I
    :cond_1
    and-int/lit8 v2, v0, -0x5

    goto :goto_1
.end method

.method public setDisplayOptions(I)V
    .locals 11
    .param p1, "options"    # I

    .prologue
    const/4 v0, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 945
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    if-ne v9, v0, :cond_6

    .line 946
    .local v0, "flagsChanged":I
    :goto_0
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    .line 959
    and-int/lit8 v9, v0, 0x3f

    if-eqz v9, :cond_11

    .line 960
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 962
    and-int/lit8 v9, v0, 0x4

    if-eqz v9, :cond_0

    .line 963
    and-int/lit8 v9, p1, 0x4

    if-eqz v9, :cond_7

    move v4, v7

    .line 964
    .local v4, "setUp":Z
    :goto_1
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v4}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowUp(Z)V

    .line 970
    if-eqz v4, :cond_0

    .line 971
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 975
    .end local v4    # "setUp":Z
    :cond_0
    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_1

    .line 976
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-eqz v9, :cond_8

    and-int/lit8 v9, p1, 0x1

    if-eqz v9, :cond_8

    move v3, v7

    .line 977
    .local v3, "logoVis":Z
    :goto_2
    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    if-eqz v3, :cond_9

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v10, v9}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 980
    .end local v3    # "logoVis":Z
    :cond_1
    and-int/lit8 v9, v0, 0x8

    if-eqz v9, :cond_2

    .line 981
    and-int/lit8 v9, p1, 0x8

    if-eqz v9, :cond_a

    .line 982
    invoke-direct {p0}, Lcom/android/internal/widget/ActionBarView;->initTitle()V

    .line 988
    :cond_2
    :goto_4
    and-int/lit8 v9, p1, 0x2

    if-eqz v9, :cond_b

    move v5, v7

    .line 989
    .local v5, "showHome":Z
    :goto_5
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v9, v9, 0x4

    if-eqz v9, :cond_c

    move v1, v7

    .line 990
    .local v1, "homeAsUp":Z
    :goto_6
    if-nez v5, :cond_d

    if-eqz v1, :cond_d

    move v6, v7

    .line 991
    .local v6, "titleUp":Z
    :goto_7
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v5}, Lcom/android/internal/widget/ActionBarView$HomeView;->setShowIcon(Z)V

    .line 993
    if-nez v5, :cond_3

    if-eqz v6, :cond_e

    :cond_3
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v9, :cond_e

    move v2, v8

    .line 995
    .local v2, "homeVis":I
    :goto_8
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 997
    and-int/lit8 v9, v0, 0x10

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    if-eqz v9, :cond_4

    .line 998
    and-int/lit8 v9, p1, 0x10

    if-eqz v9, :cond_f

    .line 999
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1005
    :cond_4
    :goto_9
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v9, :cond_5

    and-int/lit8 v9, v0, 0x20

    if-eqz v9, :cond_5

    .line 1007
    and-int/lit8 v9, p1, 0x20

    if-eqz v9, :cond_10

    .line 1008
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1009
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1016
    :cond_5
    :goto_a
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1022
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :goto_b
    iget-object v7, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/View;->isEnabled()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1023
    return-void

    .line 945
    .end local v0    # "flagsChanged":I
    :cond_6
    iget v9, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    xor-int v0, p1, v9

    goto/16 :goto_0

    .restart local v0    # "flagsChanged":I
    :cond_7
    move v4, v8

    .line 963
    goto/16 :goto_1

    :cond_8
    move v3, v8

    .line 976
    goto :goto_2

    .line 977
    .restart local v3    # "logoVis":Z
    :cond_9
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 984
    .end local v3    # "logoVis":Z
    :cond_a
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_4

    :cond_b
    move v5, v8

    .line 988
    goto :goto_5

    .restart local v5    # "showHome":Z
    :cond_c
    move v1, v8

    .line 989
    goto :goto_6

    .restart local v1    # "homeAsUp":Z
    :cond_d
    move v6, v8

    .line 990
    goto :goto_7

    .line 993
    .restart local v6    # "titleUp":Z
    :cond_e
    const/16 v2, 0x8

    goto :goto_8

    .line 1001
    .restart local v2    # "homeVis":I
    :cond_f
    iget-object v9, p0, Lcom/android/internal/widget/ActionBarView;->mCustomNavView:Landroid/view/View;

    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_9

    .line 1011
    :cond_10
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1012
    iget-object v8, p0, Lcom/android/internal/widget/ActionBarView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    goto :goto_a

    .line 1018
    .end local v1    # "homeAsUp":Z
    .end local v2    # "homeVis":I
    .end local v5    # "showHome":Z
    .end local v6    # "titleUp":Z
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_b
.end method

.method public setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .prologue
    .line 1135
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    .line 1136
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 1137
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1139
    :cond_0
    return-void
.end method

.method public setDropdownSelectedPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1146
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 1147
    return-void
.end method

.method public setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V
    .locals 4
    .param p1, "tabs"    # Lcom/android/internal/widget/ScrollingTabContainerView;

    .prologue
    const/4 v2, 0x1

    .line 608
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 609
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 611
    :cond_0
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 612
    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    .line 613
    iget-boolean v1, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    .line 614
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 615
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 616
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 617
    const/4 v1, -0x1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 618
    invoke-virtual {p1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setAllowCollapse(Z)V

    .line 620
    .end local v0    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    return-void

    .line 612
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1948
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescriptionRes:I

    .line 1949
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1950
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1951
    return-void

    .line 1949
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 1943
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mHomeDescription:Ljava/lang/CharSequence;

    .line 1944
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 1945
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1939
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(I)V

    .line 1940
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1935
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 1936
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 808
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(ZZ)V

    .line 809
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1037
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1038
    return-void

    .line 1037
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1027
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 1029
    :cond_0
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1031
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1032
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1034
    :cond_2
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1052
    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1053
    return-void

    .line 1052
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1045
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mLogo:Landroid/graphics/drawable/Drawable;

    .line 1046
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1047
    iget-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mHomeLayout:Lcom/android/internal/widget/ActionBarView$HomeView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView$HomeView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1049
    :cond_0
    return-void
.end method

.method public setMenu(Landroid/view/Menu;Lcom/android/internal/view/menu/MenuPresenter$Callback;)V
    .locals 8
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "cb"    # Lcom/android/internal/view/menu/MenuPresenter$Callback;

    .prologue
    const/4 v7, -0x1

    .line 631
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-ne p1, v4, :cond_0

    .line 698
    :goto_0
    return-void

    .line 633
    :cond_0
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    if-eqz v4, :cond_1

    .line 634
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    .line 635
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->removeMenuPresenter(Lcom/android/internal/view/menu/MenuPresenter;)V

    :cond_1
    move-object v0, p1

    .line 638
    check-cast v0, Lcom/android/internal/view/menu/MenuBuilder;

    .line 639
    .local v0, "builder":Lcom/android/internal/view/menu/MenuBuilder;
    iput-object v0, p0, Lcom/android/internal/widget/ActionBarView;->mOptionsMenu:Lcom/android/internal/view/menu/MenuBuilder;

    .line 640
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v4, :cond_2

    .line 641
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 642
    .local v3, "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_2

    .line 643
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 646
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-nez v4, :cond_3

    .line 647
    new-instance v4, Lcom/android/internal/view/menu/ActionMenuPresenter;

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    .line 655
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p2}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 656
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v5, 0x10202b9

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/BaseMenuPresenter;->setId(I)V

    .line 657
    new-instance v4, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;-><init>(Lcom/android/internal/widget/ActionBarView;Lcom/android/internal/widget/ActionBarView$1;)V

    iput-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedMenuPresenter:Lcom/android/internal/widget/ActionBarView$ExpandedActionViewMenuPresenter;

    .line 661
    :cond_3
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v1, v4, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 663
    .local v1, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget-boolean v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-nez v4, :cond_5

    .line 664
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1110009

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 667
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 668
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 669
    .local v2, "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 670
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_4

    if-eq v3, p0, :cond_4

    .line 671
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 673
    :cond_4
    invoke-virtual {p0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :goto_1
    iput-object v2, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    goto/16 :goto_0

    .line 675
    .end local v2    # "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    :cond_5
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 677
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 680
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v5, 0x7fffffff

    invoke-virtual {v4, v5}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    .line 682
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 683
    invoke-direct {p0, v0}, Lcom/android/internal/widget/ActionBarView;->configPresenters(Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 684
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v4, p0}, Lcom/android/internal/view/menu/ActionMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/ActionMenuView;

    .line 685
    .restart local v2    # "menuView":Lcom/android/internal/view/menu/ActionMenuView;
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v4, :cond_7

    .line 686
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 687
    .restart local v3    # "oldParent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eq v3, v4, :cond_6

    .line 688
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 690
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/widget/AbsActionBarView;->getAnimatedVisibility()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 691
    iget-object v4, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v4, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 694
    .end local v3    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    invoke-virtual {v2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setMenuPrepared()V
    .locals 1

    .prologue
    .line 627
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mMenuPrepared:Z

    .line 628
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 11
    .param p1, "mode"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/16 v8, 0xc

    const/4 v7, 0x6

    const/4 v6, 0x0

    .line 1060
    iget v0, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 1061
    .local v0, "oldMode":I
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mScafe:Ljava/lang/String;

    const-string/jumbo v3, "macchiato"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_0

    .line 1064
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v9, :cond_4

    .line 1065
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1074
    :cond_0
    :goto_0
    if-eq p1, v0, :cond_3

    .line 1075
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 1076
    packed-switch v0, :pswitch_data_0

    .line 1088
    :cond_1
    :goto_1
    packed-switch p1, :pswitch_data_1

    .line 1129
    :cond_2
    :goto_2
    iput p1, p0, Lcom/android/internal/widget/ActionBarView;->mNavigationMode:I

    .line 1130
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 1132
    :cond_3
    return-void

    .line 1070
    :cond_4
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1078
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 1079
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 1083
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_1

    .line 1084
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 1090
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_5

    .line 1091
    new-instance v2, Landroid/widget/Spinner;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x10102d7

    invoke-direct {v2, v3, v10, v4}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    .line 1093
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    const v3, 0x10202bc

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 1094
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v4, 0x10102f4

    invoke-direct {v2, v3, v10, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    .line 1096
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1098
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1099
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1102
    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIsParentThemeDeviceDefault:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mScafe:Ljava/lang/String;

    const-string/jumbo v3, "macchiato"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v2

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_5

    .line 1104
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v9, :cond_7

    .line 1105
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v2, v3, v4, v6, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 1117
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_5
    :goto_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    if-eq v2, v3, :cond_6

    .line 1118
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mSpinnerAdapter:Landroid/widget/SpinnerAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1120
    :cond_6
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/internal/widget/ActionBarView;->mNavItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1121
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1110
    .restart local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mListNavLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3, v8}, Landroid/util/GeneralUtil;->getPixelFromDP(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_3

    .line 1124
    .end local v1    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/widget/ActionBarView;->mIncludeTabs:Z

    if-eqz v2, :cond_2

    .line 1125
    iget-object v2, p0, Lcom/android/internal/widget/ActionBarView;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_2

    .line 1076
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1088
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSplitActionBar(Z)V
    .locals 5
    .param p1, "splitActionBar"    # Z

    .prologue
    const/4 v2, 0x0

    .line 556
    iget-boolean v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitActionBar:Z

    if-eq v1, p1, :cond_5

    .line 557
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-eqz v1, :cond_2

    .line 558
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 559
    .local v0, "oldParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 560
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 562
    :cond_0
    if-eqz p1, :cond_6

    .line 563
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    .line 564
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 566
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 571
    :goto_0
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 573
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_3

    .line 574
    iget-object v3, p0, Lcom/android/internal/widget/AbsActionBarView;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz p1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 577
    :cond_3
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    if-eqz v1, :cond_4

    .line 578
    if-nez p1, :cond_8

    .line 579
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1110009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 583
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setMaxItemsSet(Z)V

    .line 584
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v2, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimitSet(ZZ)V

    .line 595
    :cond_4
    :goto_2
    invoke-super {p0, p1}, Lcom/android/internal/widget/AbsActionBarView;->setSplitActionBar(Z)V

    .line 597
    :cond_5
    return-void

    .line 568
    .restart local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_6
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 569
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x2

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 574
    .end local v0    # "oldParent":Landroid/view/ViewGroup;
    :cond_7
    const/16 v1, 0x8

    goto :goto_1

    .line 587
    :cond_8
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setExpandedActionViewsExclusive(Z)V

    .line 589
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setWidthLimit(IZ)V

    .line 592
    iget-object v1, p0, Lcom/android/internal/widget/AbsActionBarView;->mActionMenuPresenter:Lcom/android/internal/view/menu/ActionMenuPresenter;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Lcom/android/internal/view/menu/ActionMenuPresenter;->setItemLimit(I)V

    goto :goto_2
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 794
    invoke-static {p0}, Lcom/android/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 795
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    .line 796
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 797
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v4, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitleView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 799
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mExpandedActionView:Landroid/view/View;

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/internal/widget/ActionBarView;->mDisplayOptions:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mSubtitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_0
    const/4 v0, 0x1

    .line 802
    .local v0, "visible":Z
    :goto_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mTitleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 804
    .end local v0    # "visible":Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/ActionBarView;->updateHomeAccessibility(Z)V

    .line 805
    return-void

    :cond_2
    move v1, v3

    .line 798
    goto :goto_0

    :cond_3
    move v0, v2

    .line 799
    goto :goto_1

    .restart local v0    # "visible":Z
    :cond_4
    move v2, v3

    .line 802
    goto :goto_2
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 750
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    .line 751
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 752
    return-void
.end method

.method public setWindowCallback(Landroid/view/Window$Callback;)V
    .locals 0
    .param p1, "cb"    # Landroid/view/Window$Callback;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarView;->mWindowCallback:Landroid/view/Window$Callback;

    .line 521
    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 761
    iget-boolean v0, p0, Lcom/android/internal/widget/ActionBarView;->mUserTitle:Z

    if-nez v0, :cond_0

    .line 762
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitleImpl(Ljava/lang/CharSequence;)V

    .line 764
    :cond_0
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 535
    const/4 v0, 0x0

    return v0
.end method

.method public updateCollapsed()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    .line 1269
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1270
    .local v3, "parent":Landroid/view/ViewGroup;
    if-eqz v3, :cond_5

    iget-boolean v6, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsable:Z

    if-eqz v6, :cond_5

    .line 1271
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1272
    .local v1, "childCount":I
    const/4 v5, 0x0

    .line 1273
    .local v5, "visibleChildren":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_2

    .line 1274
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1275
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    if-ne v0, v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/widget/AbsActionBarView;->mMenuView:Lcom/android/internal/view/menu/ActionMenuView;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    if-eq v0, v6, :cond_1

    .line 1278
    add-int/lit8 v5, v5, 0x1

    .line 1273
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1282
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 1283
    .local v4, "upChildCount":I
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_4

    .line 1284
    iget-object v6, p0, Lcom/android/internal/widget/ActionBarView;->mUpGoerFive:Landroid/view/ViewGroup;

    invoke-virtual {v6, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1285
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-eq v6, v7, :cond_3

    .line 1286
    add-int/lit8 v5, v5, 0x1

    .line 1283
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1290
    .end local v0    # "child":Landroid/view/View;
    :cond_4
    if-nez v5, :cond_5

    .line 1292
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/widget/ActionBarView;->mIsCollapsed:Z

    .line 1295
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    .end local v4    # "upChildCount":I
    .end local v5    # "visibleChildren":I
    :cond_5
    return-void
.end method
