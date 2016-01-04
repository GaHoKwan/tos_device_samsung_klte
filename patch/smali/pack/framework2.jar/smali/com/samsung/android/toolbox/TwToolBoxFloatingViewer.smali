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
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v9, 0x41400000    # 12.0f

    const/16 v8, 0xff

    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 221
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 87
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SLEEP_TIME_OUT:I

    .line 88
    const v1, 0x3e75c28f    # 0.24f

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->MAIN_DECREASE_RATIO:F

    .line 89
    const v1, 0x3ecccccd    # 0.4f

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->MAIN_DIM_RATIO:F

    .line 91
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SHORTCUT_SHADOW_HEIGHT_PX:I

    .line 92
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    .line 93
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    .line 110
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 114
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    .line 117
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    .line 118
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    .line 119
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    .line 120
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    .line 121
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    .line 122
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    .line 123
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    .line 124
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    .line 125
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    .line 126
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    .line 127
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    .line 128
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    .line 129
    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    .line 130
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    .line 131
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    .line 132
    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    .line 133
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    .line 134
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    .line 135
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    .line 138
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    .line 139
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAddedBoxTailHeight:I

    .line 140
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    .line 141
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    .line 142
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastX:I

    .line 143
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastY:I

    .line 144
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    .line 146
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    .line 147
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainShadowRect:Landroid/graphics/Rect;

    .line 148
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    .line 149
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    .line 150
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;

    .line 151
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    .line 152
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

    .line 153
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    .line 155
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    .line 156
    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    .line 158
    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    .line 159
    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    .line 160
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    .line 161
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    .line 162
    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    .line 163
    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    .line 175
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    .line 176
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowPaint:Landroid/graphics/Paint;

    .line 177
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    .line 178
    const-string/jumbo v1, "sec-roboto-light"

    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFont:Landroid/graphics/Typeface;

    .line 179
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    .line 180
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1}, Landroid/graphics/Canvas;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    .line 192
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    .line 196
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    .line 204
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$1;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDelegateKeyguardShowing:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$DelegateKeyguardShowing;

    .line 212
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

    .line 351
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$3;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    .line 390
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$4;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    .line 400
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$5;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    .line 466
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$6;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 474
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$7;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 487
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$8;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    .line 520
    sget-object v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1058
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$14;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$14;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    .line 1064
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$15;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    .line 1070
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$16;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    .line 1076
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$17;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    .line 1082
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$18;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$18;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    .line 1088
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$19;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$19;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    .line 1094
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$20;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    .line 1100
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$21;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$21;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    .line 1106
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$22;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$22;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    .line 1112
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$23;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$23;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    .line 1118
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$24;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$24;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursive:Ljava/lang/Runnable;

    .line 1124
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$25;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenWriteRecovery:Ljava/lang/Runnable;

    .line 223
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    .line 226
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 227
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 229
    new-instance v1, Lcom/samsung/android/cover/CoverManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 230
    const-string/jumbo v1, "statusbar"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 231
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    .line 232
    const-string v1, "dreams"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;

    .line 234
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-direct {v1, p1}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    .line 235
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    const/16 v4, 0x64

    const/16 v5, 0x64

    const/16 v6, 0x2bc

    const/16 v7, 0x2bc

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 237
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    .line 238
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v4, 0x258

    if-lt v1, v4, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    .line 240
    const/high16 v1, 0x425c0000    # 55.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    .line 241
    const/high16 v1, 0x40400000    # 3.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SHORTCUT_SHADOW_HEIGHT_PX:I

    .line 242
    const/high16 v1, 0x421c0000    # 39.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    .line 243
    const/high16 v1, 0x41200000    # 10.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_GAP:I

    .line 244
    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v9

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    .line 245
    const/high16 v1, 0x41a00000    # 20.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ROUND_TAIL_SIZE:I

    .line 246
    const/high16 v1, 0x42480000    # 50.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_TOP_PADDING:I

    .line 247
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_RIGHT_PADDING:I

    .line 248
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SCALED_TOUCH_SLOP:I

    .line 250
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 251
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 252
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 253
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 254
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 256
    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    if-eqz v1, :cond_0

    .line 257
    const/high16 v1, 0x42a80000    # 84.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    .line 258
    const/high16 v1, 0x42300000    # 44.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    .line 259
    const/high16 v1, 0x41600000    # 14.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_GAP:I

    .line 260
    const/high16 v1, 0x41000000    # 8.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_GAP:I

    .line 261
    const/high16 v1, 0x429c0000    # 78.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_TOP_PADDING:I

    .line 262
    const/high16 v1, 0x41880000    # 17.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_RIGHT_PADDING:I

    .line 264
    const/high16 v1, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v1, v4

    float-to-int v0, v1

    .line 265
    .local v0, "textShadowSize":I
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x41900000    # 18.0f

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 266
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFont:Landroid/graphics/Typeface;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 267
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    int-to-float v4, v0

    int-to-float v5, v0

    int-to-float v6, v0

    const/high16 v7, -0x40000000    # -2.0f

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 270
    .end local v0    # "textShadowSize":I
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cad

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    .line 271
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cb5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;

    .line 272
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080caa

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    .line 273
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cab

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

    .line 274
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cac

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

    .line 275
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cb6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    .line 276
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cb7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

    .line 277
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cb8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

    .line 278
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cb9

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

    .line 279
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x104085a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1040b4f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    .line 282
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "device_provisioned"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    .line 283
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "touch_exploration_enabled"

    const/4 v5, -0x2

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    .line 284
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "kids_home_mode"

    const/4 v5, -0x2

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_4

    :goto_3
    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    .line 285
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    .line 287
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    .line 288
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 290
    return-void

    :cond_1
    move v1, v3

    .line 238
    goto/16 :goto_0

    :cond_2
    move v1, v3

    .line 282
    goto :goto_1

    :cond_3
    move v1, v3

    .line 283
    goto :goto_2

    :cond_4
    move v2, v3

    .line 284
    goto :goto_3
.end method

.method static synthetic access$000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getSCoverState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/service/dreams/IDreamManager;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDreamManager:Landroid/service/dreams/IDreamManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableOTA()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mOTAShowing:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    return v0
.end method

.method static synthetic access$200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/graphics/Rect;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    return p1
.end method

.method static synthetic access$2400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->reloadContentObserver()V

    return-void
.end method

.method static synthetic access$2600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->clearToolBox()V

    return-void
.end method

.method static synthetic access$2700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V

    return-void
.end method

