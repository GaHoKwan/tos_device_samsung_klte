.class public final Lcom/samsung/android/airbutton/AirButtonImpl;
.super Ljava/lang/Object;
.source "AirButtonImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;,
        Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    }
.end annotation


# static fields
.field private static final ACTION_MULTI_WINDOW:Ljava/lang/String; = "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

.field private static final AIR_VIEW_MODE:Ljava/lang/String; = "air_view_mode"

.field private static final BROADCAST_ALARM:Ljava/lang/String; = "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

.field private static final BROADCAST_SCOVER:Ljava/lang/String; = "com.samsung.cover.OPEN"

.field public static final DATA_TYPE_COMBINATION:I = 0x3

.field public static final DATA_TYPE_DRAWABLE:I = 0x2

.field public static final DATA_TYPE_STRING:I = 0x1

.field public static final DEFAULT_CLIPED_TEXT_ADAPTER:I = 0x1

.field public static final DEFAULT_FREEQUENT_CONTACT_ADAPTER:I = 0x2

.field public static final DEFAULT_RECENT_MEDIA_ADAPTER:I = 0x3

.field public static final DEFAULT_RECENT_SNOTE:I = 0x4

.field public static final DIRECTION_AUTO:I = -0x1

.field public static final DIRECTION_LEFT:I = 0x3

.field public static final DIRECTION_LOWER:I = 0x2

.field public static final DIRECTION_RIGHT:I = 0x4

.field public static final DIRECTION_UPPER:I = 0x1

.field public static final GRAVITY_AUTO:I = -0x1

.field public static final GRAVITY_BOTTOM:I = 0x2

.field public static final GRAVITY_HOVER_POINT:I = 0x5

.field public static final GRAVITY_LEFT:I = 0x3

.field public static final GRAVITY_RIGHT:I = 0x4

.field public static final GRAVITY_TOP:I = 0x1

.field private static final IS_KEYPAD_VISIBLE:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field public static final MENU_ITEM_HEIGHT:I = 0x48

.field private static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field public static final STATE_DISMISS:I = 0x3

.field public static final STATE_HIDE:I = 0x2

.field public static final STATE_SHOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AirButtonImpl"

.field public static final UI_TYPE_GLOBAL:I = 0x3

.field public static final UI_TYPE_LIST:I = 0x2

.field public static final UI_TYPE_MENU:I = 0x1

.field public static final UI_TYPE_QUICK_COMMAND:I = 0x4

.field private static final URI_AIR_BUTTON_ONOFF:Ljava/lang/String; = "air_button_onoff"

.field private static final URI_AIR_VIEW_ONOFF:Ljava/lang/String; = "air_view_master_onoff"

.field private static mAirButtonAnimationViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

.field private mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

.field private mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

.field private mAirButtonViewCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

.field private mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mAttrs:Lcom/samsung/android/airbutton/Attributes;

.field private mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

.field private mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;

.field private mCoverManager:Lcom/samsung/android/cover/CoverManager;

.field private mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

.field private mDataType:I

.field protected mDensity:F

.field private mHandler:Landroid/os/Handler;

.field private mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

.field private mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected mHoverPressedPointX:F

.field protected mHoverPressedPointY:F

.field private mIsAirButtonAttached:Z

.field private mIsEditTextParentView:Z

.field private mIsEnabled:Z

.field private mIsHoverAnimationViewAttached:Z

.field private mIsHoverEnter:Z

.field private mIsHoverPointerEnabled:Z

.field private mIsSpenDetached:Z

.field private mIsToastShown:Z

.field private mIsWidgetDismissed:Z

.field private mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

.field private mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

.field private mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

.field private mKeypadHideRunnable:Ljava/lang/Runnable;

.field private mMultiWindowIntentFilter:Landroid/content/IntentFilter;

.field private mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

.field private mParentView:Landroid/view/View;

.field protected mParentViewHeight:I

.field private mParentViewHoverListener:Landroid/view/View$OnHoverListener;

.field protected mParentViewWidth:I

.field protected mParentViewX:I

.field protected mParentViewY:I

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRootViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field protected mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

.field private mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

.field protected mStatusbarHeight:I

.field private mUIType:I

.field private mWM:Landroid/view/WindowManager;

.field protected mWindowHeight:I

