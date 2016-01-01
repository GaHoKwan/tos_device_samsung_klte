.class public Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
.super Landroid/widget/FrameLayout;
.source "TwToolBoxFloatingViewer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;,
        Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "toolbox"


# instance fields
.field private final BLOCK_LIST:[Ljava/lang/String;

.field private FIXED_ITEM_GAP:I

.field private FIXED_ITEM_SIZE:I

.field private FIXED_MAIN_ITEM_GAP:I

.field private FIXED_MAIN_ITEM_HEIGHT:I

.field private FIXED_MAIN_ITEM_WIDTH:I

.field private FIXED_ROUND_TAIL_SIZE:I

.field private FIXED_START_POSITION_RIGHT_PADDING:I

.field private FIXED_START_POSITION_TOP_PADDING:I

.field private LONG_PRESS_PANEL_HEIGHT_PX:I

.field private final MAIN_DECREASE_RATIO:F

.field private final MAIN_DIM_RATIO:F

.field private SCALED_TOUCH_SLOP:I

.field private SHORTCUT_SHADOW_HEIGHT_PX:I

.field private final SLEEP_TIME_OUT:I

.field private mAbsX:I

.field private mAbsY:I

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAddedBoxTailHeight:I

.field private mAllPackages:[Ljava/lang/Object;

.field private mBoxAnimating:Z

.field private mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

.field private mCenterX:I

.field private mCenterY:I

.field private final mCheckEnvironment:Ljava/lang/Runnable;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverOpen:Z

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mCurrentPackage:Ljava/lang/String;

.field private mDeivceProvisioned:Z

.field public mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

.field private mDeltaX:I

.field private mDeltaY:I

.field private final mDensity:F

.field private mDeviceProvisionedObserver:Landroid/database/ContentObserver;

.field private mDisableFloatingViewer:Z

.field private final mDownSlopArea:Landroid/graphics/Rect;

.field private mDreamManager:Landroid/service/dreams/IDreamManager;

.field private mEditAfterScreenCapture:I

.field private mEnableFloatingViewer:Z

.field private mEndFloatingBg:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingBgArea:Landroid/graphics/Rect;

.field private mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingEditBgArea:Landroid/graphics/Rect;

.field private mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingEditBtnArea:Landroid/graphics/Rect;

.field private mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

.field private mEndFloatingMsgEdit:Ljava/lang/String;

.field private mEndFloatingMsgRemove:Ljava/lang/String;

.field private mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

.field private mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

.field private final mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

.field private final mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

.field private mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

.field private mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

.field private mEnterAnimator:Landroid/animation/ValueAnimator;

.field private mEnterProgressValue:F

.field private mExpandAnimator:Landroid/animation/ValueAnimator;

.field private mExpandProgressValue:F

.field private mExpanded:Z

.field private mExploreByTouchMode:Z

.field private mExploreByTouchModeObserver:Landroid/database/ContentObserver;

.field private mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

.field private final mFont:Landroid/graphics/Typeface;

.field private final mGlobalRect:Landroid/graphics/Rect;

.field private final mGoToPositionRecursive:Ljava/lang/Runnable;

.field private mGoToPositionRecursiveLastX:I

.field private mGoToPositionRecursiveLastY:I

.field private mGoToPositionRecursiveRepeatation:I

.field private mHiddenToolBox:Z

.field private final mIsTablet:Z

.field private mKeyguardShowing:Z

.field private mKidsMode:Z

.field private mKidsModeObserver:Landroid/database/ContentObserver;

.field private mLastOrientation:I

.field private mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

.field private mLongPressPanelPosition:I

.field private mLongPressPanelRemoveAnimating:Z

.field private mLongPressPanelRemoveBtnAngle:F

.field private final mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

.field private mLongPressPanelRemoveBtnPosition:I

.field private mLongPressPanelShowing:Z

.field private mLongPressed:Z

.field private mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

.field private mMainCharacterDegree:I

.field private final mMainShadowRect:Landroid/graphics/Rect;

.field private mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

.field private final mMaskCanvas:Landroid/graphics/Canvas;

.field private final mMaskPaint:Landroid/graphics/Paint;

.field private mMovingByAnimation:Z

.field private mOTAShowing:Z

.field private final mObjects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageListObserver:Landroid/database/ContentObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

.field private final mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

.field private mPositionAnimatorX:Landroid/animation/ValueAnimator;

.field private mPositionAnimatorY:Landroid/animation/ValueAnimator;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReset:Ljava/lang/Runnable;

.field private mReseting:Z

.field private mResources:Landroid/content/res/Resources;

.field private final mScreenWriteRecovery:Ljava/lang/Runnable;

.field private final mShadowPaint:Landroid/graphics/Paint;

.field private final mShakeAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mShowToolFloatingObserver:Landroid/database/ContentObserver;

.field private mSipReceiver:Landroid/content/BroadcastReceiver;

.field private mSipVisible:Z

.field private mSleepAnimator:Landroid/animation/ValueAnimator;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTouchClickRunnable:Ljava/lang/Runnable;

.field private final mTouchLongClickRunnable:Ljava/lang/Runnable;

.field mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

.field mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

.field private final mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

.field private mTracking:Z

.field private mTransparentAnimator:Landroid/animation/ValueAnimator;

.field private mTurnOffAnimator:Landroid/animation/ValueAnimator;

.field private mTurnOffEffectRatio:F

.field private final mUpdateVisibility:Ljava/lang/Runnable;

.field private mValidUser:Z

.field private mViewConfiguration:Landroid/view/ViewConfiguration;

.field private mVisibleFloatingStyle:Z

.field private final mXfermode:Landroid/graphics/PorterDuffXfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    const/high16 v9, 0x41400000    # 12.0f

    const/16 v8, 0xff

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/16 v1, 0xbb8

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SLEEP_TIME_OUT:I

    const v1, 0x3e75c28f    # 0.24f

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->MAIN_DECREASE_RATIO:F

    const v1, 0x3ecccccd    # 0.4f

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->MAIN_DIM_RATIO:F

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SHORTCUT_SHADOW_HEIGHT_PX:I

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAddedBoxTailHeight:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastX:I

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastY:I

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainShadowRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFont:Landroid/graphics/Typeface;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$1;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v4, "com.sec.android.app.camera"

    aput-object v4, v1, v3

    const-string v4, "com.sec.android.app.ma.recorder"

    aput-object v4, v1, v2

    const/4 v4, 0x2

    const-string v5, "com.sec.android.app.simcardmanagement"

    aput-object v5, v1, v4

    const/4 v4, 0x3

    const-string v5, "com.sec.android.app.kidshome"

    aput-object v5, v1, v4

    const/4 v4, 0x4

    const-string v5, "com.sec.android.app.magnifier"

    aput-object v5, v1, v4

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$14;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$18;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$18;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$19;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$19;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$21;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$21;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$22;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$22;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$23;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$23;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$24;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$24;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursive:Ljava/lang/Runnable;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenWriteRecovery:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    const-string/jumbo v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    const/16 v4, 0x64

    const/16 v5, 0x64

    const/16 v6, 0x2bc

    const/16 v7, 0x2bc

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    const/high16 v1, 0x425c0000    # 55.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    const/high16 v1, 0x40400000    # 3.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SHORTCUT_SHADOW_HEIGHT_PX:I

    const/high16 v1, 0x421c0000    # 39.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    const/high16 v1, 0x41200000    # 10.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_GAP:I

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    const/high16 v1, 0x41a00000    # 20.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    const/high16 v1, 0x42480000    # 50.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_TOP_PADDING:I

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_RIGHT_PADDING:I

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    if-eqz v1, :cond_0

    const/high16 v1, 0x42a80000    # 84.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    const/high16 v1, 0x42300000    # 44.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    const/high16 v1, 0x41600000    # 14.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_GAP:I

    const/high16 v1, 0x41000000    # 8.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    const/high16 v1, 0x429c0000    # 78.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_TOP_PADDING:I

    const/high16 v1, 0x41880000    # 17.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_RIGHT_PADDING:I

    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v0, v1

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41900000    # 18.0f

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v4, v0

    int-to-float v5, v0

    int-to-float v6, v0

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cad

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cb5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080caa

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cab

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cac

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cb6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cb7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cb8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cb9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x104085a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1040b4f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "device_provisioned"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "touch_exploration_enabled"

    const/4 v5, -0x2

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "kids_home_mode"

    const/4 v5, -0x2

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setVisibility(I)V

    return-void

    :cond_1
    move v1, v3

    goto/16 :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3
.end method

.method static synthetic access$000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getSCoverState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/service/dreams/IDreamManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableOTA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->reloadContentObserver()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->clearToolBox()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V

    return-void
.end method

.method static synthetic access$2802(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startActivityOrTask(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    return p1
.end method

.method static synthetic access$3302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    return p1
.end method

.method static synthetic access$3400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    return-void
.end method

.method static synthetic access$3502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onToolLongClick()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onToolClick()V

    return-void
.end method

.method static synthetic access$4100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationEnter()V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationSleep()V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationWakeup()V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationExpand()V

    return-void
.end method

.method static synthetic access$4500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationFadeIn()V

    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationFadeOut()V

    return-void
.end method

.method static synthetic access$4800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionRecursive()V

    return-void
.end method

.method static synthetic access$4900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    return v0
.end method

.method static synthetic access$4902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    return p1
.end method

.method static synthetic access$5102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return p1
.end method

.method static synthetic access$5202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    return p1
.end method

.method static synthetic access$5402(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    return p1
.end method

.method static synthetic access$5500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    return v0
.end method

.method static synthetic access$5502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    return p1
.end method

.method static synthetic access$5600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    return v0
.end method

.method static synthetic access$5602(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    return p1
.end method

.method static synthetic access$5700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    return v0
.end method

.method static synthetic access$5802(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    return p1
.end method

.method static synthetic access$5902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    return v0
.end method

.method static synthetic access$6002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    return p1
.end method

.method static synthetic access$6102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    return p1
.end method

.method static synthetic access$6202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    return p1
.end method

.method static synthetic access$6300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->toggleTorch()V

    return-void
.end method

.method static synthetic access$6500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->screenCapture()V

    return-void
.end method

.method static synthetic access$6600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenWriteRecovery:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private clearToolBox()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    move-object v3, v0

    check-cast v3, Landroid/animation/ValueAnimator;

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const-string/jumbo v4, "toolbox"

    const-string v5, "ToolBox disposed..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    :cond_4
    iput-boolean v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    iput v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    iput v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    iput v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v4, v4

    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    return-void
.end method

.method private drawToolBox(Landroid/graphics/Canvas;IIZ)V
    .locals 29

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v23

    or-int v7, v7, v23

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v23

    or-int v7, v7, v23

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v23, v0

    sget-object v24, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_2

    iget-boolean v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    move/from16 v23, v0

    if-nez v23, :cond_2

    iget-object v6, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    :goto_1
    iget-boolean v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_3

    const/16 v23, 0xff

    :goto_2
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v5, v0

    iget-boolean v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    move/from16 v23, v0

    or-int v7, v7, v23

    instance-of v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v23, v0

    div-int/lit8 v11, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    move/from16 v23, v0

    div-int/lit8 v10, v23, 0x2

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    sub-int v24, p2, v11

    sub-int v25, p3, v10

    add-int v26, p2, v11

    add-int v27, p3, v10

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    sub-float v21, v23, v24

    const v23, 0x3e75c28f    # 0.24f

    mul-float v23, v23, v21

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v21

    move/from16 v0, v23

    float-to-int v8, v0

    :goto_3
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v8}, Landroid/graphics/Rect;->inset(II)V

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_2
    iget-object v6, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_3
    const/16 v23, 0x80

    goto/16 :goto_2

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v8, v0

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const v24, 0x3e75c28f    # 0.24f

    mul-float v23, v23, v24

    const/high16 v24, 0x40000000    # 2.0f

    div-float v23, v23, v24

    const/high16 v24, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v25, v0

    sub-float v24, v24, v25

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v8, v0

    goto :goto_3

    :cond_6
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    move/from16 v23, v0

    div-int/lit8 v11, v23, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    move/from16 v23, v0

    div-int/lit8 v10, v23, 0x2

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    sub-int v24, p2, v11

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v25, v0

    iget v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v26, v0

    add-float v25, v25, v26

    int-to-float v0, v10

    move/from16 v26, v0

    sub-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v26, p2, v11

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v27, v0

    iget v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v28, v0

    add-float v27, v27, v28

    int-to-float v0, v10

    move/from16 v28, v0

    add-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAddedBoxTailHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAddedBoxTailHeight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v27, v0

    sub-float v26, v26, v27

    mul-float v25, v25, v26

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    if-eqz p4, :cond_f

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v13, v18, -0x1

    :goto_4
    if-ltz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v23, v0

    sget-object v24, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_16

    iget-boolean v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    move/from16 v23, v0

    if-nez v23, :cond_16

    iget-object v6, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    :goto_5
    iget-boolean v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isEnabled:Z

    move/from16 v23, v0

    if-eqz v23, :cond_17

    const/16 v23, 0xff

    :goto_6
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v24, v0

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v5, v0

    instance-of v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move/from16 v23, v0

    if-eqz v23, :cond_18

    move-object v15, v14

    check-cast v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->mainShadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainShadowRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainShadowRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Rect;->offset(II)V

    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->mainShadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainShadowRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->mainShadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v23, v0

    const/high16 v24, 0x437f0000    # 255.0f

    const/high16 v25, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move/from16 v26, v0

    sub-float v25, v25, v26

    mul-float v24, v24, v25

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fc999999999999aL    # 0.2

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->mainShadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_9
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->background:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v23, v0

    if-lez v23, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v23, v0

    const/16 v24, 0x5a

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v23, v0

    if-lez v23, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_c
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->backgroundOpen:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v23, v0

    if-lez v23, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x5a

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x42b40000    # 90.0f

    div-float v23, v23, v24

    const/high16 v24, 0x437f0000    # 255.0f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v23, v0

    if-lez v23, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x5a

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_e
    :goto_7
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_4

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getWidth()I

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getHeight()I

    move-result v9

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    if-gez v23, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v19, v0

    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    if-gez v23, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move/from16 v0, v23

    neg-int v0, v0

    move/from16 v20, v0

    :cond_11
    :goto_9
    if-nez v19, :cond_12

    if-eqz v20, :cond_8

    :cond_12
    add-int v23, p2, v19

    add-int v24, p3, v20

    const/16 v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->drawToolBox(Landroid/graphics/Canvas;IIZ)V

    :cond_13
    return-void

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v22

    if-le v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    sub-int v19, v22, v23

    goto :goto_8

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    move/from16 v0, v23

    if-le v0, v9, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    sub-int v20, v9, v23

    goto :goto_9

    :cond_16
    iget-object v6, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    :cond_17
    const/16 v23, 0x80

    goto/16 :goto_6

    :cond_18
    if-eqz v5, :cond_e

    iget v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v23, v0

    int-to-float v0, v10

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-ltz v23, :cond_e

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    if-eqz v23, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    int-to-double v0, v5

    move-wide/from16 v24, v0

    const-wide v26, 0x3fc999999999999aL    # 0.2

    mul-double v24, v24, v26

    move-wide/from16 v0, v24

    double-to-int v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v24, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v26, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move-object/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7
.end method

.method private getSCoverState()Z
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getTorchStatus()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "torch_light"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private goToPosition()V
    .locals 3

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPosition(IIZ)V

    return-void
.end method

.method private goToPosition(IIZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getHeight()I

    move-result v5

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v4, v7, 0x2

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    iput p2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    if-eqz p3, :cond_1

    iget v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    if-ne v7, v1, :cond_0

    iget v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    if-eq v7, v2, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postInvalidate()V

    goto :goto_0
.end method

.method private goToPositionBySmooth(II)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getHeight()I

    move-result v4

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    if-ne p1, v0, :cond_0

    if-eq p2, v1, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    if-nez v6, :cond_2

    new-array v6, v10, [I

    aput v0, v6, v8

    aput p1, v6, v9

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;

    invoke-direct {v7, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v6, v10, [I

    aput v1, v6, v8

    aput p2, v6, v9

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;

    invoke-direct {v7, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;

    invoke-direct {v7, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    new-array v7, v10, [I

    aput v0, v7, v8

    aput p1, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-array v7, v10, [I

    aput v1, v7, v8

    aput p2, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method private goToPositionRecursive()V
    .locals 7

    const/4 v6, 0x0

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int v0, v4, v5

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int v1, v4, v5

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    add-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    add-int/2addr v4, v1

    div-int/lit8 v3, v4, 0x2

    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPosition(IIZ)V

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastX:I

    if-ne v2, v4, :cond_0

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastY:I

    if-eq v3, v4, :cond_2

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursive:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1e

    invoke-virtual {p0, v4, v5, v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastX:I

    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastY:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iput v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastX:I

    iput v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastY:I

    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    goto :goto_0
.end method

.method private initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v2

    :pswitch_1
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.galaxyfinder"

    const-string v5, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$50;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$50;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/ComponentName;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Sfinder Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080cb0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$51;

    invoke-direct {v4, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$51;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "QuickConnect Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    :try_start_2
    sget-object v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080cb4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080cb3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v4

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$52;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$52;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v1

    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TorchLight Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080cb2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;

    invoke-direct {v4, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    :catch_3
    move-exception v1

    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ScreenWrite Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_5
    :try_start_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.magnifier"

    const-string v5, "com.sec.android.app.magnifier.Magnifier"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$54;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$54;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/ComponentName;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    :catch_4
    move-exception v1

    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Magnifier Create error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method private isDisableFloatingViewer()Z
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    if-eqz v5, :cond_3

    :cond_1
    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isEnableFloatingViewer()Z
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :cond_0
    if-nez v4, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    if-nez v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isEnableOTA()Z
    .locals 3

    const/4 v0, 0x0

    const-string v1, "KOR"

    const-string v2, "USA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "ril.domesticOtaStart"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEnabledPkg(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    const/4 v4, 0x2

    if-eq v4, v1, :cond_0

    const/4 v4, 0x3

    if-ne v4, v1, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private isPointInCircle(DDDII)Z
    .locals 13

    move/from16 v0, p7

    int-to-double v9, v0

    sub-double v11, p1, p5

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_1

    move/from16 v0, p7

    int-to-double v9, v0

    add-double v11, p1, p5

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_1

    move/from16 v0, p8

    int-to-double v9, v0

    sub-double v11, p3, p5

    cmpl-double v9, v9, v11

    if-ltz v9, :cond_1

    move/from16 v0, p8

    int-to-double v9, v0

    add-double v11, p3, p5

    cmpg-double v9, v9, v11

    if-gtz v9, :cond_1

    move/from16 v0, p7

    int-to-double v9, v0

    sub-double v3, p1, v9

    move/from16 v0, p8

    int-to-double v9, v0

    sub-double v5, p3, v9

    mul-double/2addr v3, v3

    mul-double/2addr v5, v5

    add-double v1, v3, v5

    mul-double v7, p5, p5

    cmpg-double v9, v1, v7

    if-gtz v9, :cond_0

    const/4 v9, 0x1

    :goto_0
    return v9

    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private isValidUser()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_0

    move v0, v2

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    return v2

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method private loadCenterPosition()V
    .locals 6

    const/4 v5, -0x2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getHeight()I

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tw_tool_box_floating_x_ratio"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tw_tool_box_floating_y_ratio"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return-void
.end method

.method private onToolClick()V
    .locals 9

    const/16 v8, 0x9

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v6, v7, :cond_8

    invoke-virtual {p0, v8}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->performHapticFeedback(I)Z

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playSoundEffect(I)V

    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v6, :cond_3

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    const-string/jumbo v5, "toolbox"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Click() "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget v7, v7, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    if-nez v6, :cond_6

    move v0, v5

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v0, v6, :cond_7

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-eq v3, v6, :cond_4

    iget-boolean v6, v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    if-nez v6, :cond_4

    iget-object v6, v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v4, v1, v5

    invoke-direct {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnabledPkg(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    array-length v0, v6

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    :cond_8
    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v6, v6, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    invoke-interface {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;->onAction()V

    invoke-virtual {p0, v8}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->performHapticFeedback(I)Z

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playSoundEffect(I)V

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto/16 :goto_1
.end method

.method private onToolLongClick()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    const-string/jumbo v0, "toolbox"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LongClick() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->performHapticFeedback(I)Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playSoundEffect(I)V

    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postInvalidate()V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v2, v2

    aput v2, v1, v3

    aput v3, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationEnter()V

    goto :goto_0
.end method

.method private onTouchDown(II)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v11, 0x1

    :goto_1
    const/4 v15, 0x0

    if-eqz v11, :cond_5

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v14, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    iget-boolean v2, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isRectangleShape:Z

    if-eqz v2, :cond_7

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_2
    iget-boolean v2, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    if-nez v2, :cond_4

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    :cond_5
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    sub-int v3, p1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    sub-int v4, p2, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    add-int v5, v5, p1

    move-object/from16 v0, p0

    iget v6, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    add-int v6, v6, p2

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->stopSmoothMovement()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, p1, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-double v3, v2

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    int-to-double v5, v2

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v7, v2

    move-object/from16 v2, p0

    move/from16 v9, p1

    move/from16 v10, p2

    invoke-direct/range {v2 .. v10}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isPointInCircle(DDDII)Z

    move-result v2

    if-eqz v2, :cond_4

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3
.end method

.method private onTouchMove(II)V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v2, v3, :cond_2

    :cond_0
    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPosition(IIZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iget-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private onTouchUpOrCancel(III)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_0

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    if-nez v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v12, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v13, v14, :cond_d

    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v14, v14

    if-ne v13, v14, :cond_2

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    if-eqz v13, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    const/4 v14, 0x2

    new-array v14, v14, [I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    move/from16 v16, v0

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    aput v16, v14, v15

    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    move/from16 v16, v0

    aput v16, v14, v15

    invoke-virtual {v13, v14}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    const/high16 v14, 0x43960000    # 300.0f

    const/high16 v15, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    move/from16 v17, v0

    div-int v16, v16, v17

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    sub-float v15, v15, v16

    mul-float/2addr v14, v15

    float-to-int v14, v14

    int-to-long v14, v14

    invoke-virtual {v13, v14, v15}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->reverse()V

    :cond_4
    sget-object v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-eq v7, v13, :cond_6

    if-nez v4, :cond_5

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startSmoothMovement()V

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postInvalidate()V

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getAlpha()F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    iget v14, v12, Landroid/graphics/Rect;->left:I

    iget v15, v12, Landroid/graphics/Rect;->top:I

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v13

    if-eqz v13, :cond_9

    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.settings.TOOLBOX_LIST"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v13, 0x30000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startActivityOrTask(Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v13}, Landroid/app/StatusBarManager;->collapsePanels()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v14, "tw_tool_box_floating_x_ratio"

    const/4 v15, 0x0

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v14, "tw_tool_box_floating_y_ratio"

    const/4 v15, 0x0

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v11, v13

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionBySmooth(II)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    iget v14, v12, Landroid/graphics/Rect;->left:I

    iget v15, v12, Landroid/graphics/Rect;->top:I

    iget v0, v12, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    iget v0, v12, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v13

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v13, :cond_1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    array-length v8, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v8, :cond_b

    aget-object v3, v2, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    const/4 v9, 0x1

    :cond_b
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v13, v14, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    goto/16 :goto_0
.end method

.method private playAnimationCollapse()V
    .locals 5

    iget-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private playAnimationEnter()V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationExpand()V
    .locals 3

    iget-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    instance-of v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    check-cast v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;

    invoke-interface {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;->onUpdateToggleStatus()V

    :cond_2
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationFadeIn()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const-string/jumbo v0, "toolbox"

    const-string/jumbo v1, "playAnimationFadeIn()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private playAnimationFadeOut()V
    .locals 5

    const/4 v4, 0x1

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-string/jumbo v0, "toolbox"

    const-string/jumbo v1, "playAnimationFadeOut()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationSleep()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x29b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x3ecccccd    # 0.4f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationWakeup()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getAlpha()F

    move-result v0

    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method

.method private prepareToolBoxLinear()V
    .locals 41

    const-string/jumbo v3, "toolbox"

    const-string/jumbo v4, "prepareToolBoxLinear()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v22, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v22 .. v22}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-virtual {v3}, Lcom/samsung/android/toolbox/TwToolBoxManager;->getToolList()[Ljava/lang/String;

    move-result-object v39

    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "0"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v12, v39

    array-length v0, v12

    move/from16 v24, v0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    aget-object v37, v12, v20

    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    array-length v0, v12

    move/from16 v24, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    aget-object v28, v12, v20

    move-object/from16 v29, v28

    check-cast v29, Ljava/lang/String;

    const-string v3, "/"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    const/4 v3, 0x0

    aget-object v30, v16, v3

    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    const-string v9, "00"

    :goto_2
    const-string v3, "0"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_4

    new-instance v25, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    :goto_3
    move/from16 v0, v32

    move-object/from16 v1, v25

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    new-instance v10, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :goto_4
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    const/4 v5, 0x1

    invoke-static {v13, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    :goto_5
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v14, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    move-object/from16 v0, v34

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/Bitmap;

    if-eqz v23, :cond_9

    move-object/from16 v26, v25

    check-cast v26, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v34

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->mainShadow:Landroid/graphics/drawable/BitmapDrawable;

    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v32, v32, 0x1

    :cond_2
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x1

    aget-object v9, v16, v3

    goto/16 :goto_2

    :cond_4
    new-instance v25, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v31, v0

    const-string v3, "00"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnabledPkg(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    if-eqz v3, :cond_2

    :cond_6
    new-instance v11, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v11, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    const/16 v36, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    div-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_GAP:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    add-int/2addr v4, v5

    add-int/lit8 v5, v32, -0x1

    mul-int/2addr v4, v5

    add-int v19, v3, v4

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v19, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v10}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    array-length v4, v4

    sub-int v4, v4, v32

    mul-int/lit8 v4, v4, 0x21

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto/16 :goto_4

    :cond_7
    :try_start_1
    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    invoke-direct {v15, v0, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_8

    :catch_0
    move-exception v18

    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "There is no package : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "index"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_2
    const-string v3, "index"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_7

    :catch_1
    move-exception v27

    goto/16 :goto_7

    :catch_2
    move-exception v18

    goto/16 :goto_7

    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    const/4 v5, 0x1

    invoke-static {v13, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_5

    :cond_9
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_6

    :cond_a
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$32;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$32;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$33;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$33;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$34;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$34;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$36;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$36;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$38;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$38;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$39;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$39;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v5, v5

    aput v5, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$40;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$40;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v33, v0

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v33, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v40

    const-wide/16 v3, 0x96

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x3c

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$43;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$43;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v33, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v17

    const-wide/16 v3, 0x96

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x3c

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$44;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$44;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$45;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$45;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const/4 v3, 0x6

    new-array v3, v3, [F

    fill-array-data v3, :array_5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v35

    const-wide/16 v3, 0x190

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0x3c

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$46;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$46;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$47;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$47;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$48;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$48;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postInvalidate()V

    const-string/jumbo v3, "toolbox"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x5a
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x41400000    # 12.0f
        -0x3ec00000    # -12.0f
        0x41400000    # 12.0f
        -0x3ec00000    # -12.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private reloadContentObserver()V
    .locals 5

    const/4 v4, -0x2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string/jumbo v1, "toolbox_apps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "touch_exploration_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "kids_home_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private saveCenterPosition()V
    .locals 7

    const/4 v6, -0x2

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getHeight()I

    move-result v0

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tw_tool_box_floating_x_ratio"

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tw_tool_box_floating_y_ratio"

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    int-to-float v4, v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method

.method private saveDefaultCenterPosition()V
    .locals 10

    const/4 v9, -0x2

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-nez v5, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v5

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v5

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_TOP_PADDING:I

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_RIGHT_PADDING:I

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "tw_tool_box_floating_x_ratio"

    int-to-float v7, v0

    sub-float v7, v3, v7

    int-to-float v8, v1

    sub-float/2addr v7, v8

    div-float/2addr v7, v3

    invoke-static {v5, v6, v7, v9}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "tw_tool_box_floating_y_ratio"

    add-int v7, v0, v4

    int-to-float v7, v7

    div-float/2addr v7, v2

    invoke-static {v5, v6, v7, v9}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v5, v5, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->backgroundOpen:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v5

    div-int/lit8 v0, v5, 0x2

    goto :goto_0
.end method

.method private screenCapture()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$55;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$55;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private startActivityOrTask(Landroid/content/Intent;)V
    .locals 8

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    iget v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    const-string/jumbo v5, "toolbox"

    const-string/jumbo v6, "moveTaskToFront()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string/jumbo v5, "toolbox"

    const-string/jumbo v6, "startActivityAsUser()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startSmoothMovement()V
    .locals 1

    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionRecursive()V

    return-void
.end method

.method private stopSmoothMovement()V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    if-lez v0, :cond_0

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastX:I

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastY:I

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    :cond_0
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursive:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private toggleTorch()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.ASSISTIVELIGHT_OFF"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "android.intent.action.ASSISTIVELIGHT_ON"

    goto :goto_0
.end method

.method private updateVisibility()Z
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "toolbox_onoff"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v2, v4

    :goto_0
    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getSCoverState()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableFloatingViewer()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isDisableFloatingViewer()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    if-eqz v6, :cond_3

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-eqz v4, :cond_4

    move v3, v5

    :goto_2
    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->setVisibility(I)V

    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x104085a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1040b4f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    return v4

    :cond_2
    move v2, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    goto :goto_2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18

    invoke-super/range {p0 .. p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v13, v13

    if-eq v5, v13, :cond_6

    :cond_0
    if-gez v5, :cond_1

    const/4 v13, 0x0

    int-to-float v14, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v6, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->bounds:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->left:I

    iget v15, v6, Landroid/graphics/Rect;->top:I

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v13

    if-eqz v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v3, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v4, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int/lit8 v14, v14, 0x1

    div-int/lit8 v15, v3, 0x2

    add-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x3

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    iget v14, v14, Landroid/graphics/Rect;->right:I

    add-int/lit8 v14, v14, 0x1

    div-int/lit8 v15, v4, 0x2

    add-int/2addr v14, v15

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->height()I

    move-result v16

    div-int/lit8 v16, v16, 0x3

    sub-int v15, v15, v16

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :goto_1
    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    if-nez v13, :cond_3

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v11, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v12, v13

    if-lez v9, :cond_4

    const/4 v13, 0x0

    neg-int v14, v9

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    if-lez v9, :cond_5

    neg-float v13, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    const/4 v13, 0x0

    int-to-float v14, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_5
    :goto_2
    if-gez v5, :cond_6

    const/4 v13, 0x0

    neg-int v14, v5

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAddedBoxTailHeight:I

    sub-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v15, v15, v16

    float-to-int v15, v15

    add-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    if-gtz v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    if-eqz v13, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    const/high16 v14, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->drawToolBox(Landroid/graphics/Canvas;IIZ)V

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    iget v14, v6, Landroid/graphics/Rect;->left:I

    iget v15, v6, Landroid/graphics/Rect;->top:I

    iget v0, v6, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    iget v0, v6, Landroid/graphics/Rect;->bottom:I

    move/from16 v17, v0

    invoke-virtual/range {v13 .. v17}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v13

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    invoke-virtual {v14}, Landroid/graphics/Rect;->centerX()I

    move-result v14

    int-to-float v14, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    add-int v15, v15, v16

    div-int/lit8 v15, v15, 0x2

    int-to-float v15, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v13, v14, v15, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 7

    const/4 v6, -0x2

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShowToolFloatingObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$10;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$10;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$12;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$12;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$13;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$13;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    const-string/jumbo v3, "toolbox_apps"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v3, "device_provisioned"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v3, "touch_exploration_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v3, "kids_home_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    iget-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    iget v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    if-lez p1, :cond_1

    if-lez p2, :cond_1

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "tw_tool_box_floating_x_ratio"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-nez v6, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveDefaultCenterPosition()V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    iget v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v6, v6

    iput v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    div-int/lit8 v0, p1, 0x2

    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    if-eqz v6, :cond_3

    const/high16 v6, 0x41e00000    # 28.0f

    iget v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v0, v6

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v4, v0, v6

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    const/high16 v7, 0x42400000    # 48.0f

    iget v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sub-int v7, v1, v7

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v1, -0x1

    const/high16 v9, 0x42400000    # 48.0f

    iget v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v5

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    const/high16 v7, 0x42400000    # 48.0f

    iget v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sub-int v7, v4, v7

    add-int/lit8 v7, v7, -0x1

    add-int/lit8 v8, v4, -0x1

    const/high16 v9, 0x42400000    # 48.0f

    iget v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v5

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v1, v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v1

    iget-object v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    sub-int v7, v4, v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v4

    iget-object v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    return-void

    :cond_2
    iget v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    if-eq v6, v2, :cond_1

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    goto/16 :goto_0

    :cond_3
    const/high16 v6, 0x40a00000    # 5.0f

    iget v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    div-int/lit8 v6, v0, 0x2

    sub-int v1, v0, v6

    div-int/lit8 v6, v0, 0x2

    add-int v4, v0, v6

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    const/high16 v7, 0x41800000    # 16.0f

    iget v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sub-int v7, v1, v7

    const/high16 v8, 0x41800000    # 16.0f

    iget v9, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v8, v1

    const/high16 v9, 0x42000000    # 32.0f

    iget v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v5

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    const/high16 v7, 0x41800000    # 16.0f

    iget v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    sub-int v7, v4, v7

    const/high16 v8, 0x41800000    # 16.0f

    iget v9, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v8, v4

    const/high16 v9, 0x42000000    # 32.0f

    iget v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v9, v5

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    iget-object v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    iget-object v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v10

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v4, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v1, v5

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchDown(II)V

    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-eqz v5, :cond_5

    :cond_1
    if-eq v0, v4, :cond_2

    if-ne v0, v6, :cond_4

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v5, v5

    if-ne v4, v5, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    if-eqz v4, :cond_4

    :cond_3
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    invoke-direct {p0, v6, v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    const-string/jumbo v4, "toolbox"

    const-string v5, "Recovered LongPressPanel"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    :pswitch_1
    return v3

    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    invoke-direct {p0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchMove(II)V

    :cond_6
    :goto_1
    move v3, v4

    goto :goto_0

    :cond_7
    if-eq v0, v4, :cond_8

    if-ne v0, v6, :cond_6

    :cond_8
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 3

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public registerCallback()V
    .locals 4

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    invoke-virtual {v2, v3}, Lcom/samsung/android/toolbox/TwToolBoxManager;->registerCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "ResponseAxT9Info"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_2

    new-instance v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$2;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1f4

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    const-wide/16 v0, 0xa

    goto :goto_0
.end method

.method public unregisterCallback()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxManager;->unregisterCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->clearToolBox()V

    return-void
.end method