.method static synthetic access$2802(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startActivityOrTask(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$3202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    return p1
.end method

.method static synthetic access$3302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    return p1
.end method

.method static synthetic access$3400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    return-void
.end method

.method static synthetic access$3502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeivceProvisioned:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchMode:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsMode:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onToolLongClick()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onToolClick()V

    return-void
.end method

.method static synthetic access$4100(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationEnter()V

    return-void
.end method

.method static synthetic access$4200(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationSleep()V

    return-void
.end method

.method static synthetic access$4300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationWakeup()V

    return-void
.end method

.method static synthetic access$4400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationExpand()V

    return-void
.end method

.method static synthetic access$4500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    return-void
.end method

.method static synthetic access$4600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationFadeIn()V

    return-void
.end method

.method static synthetic access$4700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationFadeOut()V

    return-void
.end method

.method static synthetic access$4800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionRecursive()V

    return-void
.end method

.method static synthetic access$4900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    return v0
.end method

.method static synthetic access$4902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEditAfterScreenCapture:I

    return p1
.end method

.method static synthetic access$500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    return p1
.end method

.method static synthetic access$5102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    return p1
.end method

.method static synthetic access$5202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    return p1
.end method

.method static synthetic access$5302(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    return p1
.end method

.method static synthetic access$5402(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    return p1
.end method

.method static synthetic access$5500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)F
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    return v0
.end method

.method static synthetic access$5502(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    return p1
.end method

.method static synthetic access$5600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    return v0
.end method

.method static synthetic access$5602(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    return p1
.end method

.method static synthetic access$5700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    return v0
.end method

.method static synthetic access$5802(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    return p1
.end method

.method static synthetic access$5902(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    return p1
.end method

.method static synthetic access$600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    return v0
.end method

.method static synthetic access$6002(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;I)I
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    return p1
.end method

.method static synthetic access$6102(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    return p1
.end method

.method static synthetic access$6202(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;F)F
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # F

    .prologue
    .line 83
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    return p1
.end method

.method static synthetic access$6300(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->toggleTorch()V

    return-void
.end method

.method static synthetic access$6500(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->screenCapture()V

    return-void
.end method

.method static synthetic access$6600(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mScreenWriteRecovery:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    return v0
.end method

.method static synthetic access$800(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;III)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeInRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private clearToolBox()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 1840
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1841
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1843
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1844
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 1845
    .local v2, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1846
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1847
    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    .line 1848
    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    .line 1849
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    .line 1850
    iget-object v4, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1851
    iput-object v6, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 1854
    .end local v2    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1856
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1857
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1859
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1860
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1862
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1863
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1865
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1866
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1868
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1869
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1871
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1872
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1874
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

    .local v0, "a":Landroid/animation/Animator;
    move-object v3, v0

    .line 1875
    check-cast v3, Landroid/animation/ValueAnimator;

    .line 1876
    .local v3, "va":Landroid/animation/ValueAnimator;
    invoke-virtual {v3}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1877
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    goto :goto_1

    .line 1879
    .end local v0    # "a":Landroid/animation/Animator;
    .end local v3    # "va":Landroid/animation/ValueAnimator;
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1882
    const-string/jumbo v4, "toolbox"

    const-string v5, "ToolBox disposed..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1885
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_4

    .line 1886
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1887
    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    .line 1888
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/Animator;->removeAllListeners()V

    .line 1889
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 1890
    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    .line 1893
    :cond_4
    iput-boolean v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    .line 1894
    iput v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    .line 1895
    iput v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    .line 1896
    iput v8, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    .line 1897
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v4, v4

    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    .line 1899
    return-void
.end method

.method private drawToolBox(Landroid/graphics/Canvas;IIZ)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "centerX"    # I
    .param p3, "centerY"    # I
    .param p4, "isReCalculation"    # Z

    .prologue
    .line 892
    const/4 v11, 0x0

    .line 893
    .local v11, "halfWidth":I
    const/4 v10, 0x0

    .line 894
    .local v10, "halfHeight":I
    const/4 v7, 0x0

    .line 896
    .local v7, "boxAnimating":Z
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

    .line 897
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

    .line 900
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 901
    .local v14, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
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

    .line 902
    .local v6, "background":Landroid/graphics/drawable/Drawable;
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

    .line 904
    .local v5, "alpha":I
    iget-boolean v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    move/from16 v23, v0

    or-int v7, v7, v23

    .line 906
    instance-of v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    .line 907
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v23, v0

    div-int/lit8 v11, v23, 0x2

    .line 908
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_HEIGHT:I

    move/from16 v23, v0

    div-int/lit8 v10, v23, 0x2

    .line 909
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    sub-int v24, p2, v11

    sub-int v25, p3, v10

    add-int v26, p2, v11

    add-int v27, p3, v10

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/Rect;->set(IIII)V

    .line 914
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_4

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterProgressValue:F

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    sub-float v21, v23, v24

    .line 916
    .local v21, "progress":F
    const v23, 0x3e75c28f    # 0.24f

    mul-float v23, v23, v21

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v21

    .line 917
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v21

    move/from16 v0, v23

    float-to-int v8, v0

    .line 925
    .end local v21    # "progress":F
    .local v8, "decreaseAmount":I
    :goto_3
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v8, v8}, Landroid/graphics/Rect;->inset(II)V

    .line 926
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 901
    .end local v5    # "alpha":I
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v8    # "decreaseAmount":I
    :cond_2
    iget-object v6, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 902
    .restart local v6    # "background":Landroid/graphics/drawable/Drawable;
    :cond_3
    const/16 v23, 0x80

    goto/16 :goto_2

    .line 919
    .restart local v5    # "alpha":I
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    move/from16 v23, v0

    const/16 v24, 0x0

    cmpl-float v23, v23, v24

    if-lez v23, :cond_5

    .line 920
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

    .restart local v8    # "decreaseAmount":I
    goto :goto_3

    .line 923
    .end local v8    # "decreaseAmount":I
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

    .restart local v8    # "decreaseAmount":I
    goto :goto_3

    .line 929
    .end local v8    # "decreaseAmount":I
    :cond_6
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 930
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    move/from16 v23, v0

    div-int/lit8 v11, v23, 0x2

    .line 931
    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    move/from16 v23, v0

    div-int/lit8 v10, v23, 0x2

    .line 932
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

    .line 934
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 940
    .end local v5    # "alpha":I
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v14    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
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

    .line 941
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

    .line 944
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

    .line 946
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    .line 949
    if-eqz p4, :cond_f

    .line 966
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 967
    .local v18, "objectSize":I
    add-int/lit8 v13, v18, -0x1

    .local v13, "idx":I
    :goto_4
    if-ltz v13, :cond_13

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 969
    .restart local v14    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
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

    .line 970
    .restart local v6    # "background":Landroid/graphics/drawable/Drawable;
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

    .line 972
    .restart local v5    # "alpha":I
    instance-of v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move/from16 v23, v0

    if-eqz v23, :cond_18

    move-object v15, v14

    .line 973
    check-cast v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    .line 976
    .local v15, "main":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->mainShadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v23, v0

    if-eqz v23, :cond_9

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainShadowRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainShadowRect:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->SHORTCUT_SHADOW_HEIGHT_PX:I

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Rect;->offset(II)V

    .line 979
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->mainShadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainShadowRect:Landroid/graphics/Rect;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 980
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

    .line 981
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->mainShadow:Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 985
    :cond_9
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    .line 986
    .local v16, "mainNormalBg":Landroid/graphics/drawable/Drawable;
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 988
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

    .line 989
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

    .line 990
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

    .line 992
    :cond_c
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->backgroundOpen:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    .line 993
    .local v17, "mainOpenBg":Landroid/graphics/drawable/Drawable;
    iget-object v0, v15, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 995
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

    .line 996
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

    .line 997
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 998
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

    .line 967
    .end local v15    # "main":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    .end local v16    # "mainNormalBg":Landroid/graphics/drawable/Drawable;
    .end local v17    # "mainOpenBg":Landroid/graphics/drawable/Drawable;
    :cond_e
    :goto_7
    add-int/lit8 v13, v13, -0x1

    goto/16 :goto_4

    .line 952
    .end local v5    # "alpha":I
    .end local v6    # "background":Landroid/graphics/drawable/Drawable;
    .end local v13    # "idx":I
    .end local v14    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v18    # "objectSize":I
    :cond_f
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v22

    .line 953
    .local v22, "w":I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 954
    .local v9, "h":I
    const/16 v19, 0x0

    .local v19, "offsetX":I
    const/16 v20, 0x0

    .line 955
    .local v20, "offsetY":I
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

    .line 957
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

    .line 959
    :cond_11
    :goto_9
    if-nez v19, :cond_12

    if-eqz v20, :cond_8

    .line 960
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

    .line 1014
    .end local v9    # "h":I
    .end local v19    # "offsetX":I
    .end local v20    # "offsetY":I
    .end local v22    # "w":I
    :cond_13
    return-void

    .line 956
    .restart local v9    # "h":I
    .restart local v19    # "offsetX":I
    .restart local v20    # "offsetY":I
    .restart local v22    # "w":I
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

    .line 958
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

    .line 969
    .end local v9    # "h":I
    .end local v19    # "offsetX":I
    .end local v20    # "offsetY":I
    .end local v22    # "w":I
    .restart local v13    # "idx":I
    .restart local v14    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .restart local v18    # "objectSize":I
    :cond_16
    iget-object v6, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_5

    .line 970
    .restart local v6    # "background":Landroid/graphics/drawable/Drawable;
    :cond_17
    const/16 v23, 0x80

    goto/16 :goto_6

    .line 1001
    .restart local v5    # "alpha":I
    :cond_18
    if-eqz v5, :cond_e

    iget v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->y:F

    move/from16 v23, v0

    int-to-float v0, v10

    move/from16 v24, v0

    cmpg-float v23, v23, v24

    if-ltz v23, :cond_e

    .line 1004
    iget-object v0, v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/Bitmap;

    move-object/from16 v23, v0

    if-eqz v23, :cond_19

    .line 1005
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

    .line 1006
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

    .line 1010
    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_7
.end method

.method private getSCoverState()Z
    .locals 2

    .prologue
    .line 2171
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_0

    .line 2172
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    invoke-virtual {v1}, Lcom/samsung/android/cover/CoverManager;->getCoverState()Lcom/samsung/android/cover/CoverState;

    move-result-object v0

    .line 2173
    .local v0, "state":Lcom/samsung/android/cover/CoverState;
    if-eqz v0, :cond_0

    .line 2174
    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v1

    .line 2177
    .end local v0    # "state":Lcom/samsung/android/cover/CoverState;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private getTorchStatus()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 2268
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

    .prologue
    .line 1370
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPosition(IIZ)V

    .line 1371
    return-void
.end method

.method private goToPosition(IIZ)V
    .locals 8
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "canInvalidate"    # Z

    .prologue
    .line 1374
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    .line 1375
    .local v6, "viewerWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    .line 1376
    .local v5, "viewerHeight":I
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    div-int/lit8 v4, v7, 0x2

    .line 1377
    .local v4, "toolWidthHalf":I
    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    div-int/lit8 v3, v7, 0x2

    .line 1378
    .local v3, "toolHeightHalf":I
    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    .line 1379
    .local v1, "oldCenterX":I
    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    .line 1381
    .local v2, "oldCenterY":I
    iput p1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    .line 1382
    iput p2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    .line 1384
    if-eqz p3, :cond_1

    iget v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    if-ne v7, v1, :cond_0

    iget v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    if-eq v7, v2, :cond_1

    .line 1386
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1392
    :cond_1
    :goto_0
    return-void

    .line 1387
    :catch_0
    move-exception v0

    .line 1388
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0
.end method

.method private goToPositionBySmooth(II)V
    .locals 11
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1395
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1396
    .local v5, "viewerWidth":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1397
    .local v4, "viewerHeight":I
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    div-int/lit8 v3, v6, 0x2

    .line 1398
    .local v3, "toolWidthHalf":I
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    div-int/lit8 v2, v6, 0x2

    .line 1399
    .local v2, "toolHeightHalf":I
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    .line 1400
    .local v0, "oldCenterX":I
    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    .line 1402
    .local v1, "oldCenterY":I
    if-ne p1, v0, :cond_0

    if-eq p2, v1, :cond_1

    .line 1403
    :cond_0
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    if-nez v6, :cond_2

    .line 1404
    new-array v6, v10, [I

    aput v0, v6, v8

    aput p1, v6, v9

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    .line 1405
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;

    invoke-direct {v7, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$26;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1416
    new-array v6, v10, [I

    aput v1, v6, v8

    aput p2, v6, v9

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    .line 1417
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;

    invoke-direct {v7, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$27;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1428
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-instance v7, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;

    invoke-direct {v7, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$28;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v6, v7}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1446
    :goto_0
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 1447
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 1450
    :cond_1
    return-void

    .line 1443
    :cond_2
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorX:Landroid/animation/ValueAnimator;

    new-array v7, v10, [I

    aput v0, v7, v8

    aput p1, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1444
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPositionAnimatorY:Landroid/animation/ValueAnimator;

    new-array v7, v10, [I

    aput v1, v7, v8

    aput p2, v7, v9

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_0
.end method

.method private goToPositionRecursive()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1347
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int v0, v4, v5

    .line 1348
    .local v0, "gotoX":I
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int v1, v4, v5

    .line 1349
    .local v1, "gotoY":I
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    add-int/2addr v4, v0

    div-int/lit8 v2, v4, 0x2

    .line 1350
    .local v2, "x":I
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    add-int/2addr v4, v1

    div-int/lit8 v3, v4, 0x2

    .line 1352
    .local v3, "y":I
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPosition(IIZ)V

    .line 1354
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    if-lez v4, :cond_2

    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastX:I

    if-ne v2, v4, :cond_0

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastY:I

    if-eq v3, v4, :cond_2

    .line 1355
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursive:Ljava/lang/Runnable;

    const-wide/16 v5, 0x1e

    invoke-virtual {p0, v4, v5, v6}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1356
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    .line 1357
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastX:I

    .line 1358
    iput v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastY:I

    .line 1367
    :cond_1
    :goto_0
    return-void

    .line 1361
    :cond_2
    iput v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastX:I

    .line 1362
    iput v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastY:I

    .line 1363
    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1

    .line 1364
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    goto :goto_0
.end method

.method private initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
    .locals 6
    .param p1, "m"    # Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .param p2, "index"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1902
    packed-switch p2, :pswitch_data_0

    .line 2045
    :goto_0
    :pswitch_0
    return v2

    .line 1905
    :pswitch_1
    :try_start_0
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.samsung.android.app.galaxyfinder"

    const-string v5, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    .local v0, "cm":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    .line 1907
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 1908
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$50;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$50;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/ComponentName;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "cm":Landroid/content/ComponentName;
    :goto_1
    move v2, v3

    .line 2045
    goto :goto_0

    .line 1919
    :catch_0
    move-exception v1

    .line 1920
    .local v1, "e":Ljava/lang/Exception;
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

    .line 1928
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_2
    :try_start_1
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080cb0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 1929
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    .line 1930
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$51;

    invoke-direct {v4, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$51;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1942
    :catch_1
    move-exception v1

    .line 1943
    .restart local v1    # "e":Ljava/lang/Exception;
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

    .line 1951
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_3
    :try_start_2
    sget-object v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;->TOGGLE:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->operationType:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$OperationType;

    .line 1952
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080cb4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 1953
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080cb3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->backgroundInverse:Landroid/graphics/drawable/Drawable;

    .line 1954
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v4

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->toggleStatus:Z

    .line 1955
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    .line 1956
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$52;

    invoke-direct {v4, p0, p1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$52;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1970
    :catch_2
    move-exception v1

    .line 1971
    .restart local v1    # "e":Ljava/lang/Exception;
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

    .line 1979
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_4
    :try_start_3
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1080cb2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 1980
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    .line 1981
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;

    invoke-direct {v4, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$53;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 2000
    :catch_3
    move-exception v1

    .line 2001
    .restart local v1    # "e":Ljava/lang/Exception;
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

    .line 2019
    .end local v1    # "e":Ljava/lang/Exception;
    :pswitch_5
    :try_start_4
    new-instance v0, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.app.magnifier"

    const-string v5, "com.sec.android.app.magnifier.Magnifier"

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2020
    .restart local v0    # "cm":Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    .line 2021
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 2022
    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$54;

    invoke-direct {v4, p0, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$54;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/content/ComponentName;)V

    iput-object v4, p1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_1

    .line 2034
    .end local v0    # "cm":Landroid/content/ComponentName;
    :catch_4
    move-exception v1

    .line 2035
    .restart local v1    # "e":Ljava/lang/Exception;
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

    .line 1902
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

    .prologue
    .line 2212
    const/4 v4, 0x0

    .line 2213
    .local v4, "needBlock":Z
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2214
    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2215
    const/4 v4, 0x1

    .line 2220
    .end local v1    # "blockPkg":Ljava/lang/String;
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

    .line 2213
    .restart local v1    # "blockPkg":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2220
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isEnableFloatingViewer()Z
    .locals 6

    .prologue
    .line 2226
    const/4 v4, 0x0

    .line 2227
    .local v4, "needBlock":Z
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 2228
    .local v1, "blockPkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2229
    const/4 v4, 0x1

    .line 2234
    .end local v1    # "blockPkg":Ljava/lang/String;
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

    .line 2227
    .restart local v1    # "blockPkg":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2234
    .end local v1    # "blockPkg":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isEnableOTA()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2256
    const-string v1, "KOR"

    const-string v2, "GGSM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2257
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

    .line 2259
    :cond_0
    return v0
.end method

.method private isEnabledPkg(Ljava/lang/String;)Z
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2240
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 2242
    .local v1, "enable":I
    const/4 v4, 0x2

    if-eq v4, v1, :cond_0

    const/4 v4, 0x3

    if-ne v4, v1, :cond_1

    .line 2251
    .end local v1    # "enable":I
    :cond_0
    :goto_0
    return v3

    .line 2246
    .restart local v1    # "enable":I
    :cond_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2248
    .end local v1    # "enable":I
    :catch_0
    move-exception v2

    .line 2249
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    .line 2250
    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 2251
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method private isPointInCircle(DDDII)Z
    .locals 13
    .param p1, "centerX"    # D
    .param p3, "centerY"    # D
    .param p5, "radius"    # D
    .param p7, "x"    # I
    .param p8, "y"    # I

    .prologue
    .line 1453
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

    .line 1455
    move/from16 v0, p7

    int-to-double v9, v0

    sub-double v3, p1, v9

    .line 1456
    .local v3, "dx":D
    move/from16 v0, p8

    int-to-double v9, v0

    sub-double v5, p3, v9

    .line 1457
    .local v5, "dy":D
    mul-double/2addr v3, v3

    .line 1458
    mul-double/2addr v5, v5

    .line 1459
    add-double v1, v3, v5

    .line 1460
    .local v1, "distanceSquared":D
    mul-double v7, p5, p5

    .line 1461
    .local v7, "radiusSquared":D
    cmpg-double v9, v1, v7

    if-gtz v9, :cond_0

    const/4 v9, 0x1

    .line 1463
    .end local v1    # "distanceSquared":D
    .end local v3    # "dx":D
    .end local v5    # "dy":D
    .end local v7    # "radiusSquared":D
    :goto_0
    return v9

    .line 1461
    .restart local v1    # "distanceSquared":D
    .restart local v3    # "dx":D
    .restart local v5    # "dy":D
    .restart local v7    # "radiusSquared":D
    :cond_0
    const/4 v9, 0x0

    goto :goto_0

    .line 1463
    .end local v1    # "distanceSquared":D
    .end local v3    # "dx":D
    .end local v5    # "dy":D
    .end local v7    # "radiusSquared":D
    :cond_1
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private isValidUser()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2205
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    const/16 v5, 0x64

    if-lt v4, v5, :cond_0

    move v0, v2

    .line 2206
    .local v0, "isKnoxUser":Z
    :goto_0
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 2207
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    return v2

    .end local v0    # "isKnoxUser":Z
    .end local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_0
    move v0, v3

    .line 2205
    goto :goto_0

    .restart local v0    # "isKnoxUser":Z
    .restart local v1    # "user":Landroid/content/pm/UserInfo;
    :cond_1
    move v2, v3

    .line 2207
    goto :goto_1
.end method

.method private loadCenterPosition()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 2147
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2148
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2150
    .local v0, "h":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 2151
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2152
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2155
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tw_tool_box_floating_x_ratio"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    int-to-float v3, v1

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    .line 2156
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tw_tool_box_floating_y_ratio"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    int-to-float v3, v0

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    .line 2157
    return-void
.end method

.method private onToolClick()V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/4 v5, 0x0

    .line 1293
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    if-eqz v6, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    if-eqz v6, :cond_1

    .line 1327
    :cond_0
    :goto_0
    return-void

    .line 1294
    :cond_1
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v6, v7, :cond_8

    .line 1295
    invoke-virtual {p0, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1296
    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 1297
    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v6, :cond_3

    .line 1298
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1326
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

    .line 1300
    :cond_3
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    if-nez v6, :cond_6

    move v0, v5

    .line 1301
    .local v0, "allPkgCount":I
    :goto_2
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v0, v6, :cond_7

    .line 1302
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 1303
    .local v3, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-eq v3, v6, :cond_4

    iget-boolean v6, v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isFunctionShortcut:Z

    if-nez v6, :cond_4

    .line 1304
    iget-object v6, v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->packageName:Ljava/lang/String;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1305
    .local v1, "data":[Ljava/lang/String;
    aget-object v4, v1, v5

    .line 1306
    .local v4, "pkgName":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnabledPkg(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1307
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1315
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v4    # "pkgName":Ljava/lang/String;
    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationExpandRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 1300
    .end local v0    # "allPkgCount":I
    :cond_6
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    array-length v0, v6

    goto :goto_2

    .line 1312
    .restart local v0    # "allPkgCount":I
    :cond_7
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_3

    .line 1318
    .end local v0    # "allPkgCount":I
    :cond_8
    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v6, :cond_2

    .line 1319
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v6, v6, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    invoke-interface {v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;->onAction()V

    .line 1320
    invoke-virtual {p0, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1321
    invoke-virtual {p0, v5}, Landroid/view/View;->playSoundEffect(I)V

    .line 1322
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1323
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v5}, Landroid/app/StatusBarManager;->collapsePanels()V

    goto/16 :goto_1
.end method

.method private onToolLongClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1270
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    if-nez v0, :cond_1

    .line 1290
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    .line 1272
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

    .line 1274
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v0, v1, :cond_0

    .line 1275
    invoke-virtual {p0, v3}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 1276
    invoke-virtual {p0, v3}, Landroid/view/View;->playSoundEffect(I)V

    .line 1277
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1278
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 1280
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v2, v2

    aput v2, v1, v3

    aput v3, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1281
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1282
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1284
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_2

    .line 1285
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1287
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationEnter()V

    goto :goto_0
.end method

.method private onTouchDown(II)V
    .locals 16
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1134
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1136
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-eqz v2, :cond_1

    .line 1179
    :cond_0
    :goto_0
    return-void

    .line 1138
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

    .line 1139
    .local v11, "conflict":Z
    :goto_1
    const/4 v15, 0x0

    .line 1140
    .local v15, "tracking":Z
    if-eqz v11, :cond_5

    .line 1141
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-eqz v2, :cond_3

    .line 1142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1143
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    goto :goto_0

    .line 1138
    .end local v11    # "conflict":Z
    .end local v15    # "tracking":Z
    :cond_2
    const/4 v11, 0x0

    goto :goto_1

    .line 1146
    .restart local v11    # "conflict":Z
    .restart local v15    # "tracking":Z
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 1147
    .local v13, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v14, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    .line 1148
    .local v14, "r":Landroid/graphics/Rect;
    iget-boolean v2, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isRectangleShape:Z

    if-eqz v2, :cond_7

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1150
    :goto_2
    iget-boolean v2, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->isAnimating:Z

    if-nez v2, :cond_4

    .line 1152
    const/4 v15, 0x1

    .line 1153
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 1158
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v14    # "r":Landroid/graphics/Rect;
    :cond_5
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    .line 1160
    if-eqz v11, :cond_8

    .line 1161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1163
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1168
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    if-eqz v2, :cond_0

    .line 1169
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    .line 1170
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

    .line 1172
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1174
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->stopSmoothMovement()V

    .line 1176
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, p1, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    .line 1177
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    goto/16 :goto_0

    .line 1148
    .restart local v12    # "i$":Ljava/util/Iterator;
    .restart local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .restart local v14    # "r":Landroid/graphics/Rect;
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

    .line 1165
    .end local v12    # "i$":Ljava/util/Iterator;
    .end local v13    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v14    # "r":Landroid/graphics/Rect;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3
.end method

.method private onTouchMove(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1183
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v2, v3, :cond_2

    .line 1184
    :cond_0
    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    add-int/2addr v2, p1

    iget v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaX:I

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 1185
    .local v0, "smoothX":I
    iget v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeltaY:I

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .line 1186
    .local v1, "smoothY":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPosition(IIZ)V

    .line 1195
    .end local v0    # "smoothX":I
    .end local v1    # "smoothY":I
    :cond_1
    :goto_0
    return-void

    .line 1187
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDownSlopArea:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1188
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1190
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchTarget:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-ne v2, v3, :cond_1

    .line 1191
    sget-object v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1192
    iget-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private onTouchUpOrCancel(III)V
    .locals 18
    .param p1, "action"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1198
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1200
    .local v7, "lastTouchMode":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1201
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchUpOrCancelRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1203
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

    .line 1204
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchClickRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1207
    :cond_0
    const/4 v4, 0x0

    .line 1208
    .local v4, "calledEditButton":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v12, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    .line 1209
    .local v12, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v13, v14, :cond_d

    .line 1210
    const/4 v13, 0x3

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    .line 1243
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

    .line 1244
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1245
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

    .line 1246
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

    .line 1247
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->reverse()V

    .line 1250
    :cond_4
    sget-object v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->NORMAL:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    .line 1251
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressed:Z

    .line 1253
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-eq v7, v13, :cond_6

    .line 1254
    if-nez v4, :cond_5

    const/4 v13, 0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_5

    .line 1255
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startSmoothMovement()V

    .line 1257
    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1260
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getAlpha()F

    move-result v13

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-nez v13, :cond_7

    .line 1261
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v14, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14, v15}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1266
    :cond_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    .line 1267
    return-void

    .line 1213
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

    .line 1214
    new-instance v6, Landroid/content/Intent;

    const-string v13, "android.settings.TOOLBOX_LIST"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1215
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v13, 0x30000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1216
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->startActivityOrTask(Landroid/content/Intent;)V

    .line 1217
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v13}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 1219
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v14, "tw_tool_box_floating_x_ratio"

    const/4 v15, 0x0

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v10, v13

    .line 1220
    .local v10, "newCenterX":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v14, "tw_tool_box_floating_y_ratio"

    const/4 v15, 0x0

    const/16 v16, -0x2

    invoke-static/range {v13 .. v16}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v13

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v13, v14

    float-to-int v11, v13

    .line 1221
    .local v11, "newCenterY":I
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v11}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionBySmooth(II)V

    .line 1222
    const/4 v4, 0x1

    .line 1223
    goto/16 :goto_0

    .line 1224
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v10    # "newCenterX":I
    .end local v11    # "newCenterY":I
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

    .line 1225
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v13}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_0

    .line 1227
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    .line 1228
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v13, :cond_1

    .line 1229
    const/4 v9, 0x0

    .line 1230
    .local v9, "needBlock":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->BLOCK_LIST:[Ljava/lang/String;

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v8, :cond_b

    aget-object v3, v2, v5

    .line 1231
    .local v3, "blockPkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_c

    .line 1232
    const/4 v9, 0x1

    .line 1236
    .end local v3    # "blockPkg":Ljava/lang/String;
    :cond_b
    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 1230
    .restart local v3    # "blockPkg":Ljava/lang/String;
    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1239
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v3    # "blockPkg":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "needBlock":Z
    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->DRAG:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-ne v13, v14, :cond_1

    .line 1240
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    goto/16 :goto_0
.end method

.method private playAnimationCollapse()V
    .locals 5

    .prologue
    .line 2086
    iget-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-nez v2, :cond_0

    .line 2096
    :goto_0
    return-void

    .line 2088
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    .line 2089
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    .line 2090
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 2091
    .local v1, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_1

    .line 2094
    .end local v1    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2095
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {p0, v2, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private playAnimationEnter()V
    .locals 1

    .prologue
    .line 2049
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-eqz v0, :cond_0

    .line 2051
    :goto_0
    return-void

    .line 2050
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationExpand()V
    .locals 3

    .prologue
    .line 2072
    iget-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v2, :cond_1

    .line 2083
    :cond_0
    return-void

    .line 2073
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2075
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    .line 2076
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    .line 2077
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    .line 2078
    .local v1, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    instance-of v2, v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;

    if-eqz v2, :cond_2

    .line 2079
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->action:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxAction;

    check-cast v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;

    invoke-interface {v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxToggleAction;->onUpdateToggleStatus()V

    .line 2081
    :cond_2
    iget-object v2, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationFadeIn()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2099
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v0, :cond_0

    .line 2109
    :goto_0
    return-void

    .line 2100
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2101
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2103
    :cond_1
    const-string/jumbo v0, "toolbox"

    const-string/jumbo v1, "playAnimationFadeIn()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2104
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    .line 2105
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v1, v3

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2106
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 2107
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2108
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private playAnimationFadeOut()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 2112
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-eqz v0, :cond_0

    .line 2121
    :goto_0
    return-void

    .line 2113
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2114
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2116
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2117
    const-string/jumbo v0, "toolbox"

    const-string/jumbo v1, "playAnimationFadeOut()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    .line 2119
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x0

    aput v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2120
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationSleep()V
    .locals 4

    .prologue
    .line 2054
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

    .line 2059
    :cond_0
    :goto_0
    return-void

    .line 2055
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2056
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x29b

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2057
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    const v3, 0x3ecccccd    # 0.4f

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2058
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private playAnimationWakeup()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 2062
    iget-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mHiddenToolBox:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2069
    :cond_0
    :goto_0
    return-void

    .line 2063
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2064
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    .line 2065
    .local v0, "alpha":F
    cmpl-float v1, v0, v4

    if-eqz v1, :cond_0

    .line 2066
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2067
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v4, v2, v3

    const/4 v3, 0x1

    aput v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2068
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->reverse()V

    goto :goto_0
.end method

.method private prepareToolBoxLinear()V
    .locals 41

    .prologue
    .line 1467
    const-string/jumbo v3, "toolbox"

    const-string/jumbo v4, "prepareToolBoxLinear()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1469
    new-instance v22, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct/range {v22 .. v22}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    .line 1471
    .local v22, "interpolator":Landroid/view/animation/interpolator/SineInOut80;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1474
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    invoke-virtual {v3}, Lcom/samsung/android/toolbox/TwToolBoxManager;->getToolList()[Ljava/lang/String;

    move-result-object v39

    .line 1475
    .local v39, "tools":[Ljava/lang/String;
    new-instance v38, Ljava/util/ArrayList;

    invoke-direct/range {v38 .. v38}, Ljava/util/ArrayList;-><init>()V

    .line 1476
    .local v38, "toolArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "0"

    move-object/from16 v0, v38

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1477
    move-object/from16 v12, v39

    .local v12, "arr$":[Ljava/lang/String;
    array-length v0, v12

    move/from16 v24, v0

    .local v24, "len$":I
    const/16 v20, 0x0

    .local v20, "i$":I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_0

    aget-object v37, v12, v20

    .local v37, "t":Ljava/lang/String;
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 1478
    .end local v37    # "t":Ljava/lang/String;
    :cond_0
    invoke-virtual/range {v38 .. v38}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    .line 1479
    const/16 v32, 0x0

    .line 1481
    .local v32, "priority":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAllPackages:[Ljava/lang/Object;

    .local v12, "arr$":[Ljava/lang/Object;
    array-length v0, v12

    move/from16 v24, v0

    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_a

    aget-object v28, v12, v20

    .local v28, "obj":Ljava/lang/Object;
    move-object/from16 v29, v28

    .line 1482
    check-cast v29, Ljava/lang/String;

    .line 1483
    .local v29, "pkg":Ljava/lang/String;
    const-string v3, "/"

    move-object/from16 v0, v29

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 1484
    .local v16, "data":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v30, v16, v3

    .line 1485
    .local v30, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v3, v0

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    const-string v9, "00"

    .line 1486
    .local v9, "activityName":Ljava/lang/String;
    :goto_2
    const-string v3, "0"

    move-object/from16 v0, v30

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    .line 1487
    .local v23, "isMainCharactor":Z
    if-eqz v23, :cond_4

    new-instance v25, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    .line 1488
    .local v25, "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :goto_3
    move/from16 v0, v32

    move-object/from16 v1, v25

    iput v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->priority:I

    .line 1490
    new-instance v10, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v10, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$29;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    .line 1506
    .local v10, "animatorListener":Landroid/animation/Animator$AnimatorListener;
    if-eqz v23, :cond_5

    .line 1507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v4, 0x1080cae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 1508
    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    .line 1509
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1510
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1511
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$30;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1575
    :goto_4
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 1576
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    .line 1577
    .local v13, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v23, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_MAIN_ITEM_WIDTH:I

    const/4 v5, 0x1

    invoke-static {v13, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 1580
    .local v14, "bitmapMask":Landroid/graphics/Bitmap;
    :goto_5
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v14}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v34

    .line 1581
    .local v34, "shadow":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    move-object/from16 v0, v34

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1582
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1583
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

    .line 1584
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mXfermode:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1585
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskCanvas:Landroid/graphics/Canvas;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v14, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1586
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMaskPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1587
    move-object/from16 v0, v34

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->shadow:Landroid/graphics/Bitmap;

    .line 1588
    if-eqz v23, :cond_9

    move-object/from16 v26, v25

    .line 1589
    check-cast v26, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    .line 1590
    .local v26, "main":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    move-object/from16 v0, v34

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v26

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;->mainShadow:Landroid/graphics/drawable/BitmapDrawable;

    .line 1596
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "bitmapMask":Landroid/graphics/Bitmap;
    .end local v26    # "main":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;
    .end local v34    # "shadow":Landroid/graphics/Bitmap;
    :cond_1
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mObjects:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1597
    add-int/lit8 v32, v32, 0x1

    .line 1481
    :cond_2
    :goto_7
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 1485
    .end local v9    # "activityName":Ljava/lang/String;
    .end local v10    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    .end local v23    # "isMainCharactor":Z
    .end local v25    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_3
    const/4 v3, 0x1

    aget-object v9, v16, v3

    goto/16 :goto_2

    .line 1487
    .restart local v9    # "activityName":Ljava/lang/String;
    .restart local v23    # "isMainCharactor":Z
    :cond_4
    new-instance v25, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1524
    .restart local v10    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    .restart local v25    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v31, v0

    .line 1525
    .local v31, "pm":Landroid/content/pm/PackageManager;
    const-string v3, "00"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1526
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;

    .line 1532
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnabledPkg(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    if-eqz v3, :cond_2

    .line 1555
    .end local v31    # "pm":Landroid/content/pm/PackageManager;
    :cond_6
    new-instance v11, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v11, v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$31;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;)V

    .line 1565
    .local v11, "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    const/16 v36, 0x0

    .line 1566
    .local v36, "startY":I
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

    .line 1567
    .local v19, "endY":I
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

    .line 1568
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1569
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v10}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1570
    move-object/from16 v0, v25

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->aniExpand:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v11}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1571
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

    .line 1528
    .end local v11    # "animatorUpdateListener":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .end local v19    # "endY":I
    .end local v36    # "startY":I
    .restart local v31    # "pm":Landroid/content/pm/PackageManager;
    :cond_7
    :try_start_1
    new-instance v15, Landroid/content/ComponentName;

    move-object/from16 v0, v30

    invoke-direct {v15, v0, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    .local v15, "cm":Landroid/content/ComponentName;
    move-object/from16 v0, v31

    invoke-virtual {v0, v15}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    move-object/from16 v0, v25

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->background:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_8

    .line 1536
    .end local v15    # "cm":Landroid/content/ComponentName;
    .end local v31    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v18

    .line 1537
    .local v18, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
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

    .line 1539
    const-string v3, "index"

    invoke-virtual {v9, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1541
    :try_start_2
    const-string v3, "index"

    const-string v4, ""

    invoke-virtual {v9, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 1542
    .local v21, "index":I
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->initializeFunctionShortcut(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;I)Z
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v3

    if-nez v3, :cond_6

    goto/16 :goto_7

    .line 1545
    .end local v21    # "index":I
    :catch_1
    move-exception v27

    .line 1546
    .local v27, "nfe":Ljava/lang/NumberFormatException;
    goto/16 :goto_7

    .line 1551
    .end local v18    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v27    # "nfe":Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v18

    .line 1552
    .local v18, "e":Ljava/lang/Exception;
    goto/16 :goto_7

    .line 1577
    .end local v18    # "e":Ljava/lang/Exception;
    .restart local v13    # "bitmap":Landroid/graphics/Bitmap;
    :cond_8
    move-object/from16 v0, p0

    iget v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_ITEM_SIZE:I

    const/4 v5, 0x1

    invoke-static {v13, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    goto/16 :goto_5

    .line 1592
    .restart local v14    # "bitmapMask":Landroid/graphics/Bitmap;
    .restart local v34    # "shadow":Landroid/graphics/Bitmap;
    :cond_9
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_6

    .line 1600
    .end local v9    # "activityName":Ljava/lang/String;
    .end local v10    # "animatorListener":Landroid/animation/Animator$AnimatorListener;
    .end local v13    # "bitmap":Landroid/graphics/Bitmap;
    .end local v14    # "bitmapMask":Landroid/graphics/Bitmap;
    .end local v16    # "data":[Ljava/lang/String;
    .end local v23    # "isMainCharactor":Z
    .end local v25    # "m":Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;
    .end local v28    # "obj":Ljava/lang/Object;
    .end local v29    # "pkg":Ljava/lang/String;
    .end local v30    # "pkgName":Ljava/lang/String;
    .end local v34    # "shadow":Landroid/graphics/Bitmap;
    :cond_a
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    .line 1601
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$32;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$32;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1611
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$33;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$33;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x190

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1623
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    .line 1624
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$34;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$34;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTransparentAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$35;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1655
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_3

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    .line 1656
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$36;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$36;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1666
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSleepAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$37;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1677
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    .line 1678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$38;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$38;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1688
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$39;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$39;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1699
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnterAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1701
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

    .line 1702
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$40;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$40;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1716
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$41;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1727
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    move/from16 v33, v0

    .line 1728
    .local v33, "removeButtonMoveAmount":I
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v33, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v40

    .line 1729
    .local v40, "upAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x96

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1730
    const-wide/16 v3, 0x3c

    move-object/from16 v0, v40

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1731
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$42;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1741
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$43;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$43;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v40

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1752
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v33, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x0

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v17

    .line 1753
    .local v17, "downAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x96

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1754
    const-wide/16 v3, 0x3c

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1755
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$44;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$44;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1765
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$45;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$45;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1776
    const/4 v3, 0x6

    new-array v3, v3, [F

    fill-array-data v3, :array_5

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v35

    .line 1777
    .local v35, "shakeAnimator":Landroid/animation/ValueAnimator;
    const-wide/16 v3, 0x190

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1778
    const-wide/16 v3, 0x3c

    move-object/from16 v0, v35

    invoke-virtual {v0, v3, v4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 1779
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$46;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$46;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1789
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$47;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$47;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1800
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1801
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v40

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1802
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v35

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1803
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1804
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShakeAnimators:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    .line 1806
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    .line 1807
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$48;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$48;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1819
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$49;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1830
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->postInvalidate()V

    .line 1832
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

    .line 1834
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1835
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1837
    return-void

    .line 1508
    nop

    :array_0
    .array-data 4
        0x0
        0x5a
    .end array-data

    .line 1600
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1623
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1655
    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
    .end array-data

    .line 1677
    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 1776
    :array_5
    .array-data 4
        0x0
        0x41400000    # 12.0f
        -0x3ec00000    # -12.0f
        0x41400000    # 12.0f
        -0x3ec00000    # -12.0f
        0x0
    .end array-data

    .line 1806
    :array_6
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private reloadContentObserver()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    const/4 v3, 0x0

    .line 641
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    .line 642
    .local v0, "cr":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 643
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 644
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 645
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 646
    const-string/jumbo v1, "toolbox_apps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 647
    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 648
    const-string/jumbo v1, "touch_exploration_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 649
    const-string v1, "kids_home_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 650
    return-void
.end method

.method private saveCenterPosition()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    .line 2124
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 2125
    .local v1, "w":I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2127
    .local v0, "h":I
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 2128
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 2129
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 2132
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tw_tool_box_floating_x_ratio"

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2133
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "tw_tool_box_floating_y_ratio"

    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    int-to-float v4, v4

    int-to-float v5, v0

    div-float/2addr v4, v5

    invoke-static {v2, v3, v4, v6}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2134
    return-void
.end method

.method private saveDefaultCenterPosition()V
    .locals 10

    .prologue
    const/4 v9, -0x2

    .line 2137
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    if-nez v5, :cond_0

    const/4 v0, 0x0

    .line 2138
    .local v0, "defaultHalfWidth":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v5

    .line 2139
    .local v3, "screenWidth":F
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v5

    .line 2140
    .local v2, "screenHeight":F
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_TOP_PADDING:I

    .line 2141
    .local v4, "topPadding":I
    iget v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->FIXED_START_POSITION_RIGHT_PADDING:I

    .line 2142
    .local v1, "rightPadding":I
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "tw_tool_box_floating_x_ratio"

    int-to-float v7, v0

    sub-float v7, v3, v7

    int-to-float v8, v1

    sub-float/2addr v7, v8

    div-float/2addr v7, v3

    invoke-static {v5, v6, v7, v9}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2143
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v6, "tw_tool_box_floating_y_ratio"

    add-int v7, v0, v4

    int-to-float v7, v7

    div-float/2addr v7, v2

    invoke-static {v5, v6, v7, v9}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    .line 2144
    return-void

    .line 2137
    .end local v0    # "defaultHalfWidth":I
    .end local v1    # "rightPadding":I
    .end local v2    # "screenHeight":F
    .end local v3    # "screenWidth":F
    .end local v4    # "topPadding":I
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

    .prologue
    .line 2272
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$55;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$55;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2286
    return-void
.end method

.method private startActivityOrTask(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2181
    if-nez p1, :cond_0

    .line 2202
    :goto_0
    return-void

    .line 2184
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    .line 2185
    .local v4, "targetPackageName":Ljava/lang/String;
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    const/16 v6, 0x1e

    invoke-virtual {v5, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 2186
    .local v2, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_2

    .line 2187
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2188
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v5, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 2189
    .local v3, "runningPackageName":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2190
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mActivityManager:Landroid/app/ActivityManager;

    iget v6, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/app/ActivityManager;->moveTaskToFront(II)V

    .line 2191
    const-string/jumbo v5, "toolbox"

    const-string/jumbo v6, "moveTaskToFront()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2196
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v2    # "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "runningPackageName":Ljava/lang/String;
    .end local v4    # "targetPackageName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 2200
    :cond_2
    iget-object v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    const/4 v7, -0x2

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, p1, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 2201
    const-string/jumbo v5, "toolbox"

    const-string/jumbo v6, "startActivityAsUser()"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startSmoothMovement()V
    .locals 1

    .prologue
    .line 1330
    const/16 v0, 0xa

    iput v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    .line 1331
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->goToPositionRecursive()V

    .line 1332
    return-void
.end method

.method private stopSmoothMovement()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1335
    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    if-lez v0, :cond_0

    .line 1336
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastX:I

    .line 1337
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveLastY:I

    .line 1338
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTurnOffEffectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 1339
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveCenterPosition()V

    .line 1342
    :cond_0
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursiveRepeatation:I

    .line 1343
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGoToPositionRecursive:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1344
    return-void
.end method

.method private toggleTorch()V
    .locals 2

    .prologue
    .line 2263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getTorchStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.intent.action.ASSISTIVELIGHT_OFF"

    :goto_0
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2264
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2265
    return-void

    .line 2263
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v1, "android.intent.action.ASSISTIVELIGHT_ON"

    goto :goto_0
.end method

.method private updateVisibility()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 610
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "toolbox_onoff"

    const/4 v8, -0x2

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-ne v6, v4, :cond_2

    move v2, v4

    .line 612
    .local v2, "isVisible":Z
    :goto_0
    const/4 v0, 0x1

    .line 617
    .local v0, "floatingStyle":I
    const/4 v1, 0x1

    .line 620
    .local v1, "isFloatingStyle":Z
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isValidUser()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mValidUser:Z

    .line 621
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->getSCoverState()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverOpen:Z

    .line 622
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isEnableFloatingViewer()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    .line 623
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->isDisableFloatingViewer()Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDisableFloatingViewer:Z

    .line 625
    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEnableFloatingViewer:Z

    if-eqz v6, :cond_3

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    .line 627
    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-eqz v4, :cond_4

    move v3, v5

    .line 628
    .local v3, "visibility":I
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_0

    .line 629
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 632
    :cond_0
    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    if-eqz v4, :cond_1

    .line 633
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x104085a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    .line 634
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    const v5, 0x1040b4f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    .line 637
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mVisibleFloatingStyle:Z

    return v4

    .end local v0    # "floatingStyle":I
    .end local v1    # "isFloatingStyle":Z
    .end local v2    # "isVisible":Z
    .end local v3    # "visibility":I
    :cond_2
    move v2, v5

    .line 610
    goto :goto_0

    .restart local v0    # "floatingStyle":I
    .restart local v1    # "isFloatingStyle":Z
    .restart local v2    # "isVisible":Z
    :cond_3
    move v4, v5

    .line 625
    goto :goto_1

    .line 627
    :cond_4
    const/16 v3, 0x8

    goto :goto_2
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 795
    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 798
    move-object/from16 v0, p0

    iget v5, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    .line 800
    .local v5, "longPressPanelPosition":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchMode:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    sget-object v14, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;->POSITIONING:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$TouchMode;

    if-eq v13, v14, :cond_0

    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v13, v13

    if-eq v5, v13, :cond_6

    .line 802
    :cond_0
    if-gez v5, :cond_1

    const/4 v13, 0x0

    int-to-float v14, v5

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 804
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacter:Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxCharacter;

    iget-object v6, v13, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$ToolBoxMenu;->bounds:Landroid/graphics/Rect;

    .line 805
    .local v6, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 806
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 808
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtn:Landroid/graphics/drawable/Drawable;

    .line 809
    .local v2, "editButton":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtn:Landroid/graphics/drawable/Drawable;

    .line 810
    .local v7, "removeButton":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .line 812
    .local v10, "removeNeedAnimating":Z
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

    .line 813
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBgArea:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 814
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnFocused:Landroid/graphics/drawable/Drawable;

    .line 824
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBtnArea:Landroid/graphics/Rect;

    invoke-virtual {v2, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 825
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    invoke-virtual {v7, v13}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 827
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 829
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    if-eqz v13, :cond_a

    .line 830
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgEdit:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v3, v13

    .line 831
    .local v3, "lenEditMsg":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingMsgRemove:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    float-to-int v4, v13

    .line 832
    .local v4, "lenRemoveMsg":I
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

    .line 833
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

    .line 839
    .end local v3    # "lenEditMsg":I
    .end local v4    # "lenRemoveMsg":I
    :goto_1
    if-eqz v10, :cond_b

    .line 840
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    if-nez v13, :cond_3

    .line 841
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    .line 842
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    .line 843
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    .line 844
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    .line 847
    :cond_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnPosition:I

    .line 848
    .local v9, "removeButtonPosition":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAngle:F

    .line 850
    .local v8, "removeButtonAngle":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnArea:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 851
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 853
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-float v11, v13

    .line 854
    .local v11, "rotatePivotX":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnCoverArea:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    int-to-float v12, v13

    .line 856
    .local v12, "rotatePivotY":F
    if-lez v9, :cond_4

    .line 857
    const/4 v13, 0x0

    neg-int v14, v9

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 858
    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 860
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocusedCover:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 861
    if-lez v9, :cond_5

    .line 862
    neg-float v13, v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v11, v12}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 863
    const/4 v13, 0x0

    int-to-float v14, v9

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 871
    .end local v8    # "removeButtonAngle":F
    .end local v9    # "removeButtonPosition":I
    .end local v11    # "rotatePivotX":F
    .end local v12    # "rotatePivotY":F
    :cond_5
    :goto_2
    if-gez v5, :cond_6

    const/4 v13, 0x0

    neg-int v14, v5

    int-to-float v14, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 876
    .end local v2    # "editButton":Landroid/graphics/drawable/Drawable;
    .end local v6    # "r":Landroid/graphics/Rect;
    .end local v7    # "removeButton":Landroid/graphics/drawable/Drawable;
    .end local v10    # "removeNeedAnimating":Z
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAddedBoxTailHeight:I

    sub-int/2addr v14, v15

    iput v14, v13, Landroid/graphics/Rect;->bottom:I

    .line 877
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

    .line 880
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMainCharacterDegree:I

    if-gtz v13, :cond_7

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mBoxAnimating:Z

    if-eqz v13, :cond_8

    .line 881
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 882
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    const/high16 v14, 0x437f0000    # 255.0f

    move-object/from16 v0, p0

    iget v15, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpandProgressValue:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 883
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mFloatingBoxBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 887
    :cond_8
    move-object/from16 v0, p0

    iget v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterX:I

    move-object/from16 v0, p0

    iget v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCenterY:I

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v13, v14, v15}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->drawToolBox(Landroid/graphics/Canvas;IIZ)V

    .line 889
    return-void

    .line 817
    .restart local v2    # "editButton":Landroid/graphics/drawable/Drawable;
    .restart local v6    # "r":Landroid/graphics/Rect;
    .restart local v7    # "removeButton":Landroid/graphics/drawable/Drawable;
    .restart local v10    # "removeNeedAnimating":Z
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

    .line 818
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBgArea:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 819
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 820
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBtnFocused:Landroid/graphics/drawable/Drawable;

    .line 821
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 835
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

    .line 836
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

    .line 866
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveAnimating:Z

    if-eqz v13, :cond_5

    .line 867
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelRemoveBtnAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_2
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/4 v5, 0x0

    .line 654
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 656
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    .line 657
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {p0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .line 659
    .local v2, "handler":Landroid/os/Handler;
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$9;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mShowToolFloatingObserver:Landroid/database/ContentObserver;

    .line 689
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$10;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$10;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    .line 696
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$11;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    .line 704
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$12;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$12;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    .line 712
    new-instance v3, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$13;

    invoke-direct {v3, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$13;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    .line 721
    const-string/jumbo v3, "toolbox_apps"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 722
    const-string v3, "device_provisioned"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDeviceProvisionedObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 723
    const-string/jumbo v3, "touch_exploration_enabled"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExploreByTouchModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 724
    const-string v3, "kids_home_mode"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mKidsModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 726
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 727
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 728
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 731
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCheckEnvironment:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 732
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mUpdateVisibility:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 733
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->updateVisibility()Z

    .line 736
    iget-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    if-eqz v3, :cond_0

    .line 737
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationFadeOutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 742
    :goto_0
    return-void

    .line 739
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationEnterRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 746
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 748
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v2, v6, Landroid/content/res/Configuration;->orientation:I

    .line 749
    .local v2, "orientation":I
    iget v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 750
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    .line 751
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    .line 752
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v7, "tw_tool_box_floating_x_ratio"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v6, v7, v8, v9}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v3

    .line 753
    .local v3, "ratioX":F
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-nez v6, :cond_0

    .line 754
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->saveDefaultCenterPosition()V

    .line 756
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    .line 763
    .end local v3    # "ratioX":F
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->playAnimationCollapse()V

    .line 765
    iget v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v6, v6

    iput v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    .line 766
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingBgArea:Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget v9, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    invoke-virtual {v6, v7, v8, p1, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 768
    div-int/lit8 v0, p1, 0x2

    .line 770
    .local v0, "halfWidth":I
    iget-boolean v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mIsTablet:Z

    if-eqz v6, :cond_3

    .line 771
    const/high16 v6, 0x41e00000    # 28.0f

    iget v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 772
    .local v5, "topEmptySpace":I
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingEditBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v1, v0, v6

    .line 773
    .local v1, "leftCenterX":I
    iget-object v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mEndFloatingRemoveBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v4, v0, v6

    .line 775
    .local v4, "rightCenterX":I
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

    .line 776
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

    .line 778
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

    .line 779
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

    .line 791
    :goto_1
    return-void

    .line 758
    .end local v0    # "halfWidth":I
    .end local v1    # "leftCenterX":I
    .end local v4    # "rightCenterX":I
    .end local v5    # "topEmptySpace":I
    :cond_2
    iget v6, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    if-eq v6, v2, :cond_1

    .line 759
    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLastOrientation:I

    .line 760
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->loadCenterPosition()V

    goto/16 :goto_0

    .line 781
    .restart local v0    # "halfWidth":I
    :cond_3
    const/high16 v6, 0x40a00000    # 5.0f

    iget v7, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 782
    .restart local v5    # "topEmptySpace":I
    div-int/lit8 v6, v0, 0x2

    sub-int v1, v0, v6

    .line 783
    .restart local v1    # "leftCenterX":I
    div-int/lit8 v6, v0, 0x2

    add-int v4, v0, v6

    .line 785
    .restart local v4    # "rightCenterX":I
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

    .line 786
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

    .line 788
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

    .line 789
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
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x3

    const/4 v4, 0x1

    .line 1018
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1021
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1028
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v1, v5

    iput v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    .line 1029
    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v2, v5

    iput v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    .line 1031
    .local v2, "y":I
    if-nez v0, :cond_0

    .line 1032
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchDown(II)V

    .line 1035
    :cond_0
    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTracking:Z

    if-eqz v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    if-nez v5, :cond_1

    iget-boolean v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mMovingByAnimation:Z

    if-eqz v5, :cond_5

    .line 1037
    :cond_1
    if-eq v0, v4, :cond_2

    if-ne v0, v6, :cond_4

    .line 1039
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mTouchLongClickRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1040
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelPosition:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->LONG_PRESS_PANEL_HEIGHT_PX:I

    neg-int v5, v5

    if-ne v4, v5, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mLongPressPanelShowing:Z

    if-eqz v4, :cond_4

    .line 1041
    :cond_3
    iget v4, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsX:I

    iget v5, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mAbsY:I

    invoke-direct {p0, v6, v4, v5}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    .line 1042
    const-string/jumbo v4, "toolbox"

    const-string v5, "Recovered LongPressPanel"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_4
    :goto_0
    :pswitch_1
    return v3

    .line 1048
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :cond_5
    const/4 v3, 0x2

    if-ne v0, v3, :cond_7

    .line 1049
    invoke-direct {p0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchMove(II)V

    :cond_6
    :goto_1
    move v3, v4

    .line 1055
    goto :goto_0

    .line 1051
    :cond_7
    if-eq v0, v4, :cond_8

    if-ne v0, v6, :cond_6

    .line 1052
    :cond_8
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->onTouchUpOrCancel(III)V

    goto :goto_1

    .line 1021
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
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 2161
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 2163
    if-nez p2, :cond_0

    .line 2164
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2165
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationSleepRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2166
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationWakeupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 2168
    :cond_0
    return-void
.end method

.method public registerCallback()V
    .locals 4

    .prologue
    .line 293
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    invoke-virtual {v2, v3}, Lcom/samsung/android/toolbox/TwToolBoxManager;->registerCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z

    .line 295
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v2, v3}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 299
    :cond_0
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 300
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 301
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipVisible:Z

    .line 304
    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v1, "sipIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "ResponseAxT9Info"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 306
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_2

    .line 307
    new-instance v2, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer$2;-><init>(Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;)V

    iput-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    .line 331
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 333
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->prepareToolBoxLinear()V

    .line 334
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 499
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReseting:Z

    .line 500
    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mPlayAnimationCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 501
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mReset:Ljava/lang/Runnable;

    iget-boolean v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mExpanded:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x1f4

    :goto_0
    invoke-virtual {p0, v2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 502
    return-void

    .line 501
    :cond_1
    const-wide/16 v0, 0xa

    goto :goto_0
.end method

.method public unregisterCallback()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mManager:Lcom/samsung/android/toolbox/TwToolBoxManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCallbcak:Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/toolbox/TwToolBoxManager;->unregisterCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z

    .line 339
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 344
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 346
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->mSipReceiver:Landroid/content/BroadcastReceiver;

    .line 348
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxFloatingViewer;->clearToolBox()V

    .line 349
    return-void
.end method