.field protected mWindowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "UIType"    # I
    .param p3, "enabled"    # Z

    .prologue
    const/4 v4, 0x4

    .line 227
    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 229
    if-eq p2, v4, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 230
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 232
    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p4, "UIType"    # I
    .param p5, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    .line 133
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mRootViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 134
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 135
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    .line 137
    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    .line 138
    iput v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    .line 139
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 140
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    .line 141
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 142
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 143
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .line 144
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .line 145
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    .line 146
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 147
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    .line 148
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 155
    iput v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    .line 156
    iput v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    .line 157
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    .line 158
    iput v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    .line 159
    iput v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 160
    iput v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    .line 161
    iput v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    .line 162
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    .line 168
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    .line 169
    iput v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    .line 170
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    .line 176
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEditTextParentView:Z

    .line 177
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    .line 178
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    .line 179
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    .line 180
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    .line 181
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverEnter:Z

    .line 182
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    .line 183
    iput-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    .line 184
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 192
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHandler:Landroid/os/Handler;

    .line 193
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    .line 194
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    .line 202
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    .line 204
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    .line 211
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    .line 212
    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    .line 588
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$2;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    .line 614
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$3;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHoverListener:Landroid/view/View$OnHoverListener;

    .line 1314
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$5;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeypadHideRunnable:Ljava/lang/Runnable;

    .line 1452
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$7;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$7;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1462
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$8;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$8;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    .line 242
    if-nez p2, :cond_0

    .line 243
    const-string v0, "AirButtonImpl"

    const-string v1, "Parent view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    if-nez p3, :cond_1

    .line 246
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "adapter is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 250
    sget-object v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 251
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    .line 253
    :cond_2
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-direct {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    .line 254
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    new-instance v1, Lcom/samsung/android/airbutton/AirButtonImpl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$1;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->setOnSideButtonClickedListener(Lcom/samsung/android/airbutton/AirButtonSideButtonController$OnSideButtonClickedListener;)V

    .line 262
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 263
    new-instance v0, Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/cover/CoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    .line 266
    :cond_3
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->setParentView(Landroid/view/View;)V

    .line 267
    invoke-virtual {p0, p3}, Lcom/samsung/android/airbutton/AirButtonImpl;->setAdapter(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V

    .line 268
    iput p4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    .line 269
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 270
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initSideButtonState()V

    .line 271
    :cond_4
    iput-boolean p5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    .line 273
    invoke-direct {p0, p5}, Lcom/samsung/android/airbutton/AirButtonImpl;->init(Z)V

    .line 274
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createQuickCommandOnItemSelector()V

    .line 275
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z

    .prologue
    .line 223
    const/4 v2, 0x0

    new-instance v3, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-direct {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;-><init>()V

    const/4 v4, 0x3

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 224
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;I)V
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "UIType"    # I

    .prologue
    .line 234
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V
    .locals 6
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .param p3, "UIType"    # I
    .param p4, "enabled"    # Z

    .prologue
    .line 238
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/airbutton/AirButtonImpl;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;IZ)V

    .line 239
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/airbutton/AirButtonImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/samsung/android/airbutton/AirButtonImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/airbutton/AirButtonImpl;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeypadHideRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/samsung/android/airbutton/AirButtonImpl;)Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/samsung/android/airbutton/AirButtonImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/airbutton/AirButtonImpl;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private broadcastAirButtonShowState(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    .line 708
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 709
    .local v0, "airButtonIntent":Landroid/content/Intent;
    const-string v1, "com.sec.android.intent.action.AIR_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string v1, "isShow"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 712
    const-string v1, "AirButtonImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastAirButtonShowState() isShow="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 715
    return-void
.end method

.method private callStateListener(I)V
    .locals 5
    .param p1, "state"    # I

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 952
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    if-nez v1, :cond_1

    .line 973
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    if-ne p1, v2, :cond_3

    .line 956
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;->onShow()V

    .line 962
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    instance-of v1, v1, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;

    if-eqz v1, :cond_0

    .line 963
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    check-cast v0, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;

    .line 966
    .local v0, "stateChangedListenerImpl":Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
    if-ne p1, v2, :cond_5

    .line 967
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;->onShow(Landroid/view/View;)V

    goto :goto_0

    .line 957
    .end local v0    # "stateChangedListenerImpl":Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
    :cond_3
    if-ne p1, v3, :cond_4

    .line 958
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;->onHide()V

    goto :goto_1

    .line 959
    :cond_4
    if-ne p1, v4, :cond_2

    .line 960
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    invoke-interface {v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;->onDismiss()V

    goto :goto_1

    .line 968
    .restart local v0    # "stateChangedListenerImpl":Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;
    :cond_5
    if-ne p1, v3, :cond_6

    .line 969
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;->onHide(Landroid/view/View;)V

    goto :goto_0

    .line 970
    :cond_6
    if-ne p1, v4, :cond_0

    .line 971
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListenerImpl;->onDismiss(Landroid/view/View;)V

    goto :goto_0
.end method

.method private createAndAttachHoverAnimationView()V
    .locals 4

    .prologue
    .line 428
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 454
    :goto_0
    return-void

    .line 431
    :cond_0
    monitor-enter p0

    .line 432
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->removeAllHoverAnimationViews()V

    .line 434
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v1, :cond_2

    .line 435
    :cond_1
    monitor-exit p0

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 437
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    if-nez v1, :cond_3

    .line 438
    new-instance v1, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;-><init>(Landroid/view/View;F)V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    .line 440
    :cond_3
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initHoverAnimationViewLayoutParams()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 444
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 451
    const/4 v1, 0x1

    :try_start_3
    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    .line 452
    const-string v1, "AirButtonImpl"

    const-string v2, "Hover animation view attached"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    monitor-exit p0

    goto :goto_0

    .line 445
    :catch_0
    move-exception v0

    .line 446
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v1, "AirButtonImpl"

    const-string v2, "Your parent view token is wrong or removed. Please check it"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 448
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private createAndInitAirButtonView(Landroid/view/View;)Z
    .locals 4
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    .line 457
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->initWidgetLocationBasedOnView(Landroid/view/View;)V

    .line 459
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v1, 0x258

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 461
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, 0x3

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->maxDisplayItemCnt:I

    .line 476
    :cond_0
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;Lcom/samsung/android/airbutton/Attributes;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    .line 477
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->getAirButtonView()Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    .line 479
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-nez v0, :cond_1

    .line 480
    const-string v0, "AirButtonImpl"

    const-string v1, "Cannot create AirButton view"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/4 v0, 0x0

    .line 489
    :goto_0
    return v0

    .line 484
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createAndRegisterReceivers()V

    .line 486
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    .line 487
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewCallback:Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setAirButtonViewCallback(Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;)V

    .line 489
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createAndRegisterReceivers()V
    .locals 2

    .prologue
    .line 1044
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createConfigurationChangedReceiver()V

    .line 1045
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->registerConfigurationChangeReceiver()V

    .line 1047
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1048
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createKeypadHideReceiver()V

    .line 1049
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->registerKeypadHideReceiver()V

    .line 1053
    :cond_0
    return-void
.end method

.method private createConfigurationChangedReceiver()V
    .locals 3

    .prologue
    .line 1362
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 1363
    new-instance v1, Lcom/samsung/android/airbutton/AirButtonImpl$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$6;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1390
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    if-nez v1, :cond_1

    .line 1391
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    .line 1392
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1393
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1394
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1395
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "com.samsung.cover.OPEN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1397
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    .line 1398
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1399
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    const/16 v2, 0x3e7

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1402
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 1404
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1405
    .local v0, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_3

    .line 1406
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1410
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v1, :cond_4

    .line 1411
    const-string v1, "AirButtonImpl"

    const-string/jumbo v2, "registerListener mCoverStateListener"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/cover/CoverManager;->registerListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 1415
    .end local v0    # "tmgr":Landroid/telephony/TelephonyManager;
    :cond_4
    return-void
.end method

.method private createKeypadHideReceiver()V
    .locals 2

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1295
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$4;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    .line 1308
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 1309
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    .line 1310
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "ResponseAxT9Info"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1312
    :cond_1
    return-void
.end method

.method private createMultiWindowReceiver()V
    .locals 2

    .prologue
    .line 1479
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1480
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$9;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$9;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    if-nez v0, :cond_1

    .line 1492
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    .line 1493
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    const-string v1, "com.sec.android.action.NOTIFY_SPLIT_WINDOWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1495
    :cond_1
    return-void
.end method

.method private createQuickCommandOnItemSelector()V
    .locals 2

    .prologue
    .line 1523
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1610
    :goto_0
    return-void

    .line 1526
    :cond_0
    new-instance v0, Lcom/samsung/android/airbutton/AirButtonImpl$10;

    invoke-direct {v0, p0}, Lcom/samsung/android/airbutton/AirButtonImpl$10;-><init>(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method private getAirButtonView()Lcom/samsung/android/airbutton/view/AbsAirButtonView;
    .locals 5

    .prologue
    .line 493
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v0, :cond_0

    .line 494
    const/4 v0, 0x0

    .line 503
    :goto_0
    return-object v0

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 497
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/airbutton/view/AirButtonGlobalMenuView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;Z)V

    goto :goto_0

    .line 498
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 499
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonQuickCommandView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 500
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    if-eqz v0, :cond_3

    .line 501
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonBounceListView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 503
    :cond_3
    new-instance v0, Lcom/samsung/android/airbutton/view/AirButtonListView;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapterWrapper:Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/airbutton/view/AirButtonListView;-><init>(Landroid/content/Context;Lcom/samsung/android/airbutton/AirButtonAdapterWrapper;Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0
.end method

.method private init(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 293
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    .line 296
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initScreenSize()V

    .line 297
    invoke-direct {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->initWithAdapter(Z)V

    .line 298
    return-void
.end method

.method private initAirButtonViewLayoutParams()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 402
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 404
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 405
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 406
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v4, :cond_4

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x831

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 408
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 412
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 413
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 414
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 417
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initScreenSize()V

    .line 418
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setStatusBarHeight()V

    .line 419
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v4, :cond_5

    .line 420
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 423
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 424
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 425
    return-void

    .line 410
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    .line 421
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 422
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    goto :goto_1
.end method

.method private initDataType()V
    .locals 3

    .prologue
    .line 337
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-nez v1, :cond_0

    .line 355
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getItem(I)Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;

    move-result-object v0

    .line 343
    .local v0, "firstItem":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 344
    const/4 v1, 0x3

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    .line 353
    .end local v0    # "firstItem":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initParentViewData()V

    .line 354
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->setAttributes(Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 345
    .restart local v0    # "firstItem":Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;
    :cond_2
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 346
    const/4 v1, 0x2

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    goto :goto_1

    .line 347
    :cond_3
    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter$AirButtonItem;->getDescription()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 348
    const/4 v1, 0x1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    goto :goto_1

    .line 350
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "AirButtonItem is empty."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private initHoverAnimationViewLayoutParams()V
    .locals 6

    .prologue
    .line 372
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v3, :cond_0

    .line 397
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e005d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 376
    .local v0, "hoverAnimationViewSize":I
    int-to-float v3, v0

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 377
    .local v1, "pixelHoverAnimationViewSize":I
    const/4 v3, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    .line 378
    .local v2, "viewLocation":[I
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 382
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setStatusBarHeight()V

    .line 384
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 385
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 386
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x3eb

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 387
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v4

    iput-object v4, v3, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 388
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 389
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 390
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v4, v1

    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 391
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 392
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 393
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 395
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    aget v4, v2, v4

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 396
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x1

    aget v4, v2, v4

    iget v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    sub-int/2addr v4, v5

    div-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    goto/16 :goto_0

    .line 377
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initParentViewData()V
    .locals 2

    .prologue
    .line 358
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 369
    :goto_0
    return-void

    .line 361
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    .line 362
    .local v0, "viewLocation":[I
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 363
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    .line 364
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 365
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    .line 366
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    goto :goto_0

    .line 361
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private initScreenSize()V
    .locals 2

    .prologue
    .line 313
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 314
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 316
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    .line 317
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    .line 318
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    .line 319
    return-void
.end method

.method private initWithAdapter(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 301
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setAttributes(Lcom/samsung/android/airbutton/Attributes;)V

    .line 303
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 304
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->enable()V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v0, :cond_0

    .line 306
    if-eqz p1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->enable()V

    goto :goto_0
.end method

.method private isVzwSetupRunning()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 719
    const-string v1, "VZW"

    const-string v2, "OPEN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 720
    const-string/jumbo v1, "persist.sys.vzw_setup_running"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 721
    .local v0, "isVzwSetupRunning":Z
    const-string v1, "AirButtonImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Verizon Setup Wizard is Running ?? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    .end local v0    # "isVzwSetupRunning":Z
    :cond_0
    return v0
.end method

.method private registerConfigurationChangeReceiver()V
    .locals 3

    .prologue
    .line 1418
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1431
    :goto_0
    return-void

    .line 1422
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1427
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1428
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedScreenOffIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1429
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1423
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private registerKeypadHideReceiver()V
    .locals 3

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1344
    :goto_0
    return-void

    .line 1336
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1341
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1342
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1337
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private registerMultiWindowReceiver()V
    .locals 3

    .prologue
    .line 1498
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1510
    :goto_0
    return-void

    .line 1502
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1507
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1508
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1503
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private removeAllHoverAnimationViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1006
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1019
    :cond_0
    return-void

    .line 1009
    :cond_1
    const-string v1, "AirButtonImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remained animation view size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    const/4 v0, 0x0

    .local v0, "idx":I
    :goto_0
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1012
    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1017
    :goto_1
    sget-object v1, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonAnimationViewList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1010
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1013
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private setStatusBarHeight()V
    .locals 3

    .prologue
    .line 322
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    .line 324
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    .line 326
    .local v0, "wm":Landroid/view/IWindowManager;
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/view/IWindowManager;->isStatusBarVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :cond_0
    :goto_0
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    .line 333
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    iput v2, v1, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    .line 334
    return-void

    .line 329
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setWidgetDirection()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 1146
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1158
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 1150
    .local v1, "upperSpace":I
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 1152
    .local v0, "lowerSpace":I
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v2, v5, :cond_0

    .line 1153
    if-le v1, v0, :cond_2

    .line 1154
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x1

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto :goto_0

    .line 1156
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v5, v2, Lcom/samsung/android/airbutton/Attributes;->direction:I

    goto :goto_0
.end method

.method private setWidgetPosition()V
    .locals 5

    .prologue
    .line 1133
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v2, :cond_1

    .line 1143
    :cond_0
    :goto_0
    return-void

    .line 1136
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    .line 1137
    .local v1, "upperSpace":I
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    add-int/2addr v3, v4

    sub-int v0, v2, v3

    .line 1139
    .local v0, "lowerSpace":I
    if-ge v1, v0, :cond_2

    .line 1140
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x2

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_0

    .line 1142
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v3, 0x1

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_0
.end method

.method private showEmptyText()V
    .locals 3

    .prologue
    .line 278
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-nez v1, :cond_0

    .line 290
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getEmptyText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 283
    .local v0, "emptyText":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    if-nez v1, :cond_1

    .line 284
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    .line 285
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 287
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_2

    .line 288
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 289
    :cond_2
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    goto :goto_0
.end method

.method private unregisterConfigurationChangeReceiver()V
    .locals 3

    .prologue
    .line 1434
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 1450
    :cond_0
    :goto_0
    return-void

    .line 1438
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1442
    :goto_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1444
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1445
    .local v0, "tmgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 1446
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    goto :goto_0

    .line 1439
    .end local v0    # "tmgr":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method private unregisterKeypadHideReceiver()V
    .locals 2

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1354
    :goto_0
    return-void

    .line 1351
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mKeyboardHideReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1352
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unregisterMultiWindowReceiver()V
    .locals 2

    .prologue
    .line 1513
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 1520
    :goto_0
    return-void

    .line 1517
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mMultiWindowReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1518
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private unregisterReceivers()V
    .locals 2

    .prologue
    .line 1056
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 1057
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unregisterConfigurationChangeReceiver()V

    .line 1062
    :goto_0
    return-void

    .line 1059
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unregisterKeypadHideReceiver()V

    goto :goto_0
.end method


# virtual methods
.method protected adjustMenuItemXPosition()V
    .locals 7

    .prologue
    .line 564
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-nez v3, :cond_1

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v4}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v4

    mul-int v2, v3, v4

    .line 568
    .local v2, "totalWidgetWidth":I
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->x:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int/lit8 v4, v4, 0x2

    sub-int v0, v3, v4

    .line 570
    .local v0, "outOfXBoundary":I
    if-ltz v0, :cond_0

    .line 573
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    div-int v1, v0, v3

    .line 574
    .local v1, "outOfXBoundaryItemCnt":I
    add-int/lit8 v1, v1, 0x1

    .line 576
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 577
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 579
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v1, v3, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    .line 580
    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    iget-object v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v5, v5, Lcom/samsung/android/airbutton/Attributes;->headItemIdx:I

    iget-object v6, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v6, v6, Lcom/samsung/android/airbutton/Attributes;->itemSizePixel:I

    mul-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    goto :goto_0
.end method

.method public disable()V
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 914
    :goto_0
    return-void

    .line 913
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnAirButtonHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method public dismiss()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 875
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    .line 877
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    .line 878
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 879
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->disable()V

    .line 882
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_0

    .line 883
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onDismiss(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 888
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unlinkWithParentView()V

    .line 889
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    .line 890
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 891
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    .line 892
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 893
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 894
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .line 895
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .line 897
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    .line 899
    const-string v1, "AirButtonImpl"

    const-string v2, "dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    return-void

    .line 884
    :catch_0
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public enable()V
    .locals 2

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 907
    :cond_0
    :goto_0
    return-void

    .line 906
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHoverListener:Landroid/view/View$OnHoverListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnAirButtonHoverListener(Landroid/view/View$OnHoverListener;)V

    goto :goto_0
.end method

.method public getAdapter()Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    return-object v0
.end method

.method public getAttributes()Lcom/samsung/android/airbutton/Attributes;
    .locals 1

    .prologue
    .line 1161
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v0, :cond_0

    .line 1162
    new-instance v0, Lcom/samsung/android/airbutton/Attributes;

    invoke-direct {v0}, Lcom/samsung/android/airbutton/Attributes;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v0

    return-object v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    return v0
.end method

.method public getGravity()I
    .locals 1

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v0, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    return v0
.end method

.method public getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    return-object v0
.end method

.method public hide()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 841
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-nez v0, :cond_0

    .line 872
    :goto_0
    return-void

    .line 844
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->unregisterReceivers()V

    .line 847
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    if-eqz v0, :cond_1

    .line 848
    const-string v0, "AirButtonImpl"

    const-string/jumbo v1, "unregisterListener mCoverStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverManager:Lcom/samsung/android/cover/CoverManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mCoverStateListener:Lcom/samsung/android/cover/CoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/cover/CoverManager;->unregisterListener(Lcom/samsung/android/cover/CoverManager$StateListener;)V

    .line 853
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-eqz v0, :cond_2

    .line 854
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 858
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-eqz v0, :cond_3

    .line 859
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    invoke-virtual {v0, v3}, Lcom/samsung/android/airbutton/view/AbsAirButtonView;->setAirButtonViewCallback(Lcom/samsung/android/airbutton/view/AbsAirButtonView$AirButtonViewCallback;)V

    .line 860
    iput-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    .line 863
    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    .line 865
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v0, :cond_4

    .line 866
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 867
    :cond_4
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    .line 869
    invoke-direct {p0, v2}, Lcom/samsung/android/airbutton/AirButtonImpl;->broadcastAirButtonShowState(Z)V

    .line 871
    const-string v0, "AirButtonImpl"

    const-string v1, "hided"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 855
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public hideHoverPointer()V
    .locals 2

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    if-nez v0, :cond_1

    .line 949
    :cond_0
    :goto_0
    return-void

    .line 938
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->hideAnimationView()V

    .line 941
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    .line 947
    const-string v0, "AirButtonImpl"

    const-string v1, "Hover animation view detached"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 942
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public initSideButtonState()V
    .locals 2

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->resetVariables(Z)V

    .line 1067
    :cond_0
    return-void
.end method

.method protected initWidgetLocationBasedOnView(Landroid/view/View;)V
    .locals 8
    .param p1, "parentView"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x5

    .line 507
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v2}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 509
    if-nez p1, :cond_2

    .line 510
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v2, v4, :cond_1

    .line 511
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    float-to-int v4, v4

    iput v4, v3, Lcom/samsung/android/airbutton/Attributes;->x:I

    iput v4, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 512
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    float-to-int v4, v4

    iput v4, v3, Lcom/samsung/android/airbutton/Attributes;->y:I

    iput v4, v2, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 561
    :cond_1
    :goto_0
    return-void

    .line 518
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setWidgetPosition()V

    .line 519
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setWidgetDirection()V

    .line 521
    const/4 v0, 0x0

    .line 522
    .local v0, "widgetLocationX":I
    const/4 v1, 0x0

    .line 524
    .local v1, "widgetLocationY":I
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v5, :cond_3

    .line 525
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    float-to-int v3, v3

    add-int v0, v2, v3

    .line 533
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v2, Lcom/samsung/android/airbutton/Attributes;->x:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 535
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v5, :cond_6

    .line 536
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    float-to-int v3, v3

    add-int v1, v2, v3

    .line 544
    :goto_2
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    add-int/2addr v3, v1

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 545
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    iget-object v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v4, v4, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 549
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->x:I

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->xPixel:I

    .line 550
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v3, v3, Lcom/samsung/android/airbutton/Attributes;->y:I

    iput v3, v2, Lcom/samsung/android/airbutton/Attributes;->yPixel:I

    .line 552
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v5, :cond_1

    .line 553
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->y:I

    int-to-float v2, v2

    const/high16 v3, 0x42900000    # 72.0f

    iget v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    mul-float/2addr v3, v4

    cmpl-float v2, v2, v3

    if-lez v2, :cond_9

    .line 554
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v6, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_0

    .line 526
    :cond_3
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v3, :cond_4

    .line 527
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    goto :goto_1

    .line 528
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v4, :cond_5

    .line 529
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    add-int v0, v2, v3

    goto :goto_1

    .line 531
    :cond_5
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int v0, v2, v3

    goto :goto_1

    .line 537
    :cond_6
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v6, :cond_7

    .line 538
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    goto :goto_2

    .line 539
    :cond_7
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v2, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    if-ne v2, v7, :cond_8

    .line 540
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    add-int v1, v2, v3

    goto :goto_2

    .line 542
    :cond_8
    iget v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iget v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    div-int/lit8 v3, v3, 0x2

    add-int v1, v2, v3

    goto :goto_2

    .line 556
    :cond_9
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdjustedAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v7, v2, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto/16 :goto_0
.end method

.method public isAirButtonSettingEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 976
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "air_button_onoff"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 980
    .local v0, "airButtonOnOff":I
    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isBounceEffectEnabled()Z
    .locals 1

    .prologue
    .line 1218
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    return v0
.end method

.method public isCoverViewOpened()Z
    .locals 5

    .prologue
    .line 993
    const-string/jumbo v3, "window"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 994
    .local v2, "windowManager":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 995
    .local v1, "isCoverOpen":Z
    if-eqz v2, :cond_0

    .line 997
    :try_start_0
    invoke-interface {v2}, Landroid/view/IWindowManager;->isCoverOpen()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1002
    :cond_0
    :goto_0
    return v1

    .line 998
    :catch_0
    move-exception v0

    .line 999
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "AirButtonImpl"

    const-string/jumbo v4, "windowManager.isCoverOpen() failed :"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1084
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    return v0
.end method

.method public isHoverPointerEnabled()Z
    .locals 1

    .prologue
    .line 1234
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    return v0
.end method

.method public isHoverPointerShowing()Z
    .locals 1

    .prologue
    .line 1226
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    return v0
.end method

.method public isMultiSelectionEnabled()Z
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    return v0
.end method

.method public isPenWindowMode()Z
    .locals 1

    .prologue
    .line 1040
    const/4 v0, 0x0

    return v0
.end method

.method public isScrollEnabled()Z
    .locals 1

    .prologue
    .line 1210
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-boolean v0, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 1222
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    return v0
.end method

.method public isSpenDetachSettingEnabled()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 985
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    .line 989
    :cond_0
    :goto_0
    return v1

    .line 988
    :cond_1
    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "pen_detachment_option"

    const/4 v4, -0x3

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 989
    .local v0, "penDetachOption":I
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public linkWithParentView()V
    .locals 1

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    .line 1281
    :cond_0
    return-void
.end method

.method public onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 623
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 650
    :cond_0
    :goto_0
    return v2

    .line 626
    :cond_1
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v3, :cond_2

    .line 627
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getEmptyText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    :cond_2
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v3, :cond_3

    .line 633
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onHover(Landroid/view/MotionEvent;)Z

    .line 637
    :goto_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 642
    :pswitch_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 635
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p2}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onHoverForGA(Landroid/view/MotionEvent;)Z

    goto :goto_1

    .line 639
    :pswitch_2
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverEnter(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 645
    :pswitch_3
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsToastShown:Z

    .line 646
    invoke-virtual {p0, p2}, Lcom/samsung/android/airbutton/AirButtonImpl;->onHoverExit(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 637
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onHoverButtonSecondary(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-eqz v0, :cond_0

    .line 701
    const-string v0, "AirButtonImpl"

    const-string/jumbo v1, "onHoverButtonSecondary mIsAirButtonAttached is true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/airbutton/AirButtonImpl;->show(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method public onHoverEnter(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 662
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHoverEnter(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    iput-boolean v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverEnter:Z

    .line 674
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverEnter:Z

    .line 669
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 672
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 673
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->showHoverPointer()V

    goto :goto_0
.end method

.method public onHoverExit(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 689
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHoverExit(Landroid/view/View;)V

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v0, :cond_2

    .line 697
    :cond_1
    :goto_0
    return-void

    .line 695
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 696
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    goto :goto_0
.end method

.method public onHoverMove(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 677
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-nez v0, :cond_2

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 681
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->showHoverPointer()V

    .line 683
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 685
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverAnimationView:Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/airbutton/view/AirButtonHoverAnimationView;->setAnimationViewPosition(FF)V

    goto :goto_0
.end method

.method public onTouchDownForGA(I)V
    .locals 1
    .param p1, "buttonState"    # I

    .prologue
    .line 654
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onTouchDownForGA(I)V

    .line 655
    return-void
.end method

.method public onTouchUpForGA(I)V
    .locals 1
    .param p1, "buttonState"    # I

    .prologue
    .line 658
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mSideBtnController:Lcom/samsung/android/airbutton/AirButtonSideButtonController;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/AirButtonSideButtonController;->onTouchUpForGA(I)V

    .line 659
    return-void
.end method

.method public setAdapter(Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;)V
    .locals 2
    .param p1, "adapter"    # Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    .line 1261
    if-nez p1, :cond_1

    .line 1262
    const-string v0, "AirButtonImpl"

    const-string/jumbo v1, "set adapter to null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1266
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1267
    const-string v0, "AirButtonImpl"

    const-string v1, "adapter count is 0."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAttributes(Lcom/samsung/android/airbutton/Attributes;)V
    .locals 6
    .param p1, "attribute"    # Lcom/samsung/android/airbutton/Attributes;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v2, 0x3

    .line 1088
    if-nez p1, :cond_0

    .line 1089
    new-instance p1, Lcom/samsung/android/airbutton/Attributes;

    .end local p1    # "attribute":Lcom/samsung/android/airbutton/Attributes;
    invoke-direct {p1}, Lcom/samsung/android/airbutton/Attributes;-><init>()V

    .line 1091
    .restart local p1    # "attribute":Lcom/samsung/android/airbutton/Attributes;
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    if-nez v0, :cond_2

    .line 1092
    invoke-virtual {p1}, Lcom/samsung/android/airbutton/Attributes;->clone()Lcom/samsung/android/airbutton/Attributes;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    .line 1096
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowWidth:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->windowWidth:I

    .line 1097
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWindowHeight:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->windowHeight:I

    .line 1098
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStatusbarHeight:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->statusbarHeight:I

    .line 1099
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewX:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewX:I

    .line 1100
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewY:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewY:I

    .line 1101
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewWidth:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewWidth:I

    .line 1102
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentViewHeight:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->parentViewHeight:I

    .line 1103
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDensity:F

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->density:F

    .line 1104
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->UIType:I

    .line 1105
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->dataType:I

    .line 1107
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v5, :cond_5

    .line 1108
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v5, :cond_3

    .line 1109
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1110
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/high16 v1, 0x40400000    # 3.0f

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    .line 1129
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v0}, Lcom/samsung/android/airbutton/Attributes;->calculatePixelValue()V

    .line 1130
    return-void

    .line 1094
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    invoke-virtual {v0, p1}, Lcom/samsung/android/airbutton/Attributes;->copyFrom(Lcom/samsung/android/airbutton/Attributes;)V

    goto :goto_0

    .line 1111
    :cond_3
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v4, :cond_4

    .line 1112
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1113
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v3, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_1

    .line 1114
    :cond_4
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v2, :cond_1

    .line 1115
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1116
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput v3, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_1

    .line 1118
    :cond_5
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v0, v4, :cond_6

    .line 1119
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 1121
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mDataType:I

    if-ne v0, v2, :cond_1

    .line 1122
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, -0x1

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->itemSize:I

    .line 1123
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/high16 v1, 0x40a00000    # 5.0f

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->listItemTilt:F

    goto :goto_1

    .line 1125
    :cond_6
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v2, :cond_7

    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1126
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    const/4 v1, 0x5

    iput v1, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    goto :goto_1
.end method

.method public setBounceEffectEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean p1, v0, Lcom/samsung/android/airbutton/Attributes;->withBounceEffect:Z

    .line 1215
    return-void
.end method

.method public setDirection(I)V
    .locals 1
    .param p1, "direction"    # I

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v0, Lcom/samsung/android/airbutton/Attributes;->direction:I

    .line 1186
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1075
    iput-boolean p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    .line 1077
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEnabled:Z

    if-eqz v0, :cond_0

    .line 1078
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->enable()V

    .line 1081
    :goto_0
    return-void

    .line 1080
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->disable()V

    goto :goto_0
.end method

.method public setGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 1177
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v0, Lcom/samsung/android/airbutton/Attributes;->gravity:I

    .line 1178
    return-void
.end method

.method public setHoverPointerEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1230
    iput-boolean p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverPointerEnabled:Z

    .line 1231
    return-void
.end method

.method public setMultiSelectionEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean p1, v0, Lcom/samsung/android/airbutton/Attributes;->multipleSelection:Z

    .line 1199
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mItemSelectListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnItemSelectedListener;

    .line 1173
    return-void
.end method

.method public setOnStateChangedListener(Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .prologue
    .line 1168
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mStateChangedListener:Lcom/samsung/android/airbutton/AirButtonImpl$OnStateChangedListener;

    .line 1169
    return-void
.end method

.method public setParentView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1238
    if-nez p1, :cond_0

    .line 1256
    :goto_0
    return-void

    .line 1241
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-eqz v0, :cond_1

    .line 1242
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hide()V

    .line 1244
    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsHoverAnimationViewAttached:Z

    if-eqz v0, :cond_2

    .line 1245
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 1247
    :cond_2
    instance-of v0, p1, Landroid/widget/EditText;

    if-eqz v0, :cond_3

    .line 1248
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEditTextParentView:Z

    .line 1250
    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsEditTextParentView:Z

    if-eqz v0, :cond_4

    .line 1251
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/airbutton/AirButtonImpl;->setHoverPointerEnabled(Z)V

    .line 1253
    :cond_4
    iput-object p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    .line 1254
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    .line 1255
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->linkWithParentView()V

    goto :goto_0
.end method

.method public setPosition(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p1, v0, Lcom/samsung/android/airbutton/Attributes;->x:I

    .line 1194
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput p2, v0, Lcom/samsung/android/airbutton/Attributes;->y:I

    .line 1195
    return-void
.end method

.method public setScrollEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1206
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAttrs:Lcom/samsung/android/airbutton/Attributes;

    iput-boolean p1, v0, Lcom/samsung/android/airbutton/Attributes;->scrollable:Z

    .line 1207
    return-void
.end method

.method public show()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x1

    .line 734
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isVzwSetupRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 735
    const-string v1, "AirButtonImpl"

    const-string v2, "Verizon Setup Wizard is Running Don\'t show the SPen events"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_0
    return-void

    .line 740
    :cond_0
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/airbutton/AirButtonProperities;->isUspFeatureEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 741
    const-string v1, "AirButtonImpl"

    const-string v2, "Version is low"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 745
    :cond_1
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v1, v6, :cond_2

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-ne v1, v3, :cond_4

    :cond_2
    const-string/jumbo v1, "true"

    const-string v2, "dev.knoxapp.running"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 746
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    if-ne v1, v4, :cond_3

    .line 747
    iput-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 748
    :cond_3
    const-string v1, "AirButtonImpl"

    const-string v2, "know mode is running"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 755
    :cond_4
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v1, v3, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isAirButtonSettingEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isSpenDetachSettingEnabled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 756
    :cond_5
    const-string v1, "AirButtonImpl"

    const-string v2, "AirButtonSettingEnabled is false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 760
    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isCoverViewOpened()Z

    move-result v1

    if-nez v1, :cond_7

    .line 761
    const-string v1, "AirButtonImpl"

    const-string v2, "CoverView is closed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 765
    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isPenWindowMode()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 766
    const-string v1, "AirButtonImpl"

    const-string v2, "isPenWindowMode is true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 770
    :cond_8
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsWidgetDismissed:Z

    if-eqz v1, :cond_9

    .line 771
    const-string v1, "AirButtonImpl"

    const-string v2, "Widget already dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 775
    :cond_9
    iget-boolean v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    if-eqz v1, :cond_a

    .line 776
    const-string v1, "AirButtonImpl"

    const-string v2, "Widget already attached"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 780
    :cond_a
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_b

    .line 781
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onShow(Landroid/view/View;)V

    .line 783
    :cond_b
    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v1, v6, :cond_c

    iget v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v1, v3, :cond_c

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->getCount()I

    move-result v1

    if-gtz v1, :cond_c

    .line 784
    const-string v1, "AirButtonImpl"

    const-string/jumbo v2, "skip showing AirButton 1"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->showEmptyText()V

    goto/16 :goto_0

    .line 789
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initAirButtonViewLayoutParams()V

    .line 791
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->initDataType()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 798
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    if-nez v1, :cond_e

    .line 799
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->createAndInitAirButtonView(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 800
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    if-eqz v1, :cond_d

    .line 801
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAdapter:Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/look/airbutton/SlookAirButtonAdapter;->onHide(Landroid/view/View;)V

    .line 803
    :cond_d
    const-string v1, "AirButtonImpl"

    const-string/jumbo v2, "skip showing AirButton 2"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string v1, "AirButtonImpl"

    const-string v2, "AirButtonItem is data type coming empty"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 808
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_e
    invoke-direct {p0, v4}, Lcom/samsung/android/airbutton/AirButtonImpl;->callStateListener(I)V

    .line 811
    :try_start_1
    iget-object v1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mWM:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonView:Lcom/samsung/android/airbutton/view/AbsAirButtonView;

    iget-object v3, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mAirButtonViewLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    .line 818
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->hideHoverPointer()V

    .line 819
    iput-boolean v4, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsAirButtonAttached:Z

    .line 820
    iput-boolean v5, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 821
    invoke-direct {p0, v4}, Lcom/samsung/android/airbutton/AirButtonImpl;->broadcastAirButtonShowState(Z)V

    .line 823
    const-string v1, "AirButtonImpl"

    const-string v2, "added"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 812
    :catch_1
    move-exception v0

    .line 813
    .local v0, "e":Landroid/view/WindowManager$BadTokenException;
    const-string v1, "AirButtonImpl"

    const-string v2, "Your parent view token is wrong or removed. Please check it"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public show(FF)V
    .locals 2
    .param p1, "hoverX"    # F
    .param p2, "hoverY"    # F

    .prologue
    const v1, 0x461c4000    # 10000.0f

    .line 831
    iput p1, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointX:F

    .line 832
    iput p2, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mHoverPressedPointY:F

    .line 834
    cmpl-float v0, p1, v1

    if-nez v0, :cond_0

    cmpl-float v0, p2, v1

    if-nez v0, :cond_0

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mIsSpenDetached:Z

    .line 837
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->show()V

    .line 838
    return-void
.end method

.method public show(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 827
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/airbutton/AirButtonImpl;->show(FF)V

    .line 828
    return-void
.end method

.method public showHoverPointer()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 918
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/airbutton/AirButtonProperities;->isUspFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 920
    const-string v0, "AirButtonImpl"

    const-string v1, "Version is low"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    iget v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mUIType:I

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isAirButtonSettingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 928
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->isPenWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 931
    invoke-direct {p0}, Lcom/samsung/android/airbutton/AirButtonImpl;->createAndAttachHoverAnimationView()V

    goto :goto_0
.end method

.method public unlinkWithParentView()V
    .locals 2

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1285
    iget-object v0, p0, Lcom/samsung/android/airbutton/AirButtonImpl;->mParentView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAirButton(Lcom/samsung/android/airbutton/AirButtonImpl;)V

    .line 1286
    :cond_0
    return-void
.end method
