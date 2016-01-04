.class public Lcom/android/server/am/MultiWindowManagerService;
.super Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;,
        Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;,
        Lcom/android/server/am/MultiWindowManagerService$H;,
        Lcom/android/server/am/MultiWindowManagerService$Movement;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final CONFIG_FILE:Ljava/lang/String; = "/system/etc/multiwindow_blacklist.txt"

.field public static LIMIT_NUM_OF_MULTI_INSTANCE:I = 0x0

.field private static QUADVIEW_DISPLAY_RATIO:F = 0.0f

.field private static QUADVIEW_FULL_DISPLAY_RATIO:F = 0.0f

.field public static START_ACTIVITY_WITH_LAST_PINUP:Z = false

.field private static final TAG:Ljava/lang/String; = "MultiWindowManagerService"

.field private static mSelf:Lcom/android/server/am/MultiWindowManagerService;


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:Landroid/graphics/Rect;

.field private C:Landroid/graphics/Rect;

.field private D:Landroid/graphics/Rect;

.field private E:Landroid/graphics/Rect;

.field private F:Landroid/graphics/Rect;

.field private SPLIT_ZONE_LEFT:Z

.field private SPLIT_ZONE_RIGHT:Z

.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mAlarmStateListener:Landroid/content/BroadcastReceiver;

.field private mAppListPosition:I

.field private mBehaviorBasedLaunch:Z

.field mCallbackDeathRecipients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mCenterBarDirection:I

.field private mCenterBarDockingMargin:I

.field private mCenterBarFlingSize:I

.field private mCenterBarPoint:Landroid/graphics/Point;

.field private mContext:Landroid/content/Context;

.field private mCurrMovements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentArrangeState:I

.field private mCurrentLaunchMode:I

.field final mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

.field private mIgnoreIntentWindowMode:Z

.field private mIsMultiDisplay:Z

.field private mIsTouchDown:Z

.field private mIvt:[B

.field private mLastArrangeState:I

.field private mLastDisplay:Landroid/graphics/Point;

.field private mLock:Ljava/lang/Object;

.field mMinimizeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mMinimizeIconState:I

.field private mMovements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/MultiWindowManagerService$Movement;",
            ">;"
        }
    .end annotation
.end field

.field private mMovingMargin:I

.field private mMultiDisplayId:I

.field private mMultiWindowBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mOldPositionX:F

.field private mOldPositionY:F

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field mShiftPosition:Ljava/lang/Runnable;

.field private mShiftX:I

.field private mShiftXArrange:I

.field private mShiftY:I

.field private mSupportAllApps:Z

.field mSupportAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportControlbar:Z

.field private mSupportHalfSplit:Z

.field mSupportMultiInstanceAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSupportScaleAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mToolkitWindowDefHeight:I

.field mToolkitWindowDefWidth:I

.field mToolkitWindowX:I

.field mToolkitWindowY:I

.field private mVibrator:Landroid/os/SystemVibrator;

.field private mVisibleArrangeState:I

.field mWindowDefHeight:I

.field mWindowDefWidth:I

.field mWindowGap:I

.field private mWindowInfoMapByComponent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowInfoMapByTaskId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Landroid/view/WindowManager;

.field mWindowMinimizedHeight:I

.field mWindowMinimizedWidth:I

.field mbLoadSupportControlbar:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 60
    const-class v0, Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    .line 64
    sput-boolean v1, Lcom/android/server/am/MultiWindowManagerService;->START_ACTIVITY_WITH_LAST_PINUP:Z

    .line 65
    const/4 v0, 0x2

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->LIMIT_NUM_OF_MULTI_INSTANCE:I

    .line 69
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    .line 98
    const v0, 0x3ecccccd    # 0.4f

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_DISPLAY_RATIO:F

    .line 99
    const v0, 0x3f4ccccd    # 0.8f

    sput v0, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_FULL_DISPLAY_RATIO:F

    return-void

    .line 60
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 162
    invoke-direct {p0}, Landroid/sec/multiwindow/impl/IMultiWindowManager$Stub;-><init>()V

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    .line 70
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 71
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 73
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    .line 74
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    .line 75
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    .line 76
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    .line 77
    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    .line 78
    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    .line 79
    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mVisibleArrangeState:I

    .line 80
    iput v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    .line 82
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    .line 84
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_LEFT:Z

    .line 85
    iput-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->SPLIT_ZONE_RIGHT:Z

    .line 86
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    .line 87
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    .line 88
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    .line 89
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    .line 101
    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIvt:[B

    .line 122
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 123
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 124
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 125
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    .line 126
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    .line 127
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 128
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    .line 129
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 130
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 132
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mbLoadSupportControlbar:Z

    .line 133
    iput-boolean v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportControlbar:Z

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    .line 139
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    .line 140
    iput v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    .line 146
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    .line 147
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftY:I

    .line 148
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    .line 149
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    .line 150
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    .line 151
    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    .line 152
    iput v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    .line 153
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    .line 154
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    .line 155
    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    .line 157
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 158
    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    .line 160
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$H;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$H;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    .line 707
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/MultiWindowManagerService$3;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftPosition:Ljava/lang/Runnable;

    .line 868
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    .line 869
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    .line 163
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    .line 164
    sput-object p0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    .line 165
    iput-object p2, p0, Lcom/android/server/am/MultiWindowManagerService;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    .line 169
    return-void

    .line 101
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
        0x0t
        0xat
        0x0t
        0x14t
        0x0t
        0x0t
        0x0t
        0x20t
        0x1t
        0x0t
        0x0t
        0x7ft
        0x0t
        0x0t
        0x42t
        0x0t
        0x0t
        0x4dt
        0x0t
        0x61t
        0x0t
        0x67t
        0x0t
        0x53t
        0x0t
        0x77t
        0x0t
        0x65t
        0x0t
        0x65t
        0x0t
        0x70t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/MultiWindowManagerService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/MultiWindowManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/am/MultiWindowManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/am/MultiWindowManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/MultiWindowManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/MultiWindowManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAll(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/am/MultiWindowManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/MultiWindowManagerService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/MultiWindowManagerService;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addMinimizeCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 650
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    .line 651
    .local v0, "cb":Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
    iget-object v2, v0, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 656
    .end local v0    # "cb":Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
    :goto_0
    return-void

    .line 655
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    const/4 v3, 0x0

    new-instance v4, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;-><init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/IBinder;Landroid/os/IBinder;)V

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private applyCenterBarDocking(Landroid/graphics/Point;)V
    .locals 6
    .param p1, "centerBarPoint"    # Landroid/graphics/Point;

    .prologue
    .line 2002
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1050118

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    .line 2003
    .local v2, "sCenterBarSize":I
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    div-int/lit8 v4, v2, 0x2

    add-int v0, v3, v4

    .line 2004
    .local v0, "dockingRange":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 2005
    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 2007
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_2

    .line 2008
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 2016
    :cond_0
    :goto_0
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_4

    .line 2017
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    iput v3, p1, Landroid/graphics/Point;->y:I

    .line 2024
    :cond_1
    :goto_1
    return-void

    .line 2009
    :cond_2
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_3

    .line 2010
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    sub-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 2011
    :cond_3
    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_0

    iget v3, p1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_0

    .line 2013
    iget v3, v1, Landroid/graphics/Point;->x:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p1, Landroid/graphics/Point;->x:I

    goto :goto_0

    .line 2018
    :cond_4
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    add-int/2addr v5, v0

    sub-int/2addr v4, v5

    if-lt v3, v4, :cond_5

    .line 2019
    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    sub-int/2addr v3, v4

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 2020
    :cond_5
    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v4, v0

    if-lt v3, v4, :cond_1

    iget v3, p1, Landroid/graphics/Point;->y:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v0

    if-gt v3, v4, :cond_1

    .line 2022
    iget v3, v1, Landroid/graphics/Point;->y:I

    div-int/lit8 v3, v3, 0x2

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p1, Landroid/graphics/Point;->y:I

    goto :goto_1
.end method

.method private calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "currentRect"    # Landroid/graphics/Rect;
    .param p2, "baseWinInfo"    # Landroid/os/Bundle;

    .prologue
    .line 1705
    if-eqz p2, :cond_2

    .line 1706
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 1707
    .local v0, "baseSize":Landroid/graphics/Rect;
    if-nez v0, :cond_0

    .line 1708
    const-string v2, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .end local v0    # "baseSize":Landroid/graphics/Rect;
    check-cast v0, Landroid/graphics/Rect;

    .line 1711
    .restart local v0    # "baseSize":Landroid/graphics/Rect;
    :cond_0
    if-eqz v0, :cond_2

    .line 1712
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1713
    .local v1, "fullscreen":Landroid/graphics/Point;
    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1715
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v3, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1719
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    if-ge v2, v3, :cond_1

    .line 1720
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-ge v2, v3, :cond_3

    .line 1721
    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1726
    :cond_1
    :goto_0
    iget v2, v1, Landroid/graphics/Point;->y:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_2

    .line 1727
    iget v2, p1, Landroid/graphics/Rect;->left:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 1731
    .end local v0    # "baseSize":Landroid/graphics/Rect;
    .end local v1    # "fullscreen":Landroid/graphics/Point;
    :cond_2
    return-void

    .line 1723
    .restart local v0    # "baseSize":Landroid/graphics/Rect;
    .restart local v1    # "fullscreen":Landroid/graphics/Point;
    :cond_3
    const/4 v2, 0x0

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_0
.end method

.method private calculateCascadeWindowSize(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Z)Landroid/graphics/Rect;
    .locals 10
    .param p1, "current"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "prev"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "useDefault"    # Z

    .prologue
    .line 1734
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 1735
    .local v4, "width":I
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 1737
    .local v0, "height":I
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v5

    .line 1738
    .local v5, "winInfo":Landroid/os/Bundle;
    if-nez v5, :cond_0

    .line 1739
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1740
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/4 v9, 0x0

    invoke-virtual {p0, v6, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v5

    .line 1741
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1743
    :cond_0
    if-eqz v5, :cond_3

    .line 1744
    const-string v6, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1748
    .local v1, "lastSize":Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    if-eqz p3, :cond_2

    .line 1749
    :cond_1
    const-string v6, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "lastSize":Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 1751
    .restart local v1    # "lastSize":Landroid/graphics/Rect;
    :cond_2
    if-eqz v1, :cond_3

    .line 1752
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 1753
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 1758
    .end local v1    # "lastSize":Landroid/graphics/Rect;
    :cond_3
    new-instance v2, Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    iget v8, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v8, v4

    iget v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    add-int/2addr v9, v0

    invoke-direct {v2, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1761
    .local v2, "rect":Landroid/graphics/Rect;
    if-eqz p2, :cond_4

    .line 1762
    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v7, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v7, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v6, v7}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v3

    .line 1763
    .local v3, "topWinInfo":Landroid/os/Bundle;
    invoke-direct {p0, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 1766
    .end local v3    # "topWinInfo":Landroid/os/Bundle;
    :cond_4
    return-object v2

    .line 1741
    .end local v2    # "rect":Landroid/graphics/Rect;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private calculateRotatedPosition(ILandroid/os/Bundle;Landroid/graphics/Point;)V
    .locals 17
    .param p1, "windowMode"    # I
    .param p2, "winInfo"    # Landroid/os/Bundle;
    .param p3, "fullscreen"    # Landroid/graphics/Point;

    .prologue
    .line 1649
    const-string v13, "android.intent.extra.WINDOW_LAST_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    .line 1650
    .local v4, "lastSize":Landroid/graphics/Rect;
    if-nez v4, :cond_0

    .line 1651
    const-string v13, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    .end local v4    # "lastSize":Landroid/graphics/Rect;
    check-cast v4, Landroid/graphics/Rect;

    .line 1654
    .restart local v4    # "lastSize":Landroid/graphics/Rect;
    :cond_0
    move/from16 v0, p1

    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_6

    .line 1655
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 1656
    .local v10, "width":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1657
    .local v3, "height":I
    iget v13, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v10

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    .line 1658
    iget v13, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v3

    iput v13, v4, Landroid/graphics/Rect;->right:I

    .line 1660
    const/high16 v13, 0x200000

    and-int v13, v13, p1

    if-eqz v13, :cond_2

    .line 1701
    .end local v3    # "height":I
    .end local v10    # "width":I
    :cond_1
    :goto_0
    return-void

    .line 1664
    .restart local v3    # "height":I
    .restart local v10    # "width":I
    :cond_2
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    if-le v13, v14, :cond_4

    .line 1665
    const/4 v13, 0x0

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    iget v15, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v14, v15

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    .line 1670
    :cond_3
    :goto_1
    iget v13, v4, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->x:I

    if-le v13, v14, :cond_5

    .line 1671
    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v13, v14

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 1666
    :cond_4
    iget v13, v4, Landroid/graphics/Rect;->top:I

    if-gez v13, :cond_3

    .line 1667
    const/4 v13, 0x0

    iget v14, v4, Landroid/graphics/Rect;->top:I

    neg-int v14, v14

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_1

    .line 1672
    :cond_5
    iget v13, v4, Landroid/graphics/Rect;->left:I

    if-gez v13, :cond_1

    .line 1673
    iget v13, v4, Landroid/graphics/Rect;->left:I

    neg-int v13, v13

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    .line 1675
    .end local v3    # "height":I
    .end local v10    # "width":I
    :cond_6
    const/high16 v13, 0x200000

    and-int v13, v13, p1

    if-nez v13, :cond_1

    .line 1676
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 1678
    .local v5, "nextPoint":Landroid/graphics/Point;
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->x:I

    int-to-double v15, v15

    div-double v6, v13, v15

    .line 1679
    .local v6, "relativeRateX":D
    iget v13, v4, Landroid/graphics/Rect;->top:I

    int-to-double v13, v13

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    iget v15, v15, Landroid/graphics/Point;->y:I

    int-to-double v15, v15

    div-double v8, v13, v15

    .line 1681
    .local v8, "relativeRateY":D
    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->x:I

    int-to-double v13, v13

    mul-double/2addr v13, v6

    double-to-int v1, v13

    .line 1682
    .local v1, "calculatedReferencePointX":I
    move-object/from16 v0, p3

    iget v13, v0, Landroid/graphics/Point;->y:I

    int-to-double v13, v13

    mul-double/2addr v13, v8

    double-to-int v2, v13

    .line 1684
    .local v2, "calculatedReferencePointY":I
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v13

    div-int/lit8 v13, v13, 0x2

    sub-int v13, v1, v13

    iput v13, v5, Landroid/graphics/Point;->x:I

    .line 1685
    iput v2, v5, Landroid/graphics/Point;->y:I

    .line 1688
    iget v13, v5, Landroid/graphics/Point;->x:I

    iget v14, v4, Landroid/graphics/Rect;->left:I

    sub-int v11, v13, v14

    .line 1689
    .local v11, "xDiff":I
    iget v13, v4, Landroid/graphics/Rect;->left:I

    add-int/2addr v13, v11

    iput v13, v4, Landroid/graphics/Rect;->left:I

    .line 1690
    iget v13, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v13, v11

    iput v13, v4, Landroid/graphics/Rect;->right:I

    .line 1693
    iget v13, v5, Landroid/graphics/Point;->y:I

    iget v14, v4, Landroid/graphics/Rect;->top:I

    sub-int v12, v13, v14

    .line 1694
    .local v12, "yDiff":I
    iget v13, v4, Landroid/graphics/Rect;->top:I

    add-int/2addr v13, v12

    iput v13, v4, Landroid/graphics/Rect;->top:I

    .line 1695
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v13, v12

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    .line 1697
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    move-object/from16 v0, p3

    iget v14, v0, Landroid/graphics/Point;->y:I

    if-le v13, v14, :cond_1

    .line 1698
    iget v13, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v14

    move-object/from16 v0, p3

    iget v15, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v14, v15

    sub-int/2addr v13, v14

    iput v13, v4, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_0
.end method

.method private calculateToolkitWindowSize(I)Landroid/graphics/Rect;
    .locals 6
    .param p1, "windowMode"    # I

    .prologue
    .line 1772
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private getEmptySplitZone(Ljava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1112
    .local p1, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x0

    .line 1113
    .local v0, "emptyZone":I
    const/4 v2, 0x0

    .line 1116
    .local v2, "usedZone":I
    if-eqz p1, :cond_0

    .line 1117
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    goto :goto_0

    .line 1123
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    if-eqz v2, :cond_3

    .line 1124
    const/16 v3, 0xf

    and-int/lit8 v0, v3, -0x1

    .line 1125
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1128
    and-int/lit8 v0, v0, -0xd

    .line 1131
    :try_start_0
    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v5, 0x40

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    const/16 v5, 0x20

    if-ne v3, v5, :cond_2

    .line 1133
    :cond_1
    and-int/lit8 v0, v0, -0x3

    .line 1142
    :cond_2
    monitor-exit v4

    .line 1144
    :cond_3
    return v0

    .line 1142
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getSelf()Lcom/android/server/am/MultiWindowManagerService;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/android/server/am/MultiWindowManagerService;->mSelf:Lcom/android/server/am/MultiWindowManagerService;

    return-object v0
.end method

.method private handleTouchDown(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 677
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    .line 678
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    .line 679
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    .line 681
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftPosition:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 682
    return-void
.end method

.method private handleTouchMove(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 685
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 686
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 687
    .local v1, "y":F
    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/util/MathUtils;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    iget v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/util/MathUtils;->abs(F)F

    move-result v2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 692
    :goto_0
    return-void

    .line 691
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/MultiWindowManagerService$Movement;

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    sub-float v4, v0, v4

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    sub-float v5, v1, v5

    invoke-direct {v3, p0, v4, v5}, Lcom/android/server/am/MultiWindowManagerService$Movement;-><init>(Lcom/android/server/am/MultiWindowManagerService;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private handleTouchUp(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 695
    iput-boolean v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsTouchDown:Z

    .line 696
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Landroid/util/MathUtils;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 703
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    .line 704
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    .line 705
    return-void

    .line 701
    :cond_0
    iput v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    goto :goto_0
.end method

.method private initMinimizeInfo(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "callback"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x0

    .line 668
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 669
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 670
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 671
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 672
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrMovements:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/MultiWindowManagerService$Movement;

    invoke-direct {v3, p0, v4, v4}, Lcom/android/server/am/MultiWindowManagerService$Movement;-><init>(Lcom/android/server/am/MultiWindowManagerService;FF)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 671
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 674
    :cond_0
    return-void
.end method

.method private minimizeAll(Ljava/lang/String;)V
    .locals 0
    .param p1, "skipPackage"    # Ljava/lang/String;

    .prologue
    .line 1109
    return-void
.end method

.method private removeMinimizeCallback(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "callback"    # Landroid/os/IBinder;

    .prologue
    .line 659
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 660
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 661
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    iget-object v2, v2, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 660
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 665
    :cond_1
    return-void
.end method

.method private updateWindowRects()V
    .locals 14

    .prologue
    const/4 v9, 0x0

    .line 1963
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1964
    .local v0, "fullscreen":Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1966
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v7

    .line 1967
    .local v7, "realStatusBarHeight":I
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 1968
    .local v2, "iDeviceWidth":I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 1969
    .local v1, "iDeviceHeight":I
    div-int/lit8 v10, v1, 0x2

    add-int v4, v10, v7

    .line 1970
    .local v4, "iHeightBoundary":I
    div-int/lit8 v5, v2, 0x2

    .line 1971
    .local v5, "iWidthBoundary":I
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050118

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    float-to-int v8, v10

    .line 1972
    .local v8, "sCenterBarHalfSize":I
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1050119

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v3, v10

    .line 1973
    .local v3, "iFrameCenterMargin":I
    if-le v2, v1, :cond_1

    const/4 v6, 0x1

    .line 1975
    .local v6, "landscape":Z
    :goto_0
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1976
    :try_start_0
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v11, :cond_0

    .line 1977
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v5, v11, Landroid/graphics/Point;->x:I

    .line 1978
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v4, v11, Landroid/graphics/Point;->y:I

    .line 1980
    :cond_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1982
    if-eqz v6, :cond_2

    .line 1983
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v5, v8

    add-int/2addr v11, v3

    sub-int v12, v4, v8

    invoke-direct {v10, v9, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    .line 1984
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v4, v8

    sub-int v12, v5, v8

    add-int/2addr v12, v3

    add-int v13, v1, v7

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    .line 1985
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v5, v8

    sub-int/2addr v11, v3

    sub-int v12, v4, v8

    invoke-direct {v10, v11, v9, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    .line 1986
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v5, v8

    sub-int/2addr v10, v3

    add-int v11, v4, v8

    add-int v12, v1, v7

    invoke-direct {v9, v10, v11, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    .line 1994
    :goto_1
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    .line 1995
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1997
    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    invoke-direct {v9, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    .line 1998
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    invoke-virtual {v9, v10}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1999
    return-void

    .end local v6    # "landscape":Z
    :cond_1
    move v6, v9

    .line 1973
    goto :goto_0

    .line 1980
    .restart local v6    # "landscape":Z
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 1988
    :cond_2
    new-instance v10, Landroid/graphics/Rect;

    sub-int v11, v5, v8

    sub-int v12, v4, v8

    add-int/2addr v12, v3

    invoke-direct {v10, v9, v9, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    .line 1989
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v4, v8

    sub-int/2addr v11, v3

    sub-int v12, v5, v8

    add-int v13, v1, v7

    invoke-direct {v10, v9, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    .line 1990
    new-instance v10, Landroid/graphics/Rect;

    add-int v11, v5, v8

    sub-int v12, v4, v8

    add-int/2addr v12, v3

    invoke-direct {v10, v11, v9, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    .line 1991
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v5, v8

    add-int v11, v4, v8

    sub-int/2addr v11, v3

    add-int v12, v1, v7

    invoke-direct {v9, v10, v11, v2, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    goto :goto_1
.end method


# virtual methods
.method public addWindowInfo(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;)V
    .locals 9
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1206
    .local p2, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 1207
    .local v4, "taskId":I
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1208
    .local v1, "intent":Landroid/content/Intent;
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1209
    .local v0, "info":Landroid/content/pm/ActivityInfo;
    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v3, v7, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    .line 1210
    .local v3, "realActivity":Landroid/content/ComponentName;
    const/4 v2, 0x0

    .line 1212
    .local v2, "popupWindowRect":Landroid/graphics/Rect;
    const/4 v6, 0x0

    .line 1214
    .local v6, "topWinInfo":Landroid/os/Bundle;
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 1215
    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1216
    .local v5, "top":Lcom/android/server/am/ActivityRecord;
    if-eqz v5, :cond_0

    .line 1217
    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v7, v7, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v8, v5, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v8, v8, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v7, v8}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    .line 1268
    .end local v5    # "top":Lcom/android/server/am/ActivityRecord;
    :cond_0
    return-void
.end method

.method public applyMultiInstanceStyle(Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "activityRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 880
    return-void
.end method

.method public applyMultiWindowLaunchStyle(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 0
    .param p1, "callerRecord"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "calleeRecord"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 872
    return-void
.end method

.method public arrangeSplitWindow()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method

.method public arrangeToolkitWindowInfos(IILjava/util/ArrayList;)V
    .locals 1
    .param p1, "changes"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1951
    .local p3, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1960
    .local v0, "N":I
    return-void
.end method

.method public arrangeWindowInfo(ILandroid/os/Bundle;)V
    .locals 5
    .param p1, "windowMode"    # I
    .param p2, "winInfo"    # Landroid/os/Bundle;

    .prologue
    .line 2044
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2045
    :try_start_0
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    .line 2046
    .local v0, "mode":I
    const/high16 v2, 0x1000000

    if-ne v0, v2, :cond_0

    .line 2047
    monitor-exit v3

    .line 2057
    :goto_0
    return-void

    .line 2049
    :cond_0
    invoke-static {p1}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 2051
    .local v1, "options":I
    and-int/lit8 v2, p1, 0xf

    if-eqz v2, :cond_2

    .line 2052
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->calculateSplitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2056
    :cond_1
    :goto_1
    monitor-exit v3

    goto :goto_0

    .end local v0    # "mode":I
    .end local v1    # "options":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 2053
    .restart local v0    # "mode":I
    .restart local v1    # "options":I
    :cond_2
    and-int/lit16 v2, p1, 0x2000

    if-eqz v2, :cond_1

    .line 2054
    :try_start_1
    const-string v2, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->calculateToolkitWindowSize(I)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p2, v2, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public arrangeWindowInfos(IILjava/util/ArrayList;)V
    .locals 8
    .param p1, "changes"    # I
    .param p2, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1879
    .local p3, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 1880
    .local v1, "currentUserId":I
    iget-object v7, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1881
    :try_start_0
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 1882
    .local v3, "fullscreen":Landroid/graphics/Point;
    invoke-static {v3}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1884
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1885
    .local v0, "N":I
    const/4 v2, 0x0

    .line 1886
    .local v2, "divideCount":I
    const/4 v4, 0x0

    .line 1888
    .local v4, "j":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1934
    .local v5, "savedWindowInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/am/ActivityRecord;Ljava/lang/Integer;>;"
    and-int/lit16 v6, p1, 0x80

    if-eqz v6, :cond_0

    .line 1935
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v6, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastDisplay:Landroid/graphics/Point;

    .line 1946
    :cond_0
    monitor-exit v7

    .line 1948
    return-void

    .line 1946
    .end local v0    # "N":I
    .end local v2    # "divideCount":I
    .end local v3    # "fullscreen":Landroid/graphics/Point;
    .end local v4    # "j":I
    .end local v5    # "savedWindowInfos":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/android/server/am/ActivityRecord;Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method public calculateCenterbarPoint(Lcom/android/server/am/ActivityRecord;)Landroid/graphics/Point;
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 1788
    const/4 v0, 0x0

    .line 1817
    .local v0, "centerBarPoint":Landroid/graphics/Point;
    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    .line 1818
    return-object v0
.end method

.method public calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .locals 7
    .param p1, "splitZone"    # I

    .prologue
    const/high16 v6, 0x3f000000    # 0.5f

    .line 265
    invoke-direct {p0}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowRects()V

    .line 267
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 268
    .local v2, "result":Landroid/graphics/Rect;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 270
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 272
    :cond_0
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 274
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 276
    :cond_1
    and-int/lit8 v4, p1, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_2

    .line 278
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 280
    :cond_2
    and-int/lit8 v4, p1, 0x8

    const/16 v5, 0x8

    if-ne v4, v5, :cond_3

    .line 282
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 285
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportFixedSplitView(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 286
    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v4, v4, 0x70

    if-eqz v4, :cond_5

    .line 287
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 288
    .local v0, "fullScreen":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 289
    iget v4, v0, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    sget v5, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_DISPLAY_RATIO:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v3, v4

    .line 290
    .local v3, "widthMargin":I
    iget v4, v0, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    sget v5, Lcom/android/server/am/MultiWindowManagerService;->QUADVIEW_DISPLAY_RATIO:F

    mul-float/2addr v4, v5

    add-float/2addr v4, v6

    float-to-int v1, v4

    .line 292
    .local v1, "heightMargin":I
    and-int/lit8 v4, p1, 0xf

    if-eqz v4, :cond_5

    .line 293
    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-nez v4, :cond_6

    .line 294
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v3, :cond_4

    .line 295
    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v3, v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->left:I

    .line 303
    :cond_4
    :goto_0
    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-nez v4, :cond_7

    .line 304
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v1, :cond_5

    .line 305
    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->top:I

    .line 316
    .end local v0    # "fullScreen":Landroid/graphics/Point;
    .end local v1    # "heightMargin":I
    .end local v3    # "widthMargin":I
    :cond_5
    :goto_1
    return-object v2

    .line 298
    .restart local v0    # "fullScreen":Landroid/graphics/Point;
    .restart local v1    # "heightMargin":I
    .restart local v3    # "widthMargin":I
    :cond_6
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-ge v4, v3, :cond_4

    .line 299
    iget v4, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int v5, v3, v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 308
    :cond_7
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    if-ge v4, v1, :cond_5

    .line 309
    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v5, v1, v5

    add-int/2addr v4, v5

    iput v4, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1
.end method

.method public checkBehaviorBasedLaunch()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mBehaviorBasedLaunch:Z

    return v0
.end method

.method public checkCenterBarRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    .line 234
    const/4 v0, 0x0

    .line 237
    .local v0, "returnRect":Landroid/graphics/Rect;
    return-object v0
.end method

.method public checkIdleStateNow(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)Z
    .locals 4
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 1192
    .local p1, "resumedActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v2, 0x0

    .line 1193
    .local v2, "zoneInfo":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1194
    .local v0, "N":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 1195
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 1194
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1202
    :cond_0
    const/4 v3, 0x0

    return v3
.end method

.method public checkIgnoreIntentWindowMode()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIgnoreIntentWindowMode:Z

    return v0
.end method

.method public checkSupportAllApps()Z
    .locals 1

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAllApps:Z

    return v0
.end method

.method public checkWindowInfos(Ljava/util/ArrayList;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 11
    .param p2, "centerbarRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Landroid/graphics/Rect;",
            ")",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .prologue
    .local p1, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v8, 0x0

    .line 1822
    if-nez p1, :cond_0

    move-object v5, v8

    .line 1875
    :goto_0
    return-object v5

    .line 1826
    :cond_0
    iget-object v9, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v3, v9, Landroid/content/res/Configuration;->orientation:I

    .line 1827
    .local v3, "orientation":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1828
    .local v4, "r":Lcom/android/server/am/ActivityRecord;
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v10, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v9, v10, :cond_1

    .line 1832
    iget-object v9, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v10, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v10, v10, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v9, v10}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v6

    .line 1833
    .local v6, "winInfo":Landroid/os/Bundle;
    const-string v9, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 1834
    .local v1, "minimumSize":Landroid/graphics/Rect;
    if-eqz v1, :cond_1

    .line 1838
    const/4 v7, 0x0

    .line 1839
    .local v7, "zoneRect":Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1840
    .local v5, "reviseRect":Landroid/graphics/Rect;
    const/4 v2, 0x0

    .line 1870
    .local v2, "offset":I
    invoke-virtual {v5, p2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    goto :goto_0

    .end local v1    # "minimumSize":Landroid/graphics/Rect;
    .end local v2    # "offset":I
    .end local v4    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v5    # "reviseRect":Landroid/graphics/Rect;
    .end local v6    # "winInfo":Landroid/os/Bundle;
    .end local v7    # "zoneRect":Landroid/graphics/Rect;
    :cond_2
    move-object v5, v8

    .line 1875
    goto :goto_0
.end method

.method public dispatchMinimizeEvent(Landroid/os/IBinder;Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 545
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 547
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 564
    :goto_0
    return-void

    .line 549
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->initMinimizeInfo(Landroid/os/IBinder;)V

    .line 550
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 554
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 558
    :pswitch_2
    invoke-direct {p0, p2}, Lcom/android/server/am/MultiWindowManagerService;->handleTouchUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 547
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 578
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v11, "android.permission.DUMP"

    invoke-virtual {v10, v11}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_0

    .line 579
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Permission Denial: can\'t dump MultiWindowManager from from pid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uid="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 647
    :goto_0
    return-void

    .line 585
    :cond_0
    iget-object v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 586
    :try_start_0
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 588
    const-string v10, "MULTIWINDOW SERVICE (dumpsys multiwindow service)"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    const-string v10, "mCenterBarPoint = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 591
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v10, :cond_1

    .line 592
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 597
    :goto_1
    const-string v10, "ArrangeState = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 598
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_2

    const-string v10, "ARRANGE_SPLITED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 606
    :goto_2
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 607
    const-string v10, "Total MultiWindowServiceCallback size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 608
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_7

    .line 610
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    .line 611
    .local v2, "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    iget-object v10, v2, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 609
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 594
    .end local v2    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    .end local v5    # "i":I
    :cond_1
    const-string v10, "null"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 646
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 599
    :cond_2
    :try_start_1
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_3

    const-string v10, "ARRANGE_SPLITED3R"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 600
    :cond_3
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_4

    const-string v10, "ARRANGE_SPLITED3L"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 601
    :cond_4
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    and-int/lit8 v10, v10, 0x10

    if-eqz v10, :cond_5

    .line 602
    const-string v10, "ARRANGE_SPLITED4"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 603
    :cond_5
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    const/4 v12, 0x2

    if-ne v10, v12, :cond_6

    const-string v10, "ARRANGE_DEFINED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 604
    :cond_6
    const-string v10, "ARRANGE_UNDEFINED"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 614
    .restart local v5    # "i":I
    :cond_7
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 615
    const-string v10, "MinimizeCallback size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 616
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 617
    const/4 v5, 0x0

    :goto_4
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v5, v10, :cond_8

    .line 618
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;

    .line 619
    .local v1, "cb":Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
    iget-object v10, v1, Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;->mToken:Landroid/os/IBinder;

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 617
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 622
    .end local v1    # "cb":Lcom/android/server/am/MultiWindowManagerService$MinimizeCallback;
    :cond_8
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    const-string v10, "mWindowInfoMapByComponent size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 624
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 625
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 626
    .local v7, "itComponent":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/os/Bundle;>;>;"
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 627
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 628
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/os/Bundle;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ComponentName;

    .line 629
    .local v9, "name":Landroid/content/ComponentName;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 630
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v10, "No : "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 631
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 632
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 634
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/content/ComponentName;Landroid/os/Bundle;>;"
    .end local v9    # "name":Landroid/content/ComponentName;
    :cond_9
    const-string v10, "mWindowInfoMapByTaskId size = "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(I)V

    .line 635
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 637
    .local v8, "itTask":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;>;"
    :goto_6
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 638
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 639
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 640
    .local v6, "id":Ljava/lang/Integer;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 641
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v10, "No : "

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 642
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 643
    const-string v10, ""

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 645
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Landroid/os/Bundle;>;"
    .end local v6    # "id":Ljava/lang/Integer;
    :cond_a
    const-string v10, "----------------------------------------------------------------------"

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public findDockingWindowZone(IIIII)I
    .locals 21
    .param p1, "multiWindowState"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "dockingBoundary"    # I
    .param p5, "currentZone"    # I

    .prologue
    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/MultiWindowManagerService;->updateWindowRects()V

    .line 388
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v12

    .line 390
    .local v12, "realStatusBarHeight":I
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 391
    .local v4, "fullscreen":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 393
    const/4 v11, 0x0

    .line 394
    .local v11, "maxBoundary":I
    if-gez p3, :cond_0

    const/16 p3, 0x0

    .line 395
    :cond_0
    iget v0, v4, Landroid/graphics/Point;->x:I

    move/from16 v17, v0

    iget v0, v4, Landroid/graphics/Point;->y:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 396
    move/from16 v3, p3

    .line 397
    .local v3, "compareValue":I
    iget v11, v4, Landroid/graphics/Point;->y:I

    .line 404
    :goto_0
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v14, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v14, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v14, v17

    .line 409
    .local v14, "split":[Landroid/util/Pair;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v6, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v6, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v6, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v6, v17

    .line 415
    .local v6, "halfSplit3L":[Landroid/util/Pair;
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v7, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v7, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v7, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v7, v17

    .line 421
    .local v7, "halfSplit3R":[Landroid/util/Pair;
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v8, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    const/16 v17, 0x3

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v8, v17

    .line 428
    .local v8, "halfSplit4":[Landroid/util/Pair;
    const/16 v17, 0x6

    move/from16 v0, v17

    new-array v5, v0, [Landroid/util/Pair;

    const/16 v17, 0x0

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->C:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x1

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->D:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x2

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->E:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x3

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->F:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x8

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x4

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->A:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    const/16 v17, 0x5

    new-instance v18, Landroid/util/Pair;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->B:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    const/16 v20, 0xc

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v18, v5, v17

    .line 437
    .local v5, "halfSplit":[Landroid/util/Pair;
    const/16 v16, 0x0

    .line 439
    .local v16, "zoneInfos":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    sparse-switch p1, :sswitch_data_0

    .line 497
    :goto_1
    :sswitch_0
    move-object/from16 v2, v16

    .local v2, "arr$":[Landroid/util/Pair;
    array-length v10, v2

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v10, :cond_c

    aget-object v15, v2, v9

    .line 498
    .local v15, "zone":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    iget-object v13, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Landroid/graphics/Rect;

    .line 499
    .local v13, "rect":Landroid/graphics/Rect;
    add-int v17, p3, v12

    move/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 500
    iget-object v0, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v17

    .line 504
    .end local v13    # "rect":Landroid/graphics/Rect;
    .end local v15    # "zone":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :goto_3
    return v17

    .line 399
    .end local v2    # "arr$":[Landroid/util/Pair;
    .end local v3    # "compareValue":I
    .end local v5    # "halfSplit":[Landroid/util/Pair;
    .end local v6    # "halfSplit3L":[Landroid/util/Pair;
    .end local v7    # "halfSplit3R":[Landroid/util/Pair;
    .end local v8    # "halfSplit4":[Landroid/util/Pair;
    .end local v9    # "i$":I
    .end local v10    # "len$":I
    .end local v14    # "split":[Landroid/util/Pair;
    .end local v16    # "zoneInfos":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_1
    move/from16 v3, p2

    .line 400
    .restart local v3    # "compareValue":I
    iget v11, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_0

    .line 445
    .restart local v5    # "halfSplit":[Landroid/util/Pair;
    .restart local v6    # "halfSplit3L":[Landroid/util/Pair;
    .restart local v7    # "halfSplit3R":[Landroid/util/Pair;
    .restart local v8    # "halfSplit4":[Landroid/util/Pair;
    .restart local v14    # "split":[Landroid/util/Pair;
    .restart local v16    # "zoneInfos":[Landroid/util/Pair;, "[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :sswitch_1
    move-object/from16 v16, v14

    .line 446
    goto :goto_1

    .line 448
    :sswitch_2
    if-nez p5, :cond_4

    .line 449
    move/from16 v0, p4

    if-le v3, v0, :cond_2

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_2

    .line 450
    move-object/from16 v16, v14

    goto :goto_1

    .line 452
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    move/from16 v17, v0

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    .line 453
    move-object/from16 v16, v5

    goto :goto_1

    .line 455
    :cond_3
    move-object/from16 v16, v14

    goto :goto_1

    .line 459
    :cond_4
    move-object/from16 v16, v14

    .line 461
    goto :goto_1

    .line 463
    :sswitch_3
    if-nez p5, :cond_6

    .line 464
    move/from16 v0, p4

    if-le v3, v0, :cond_5

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_5

    .line 465
    move-object/from16 v16, v14

    goto :goto_1

    .line 467
    :cond_5
    move-object/from16 v16, v5

    goto :goto_1

    .line 470
    :cond_6
    move-object/from16 v16, v6

    .line 472
    goto :goto_1

    .line 474
    :sswitch_4
    if-nez p5, :cond_8

    .line 475
    move/from16 v0, p4

    if-le v3, v0, :cond_7

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_7

    .line 476
    move-object/from16 v16, v14

    goto :goto_1

    .line 478
    :cond_7
    move-object/from16 v16, v5

    goto :goto_1

    .line 481
    :cond_8
    move-object/from16 v16, v7

    .line 483
    goto :goto_1

    .line 485
    :sswitch_5
    if-nez p5, :cond_a

    .line 486
    move/from16 v0, p4

    if-le v3, v0, :cond_9

    sub-int v17, v11, p4

    move/from16 v0, v17

    if-ge v3, v0, :cond_9

    .line 487
    move-object/from16 v16, v14

    goto/16 :goto_1

    .line 489
    :cond_9
    move-object/from16 v16, v5

    goto/16 :goto_1

    .line 492
    :cond_a
    move-object/from16 v16, v8

    goto/16 :goto_1

    .line 497
    .restart local v2    # "arr$":[Landroid/util/Pair;
    .restart local v9    # "i$":I
    .restart local v10    # "len$":I
    .restart local v13    # "rect":Landroid/graphics/Rect;
    .restart local v15    # "zone":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 504
    .end local v13    # "rect":Landroid/graphics/Rect;
    .end local v15    # "zone":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_c
    const/16 v17, 0x0

    goto :goto_3

    .line 439
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_0
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
        0x40 -> :sswitch_5
    .end sparse-switch
.end method

.method public getAppListPosition()I
    .locals 1

    .prologue
    .line 261
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppListPosition:I

    return v0
.end method

.method public getArrangeState()I
    .locals 2

    .prologue
    .line 1075
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1076
    :try_start_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    monitor-exit v1

    return v0

    .line 1077
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 247
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    monitor-exit v1

    return-object v0

    .line 249
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentLaunchMode()I
    .locals 2

    .prologue
    .line 949
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 950
    :try_start_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentLaunchMode:I

    monitor-exit v1

    return v0

    .line 951
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDefaultWindowInfoLocked(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 26
    .param p1, "info"    # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "topWinInfo"    # Landroid/os/Bundle;

    .prologue
    .line 1556
    const/4 v6, 0x0

    .line 1557
    .local v6, "defWidth":I
    const/4 v4, 0x0

    .line 1558
    .local v4, "defHeight":I
    const/4 v13, 0x0

    .line 1559
    .local v13, "minWidth":I
    const/4 v11, 0x0

    .line 1560
    .local v11, "minHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    const v21, 0x1050118

    invoke-virtual/range {v20 .. v21}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    const/high16 v21, 0x40000000    # 2.0f

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v16, v0

    .line 1562
    .local v16, "sCenterBarHalfSize":I
    const/4 v15, 0x0

    .line 1563
    .local v15, "r":Landroid/content/res/Resources;
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 1564
    .local v18, "winInfo":Landroid/os/Bundle;
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8}, Landroid/graphics/Point;-><init>()V

    .line 1565
    .local v8, "fullscreen":Landroid/graphics/Point;
    invoke-static {v8}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1566
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    .line 1568
    .local v10, "metaData":Landroid/os/Bundle;
    :goto_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v15

    .line 1569
    if-eqz v10, :cond_3

    .line 1570
    const-string v20, "com.sec.android.multiwindow.DEFAULT_SIZE_W"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1571
    .local v5, "defSizeId":I
    if-eqz v5, :cond_0

    .line 1572
    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v6, v0

    .line 1574
    :cond_0
    const-string v20, "com.sec.android.multiwindow.DEFAULT_SIZE_H"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 1575
    if-eqz v5, :cond_1

    .line 1576
    invoke-virtual {v15, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v4, v0

    .line 1579
    :cond_1
    const-string v20, "com.sec.android.multiwindow.MINIMUM_SIZE_W"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1580
    .local v12, "minSizeId":I
    if-eqz v12, :cond_2

    .line 1581
    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v20

    move/from16 v0, v20

    float-to-int v13, v0

    .line 1583
    :cond_2
    const-string v20, "com.sec.android.multiwindow.MINIMUM_SIZE_H"

    const/16 v21, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v10, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 1584
    if-eqz v12, :cond_3

    .line 1585
    invoke-virtual {v15, v12}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v20

    move/from16 v0, v20

    float-to-int v11, v0

    .line 1594
    .end local v5    # "defSizeId":I
    .end local v12    # "minSizeId":I
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v6, v0, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 1595
    :cond_5
    if-eqz v4, :cond_6

    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-le v4, v0, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 1597
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v13, v0, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v20, v0

    sub-int v13, v20, v16

    .line 1598
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-ge v11, v0, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    move/from16 v20, v0

    sub-int v11, v20, v16

    .line 1600
    :cond_9
    iget v0, v8, Landroid/graphics/Point;->x:I

    move/from16 v20, v0

    sub-int v20, v20, v6

    shr-int/lit8 v9, v20, 0x1

    .line 1601
    .local v9, "left":I
    iget v0, v8, Landroid/graphics/Point;->y:I

    move/from16 v20, v0

    sub-int v20, v20, v4

    shr-int/lit8 v20, v20, 0x1

    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getStatusBarHeight()I

    move-result v21

    add-int v17, v20, v21

    .line 1602
    .local v17, "top":I
    new-instance v19, Landroid/graphics/Rect;

    add-int v20, v9, v6

    add-int v21, v17, v4

    move-object/from16 v0, v19

    move/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-direct {v0, v9, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1603
    .local v19, "windowRect":Landroid/graphics/Rect;
    new-instance v14, Landroid/graphics/Rect;

    add-int v20, v9, v13

    add-int v21, v17, v11

    move/from16 v0, v17

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v14, v9, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1606
    .local v14, "minimumRect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->calculateCascadeWindowPosition(Landroid/graphics/Rect;Landroid/os/Bundle;)V

    .line 1613
    const-string v20, "android.intent.extra.WINDOW_DEFAULT_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1614
    const-string v20, "android.intent.extra.WINDOW_MINIMUM_SIZE"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1615
    const-string v20, "android.intent.extra.WINDOW_MINIMIZED_SIZE"

    new-instance v21, Landroid/graphics/Rect;

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    move/from16 v25, v0

    invoke-direct/range {v21 .. v25}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1617
    return-object v18

    .line 1566
    .end local v9    # "left":I
    .end local v10    # "metaData":Landroid/os/Bundle;
    .end local v14    # "minimumRect":Landroid/graphics/Rect;
    .end local v17    # "top":I
    .end local v19    # "windowRect":Landroid/graphics/Rect;
    :cond_a
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    goto/16 :goto_0

    .line 1588
    .restart local v10    # "metaData":Landroid/os/Bundle;
    :catch_0
    move-exception v7

    .line 1589
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1

    .line 1590
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v7

    .line 1591
    .local v7, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_1
.end method

.method public getMinimizeIconState()I
    .locals 1

    .prologue
    .line 573
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMinimizeIconState:I

    return v0
.end method

.method public getMultiDisplayState()Z
    .locals 2

    .prologue
    .line 991
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 992
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    monitor-exit v1

    return v0

    .line 993
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getMultiDisplayTarget()I
    .locals 2

    .prologue
    .line 976
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 977
    :try_start_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    monitor-exit v1

    return v0

    .line 978
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getNextSplitZone(Ljava/util/ArrayList;Lcom/android/server/am/ActivityRecord;)I
    .locals 6
    .param p2, "r"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;",
            "Lcom/android/server/am/ActivityRecord;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1148
    .local p1, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    if-eqz p2, :cond_0

    .line 1154
    :cond_0
    const/4 v1, 0x0

    .line 1155
    .local v1, "topActivity":Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x0

    .line 1156
    .local v0, "splitZone":I
    const/4 v2, 0x0

    .line 1157
    .local v2, "topWindowMode":I
    if-eqz p1, :cond_1

    .line 1158
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1159
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1160
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1165
    .restart local v1    # "topActivity":Lcom/android/server/am/ActivityRecord;
    :cond_1
    and-int/lit8 v3, v2, 0xf

    .line 1166
    .local v3, "zoneInfo":I
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1167
    packed-switch v3, :pswitch_data_0

    .line 1187
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit v5

    .line 1188
    return v0

    .line 1169
    :pswitch_1
    const/16 v0, 0xc

    .line 1170
    goto :goto_0

    .line 1172
    :pswitch_2
    const/4 v0, 0x3

    .line 1173
    goto :goto_0

    .line 1175
    :pswitch_3
    const/4 v0, 0x2

    .line 1176
    goto :goto_0

    .line 1178
    :pswitch_4
    const/4 v0, 0x1

    .line 1179
    goto :goto_0

    .line 1181
    :pswitch_5
    const/16 v0, 0x8

    .line 1182
    goto :goto_0

    .line 1184
    :pswitch_6
    const/4 v0, 0x4

    goto :goto_0

    .line 1187
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1167
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getResumedTaskCount()I
    .locals 1

    .prologue
    .line 1091
    const/4 v0, 0x0

    return v0
.end method

.method public getRunningTaskCnt(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)I
    .locals 6
    .param p1, "ar"    # Lcom/android/server/am/ActivityRecord;
    .param p2, "tr"    # Lcom/android/server/am/TaskRecord;

    .prologue
    .line 883
    const/4 v0, 0x0

    .line 884
    .local v0, "cls":Landroid/content/ComponentName;
    if-eqz p1, :cond_1

    .line 885
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 886
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 887
    new-instance v0, Landroid/content/ComponentName;

    .end local v0    # "cls":Landroid/content/ComponentName;
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .restart local v0    # "cls":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    .line 894
    .local v2, "nInstance":I
    const/4 v1, 0x0

    .line 895
    .local v1, "cp":Lcom/android/server/am/TaskRecord;
    if-eqz p1, :cond_2

    iget v4, p1, Lcom/android/server/am/ActivityRecord;->userId:I

    :goto_1
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 916
    .local v3, "userId":I
    return v2

    .line 889
    .end local v1    # "cp":Lcom/android/server/am/TaskRecord;
    .end local v2    # "nInstance":I
    .end local v3    # "userId":I
    :cond_1
    if-eqz p2, :cond_0

    iget-object v4, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_0

    .line 890
    iget-object v4, p2, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_0

    .line 895
    .restart local v1    # "cp":Lcom/android/server/am/TaskRecord;
    .restart local v2    # "nInstance":I
    :cond_2
    if-eqz p2, :cond_3

    iget v4, p2, Lcom/android/server/am/TaskRecord;->userId:I

    goto :goto_1

    :cond_3
    const/4 v4, -0x2

    goto :goto_1
.end method

.method public getVisibleArrangeState()I
    .locals 2

    .prologue
    .line 1081
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1082
    :try_start_0
    iget v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mVisibleArrangeState:I

    monitor-exit v1

    return v0

    .line 1083
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 6
    .param p1, "taskId"    # I
    .param p2, "realActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 924
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 925
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 927
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 928
    .local v2, "taskBundle":Landroid/os/Bundle;
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 929
    .local v1, "lastSize":Landroid/graphics/Rect;
    if-nez v1, :cond_0

    .line 930
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 932
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 933
    .local v0, "cmpBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 934
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .end local v1    # "lastSize":Landroid/graphics/Rect;
    check-cast v1, Landroid/graphics/Rect;

    .line 935
    .restart local v1    # "lastSize":Landroid/graphics/Rect;
    if-eqz v1, :cond_0

    .line 936
    const-string v3, "android.intent.extra.WINDOW_LAST_SIZE"

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 941
    .end local v0    # "cmpBundle":Landroid/os/Bundle;
    :cond_0
    monitor-exit v4

    .line 944
    .end local v1    # "lastSize":Landroid/graphics/Rect;
    .end local v2    # "taskBundle":Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 943
    :cond_1
    sget-boolean v3, Lcom/android/server/am/MultiWindowManagerService;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 945
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 944
    :cond_2
    :try_start_1
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public handleDisplayRemoved(I)V
    .locals 4
    .param p1, "displayId"    # I

    .prologue
    .line 229
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    .line 230
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 231
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultWindowInfo()V

    .line 177
    invoke-virtual {p0}, Lcom/android/server/am/MultiWindowManagerService;->loadDefaultSupportedAppList()V

    .line 178
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 179
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "vibrator"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/SystemVibrator;

    iput-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mVibrator:Landroid/os/SystemVibrator;

    .line 180
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105010f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarFlingSize:I

    .line 181
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDockingMargin:I

    .line 182
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050111

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftX:I

    .line 183
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050112

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftY:I

    .line 184
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050113

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mShiftXArrange:I

    .line 185
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050114

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMovingMargin:I

    .line 186
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isSupportQuadView(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportHalfSplit:Z

    .line 187
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 188
    .local v0, "fullscreen":Landroid/graphics/Point;
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 189
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    .line 190
    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    .line 191
    return-void
.end method

.method public isEmptyZone(Ljava/util/List;I)Z
    .locals 1
    .param p2, "zone"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .line 1545
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public isFixedRatioApp(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1552
    const/4 v0, 0x0

    return v0
.end method

.method public isSupporMultiInstance(Landroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 1515
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 1523
    :cond_0
    :goto_0
    return v0

    .line 1518
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.multiinstance.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1520
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 15
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowBlackList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowBlackList:Ljava/util/List;

    .line 17
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/etc/multiwindow_blacklist.txt"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 19
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "/system/etc/multiwindow_blacklist.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 22
    .local v1, "reader":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .local v0, "pkgName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowBlackList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 28
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    :catch_0
    move-exception v2

    .line 33
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiWindowBlackList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isSupportMultiWindow(Landroid/content/pm/ActivityInfo;)Z
    .locals 5
    .param p1, "aInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 1492
    const/4 v2, 0x0

    .line 1493
    .local v2, "bSupportMultiWindow":Z
    if-eqz p1, :cond_1

    .line 1494
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/am/MultiWindowManagerService;->isSupportApp(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.support.multiwindow"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.sdk.multiwindow.enable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1496
    :cond_0
    const/4 v2, 0x1

    .line 1497
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    .line 1498
    iget-object v3, p1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.multiwindow.activity.STYLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1499
    .local v0, "activityWindowStyle":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 1500
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1501
    .local v1, "activityWindowStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1502
    const-string v3, "fullscreenOnly"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1503
    const/4 v2, 0x0

    .line 1511
    .end local v0    # "activityWindowStyle":Ljava/lang/String;
    .end local v1    # "activityWindowStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_1
    return v2
.end method

.method public isSupportPopup(Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1460
    const-string v0, "com.sec.android.app.popupuireceiver"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.providers.media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.providers.downloads.ui"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1463
    :cond_0
    const/4 v0, 0x1

    .line 1466
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSupportPopupApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 3
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v0, 0x0

    .line 1527
    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 1534
    :cond_0
    :goto_0
    return v0

    .line 1530
    :cond_1
    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "com.samsung.android.sdk.multiwindow.popupwindow.enable"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1531
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isSupportScaleApp(Landroid/content/pm/ActivityInfo;)Z
    .locals 5
    .param p1, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v2, 0x0

    .line 1470
    if-eqz p1, :cond_0

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v3, :cond_1

    .line 1488
    :cond_0
    :goto_0
    return v2

    .line 1474
    :cond_1
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.samsung.android.sdk.multiwindow.penwindow.enable"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1476
    :cond_2
    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    .line 1477
    iget-object v3, p1, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.sec.android.multiwindow.STYLE"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1478
    .local v0, "applicationStyle":Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 1479
    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1480
    .local v1, "applicationStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "freestyleOnly"

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1485
    .end local v0    # "applicationStyle":Ljava/lang/String;
    .end local v1    # "applicationStyles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public launchExternalDisplay(Z)V
    .locals 2
    .param p1, "topLaunchExternal"    # Z

    .prologue
    .line 223
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 225
    .local v0, "origId":J
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    return-void
.end method

.method public loadDefaultSupportedAppList()V
    .locals 17

    .prologue
    .line 1391
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1392
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1393
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    .line 1396
    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1070051

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 1397
    .local v10, "supportAppList":[Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 1398
    move-object v2, v10

    .local v2, "arr$":[Ljava/lang/String;
    array-length v8, v2

    .local v8, "len$":I
    const/4 v7, 0x0

    .local v7, "i$":I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v9, v2, v7

    .line 1399
    .local v9, "supportApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportAppList:Ljava/util/ArrayList;

    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1398
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1403
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v9    # "supportApp":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1070059

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 1404
    .local v14, "supportScaleAppList":[Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 1405
    move-object v2, v14

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v8, v2

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v13, v2, v7

    .line 1406
    .local v13, "supportScaleApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportScaleAppList:Ljava/util/ArrayList;

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1410
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v13    # "supportScaleApp":Ljava/lang/String;
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1070052

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 1411
    .local v12, "supportMultiInstanceAppList":[Ljava/lang/String;
    if-eqz v12, :cond_2

    .line 1412
    move-object v2, v12

    .restart local v2    # "arr$":[Ljava/lang/String;
    array-length v8, v2

    .restart local v8    # "len$":I
    const/4 v7, 0x0

    .restart local v7    # "i$":I
    :goto_2
    if-ge v7, v8, :cond_2

    aget-object v11, v2, v7

    .line 1413
    .local v11, "supportMultiInstanceApp":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/MultiWindowManagerService;->mSupportMultiInstanceAppList:Ljava/util/ArrayList;

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1412
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1416
    .end local v2    # "arr$":[Ljava/lang/String;
    .end local v7    # "i$":I
    .end local v8    # "len$":I
    .end local v10    # "supportAppList":[Ljava/lang/String;
    .end local v11    # "supportMultiInstanceApp":Ljava/lang/String;
    .end local v12    # "supportMultiInstanceAppList":[Ljava/lang/String;
    .end local v14    # "supportScaleAppList":[Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 1421
    :cond_2
    const/4 v3, 0x0

    .line 1422
    .local v3, "cscAddOnApp":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 1423
    new-instance v4, Ljava/util/ArrayList;

    const-string v15, ","

    throw v3

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v4, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1424
    .local v4, "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    throw v4

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1425
    .local v1, "addOnApp":Ljava/lang/String;
    const-string v15, "-"

    throw v1

    move-result v15

    if-eqz v15, :cond_4

    .line 1426
    const/4 v15, 0x1

    throw v1

    move-result-object v1

    .line 1427
    move-object/from16 v0, p0

    throw v0

    throw v15

    move-result v15

    if-eqz v15, :cond_3

    .line 1428
    move-object/from16 v0, p0

    throw v0

    throw v15

    goto :goto_3

    .line 1429
    :cond_4
    move-object/from16 v0, p0

    throw v0

    throw v15

    move-result v15

    if-nez v15, :cond_3

    .line 1430
    move-object/from16 v0, p0

    throw v0

    throw v15

    goto :goto_3

    .line 1436
    .end local v1    # "addOnApp":Ljava/lang/String;
    .end local v4    # "cscAddOnAppList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    const/4 v5, 0x0

    .line 1437
    .local v5, "cscAddPenWindow":Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 1438
    new-instance v6, Ljava/util/ArrayList;

    const-string v15, ","

    throw v5

    move-result-object v15

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v6, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1439
    .local v6, "cscAddPenWindowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    throw v6

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1440
    .restart local v1    # "addOnApp":Ljava/lang/String;
    const-string v15, "-"

    throw v1

    move-result v15

    if-eqz v15, :cond_7

    .line 1441
    const/4 v15, 0x1

    throw v1

    move-result-object v1

    .line 1442
    move-object/from16 v0, p0

    throw v0

    throw v15

    move-result v15

    if-eqz v15, :cond_6

    .line 1443
    move-object/from16 v0, p0

    throw v0

    throw v15

    goto :goto_4

    .line 1444
    :cond_7
    move-object/from16 v0, p0

    throw v0

    throw v15

    move-result v15

    if-nez v15, :cond_6

    .line 1445
    move-object/from16 v0, p0

    throw v0

    throw v15

    goto :goto_4

    .line 1449
    .end local v1    # "addOnApp":Ljava/lang/String;
    .end local v6    # "cscAddPenWindowList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_8
    return-void
.end method

.method public loadDefaultWindowInfo()V
    .locals 2

    .prologue
    .line 1383
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050115

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowGap:I

    .line 1384
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050116

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefWidth:I

    .line 1385
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050117

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowDefHeight:I

    .line 1386
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedWidth:I

    .line 1387
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    .line 1388
    return-void
.end method

.method public minimizeAll()V
    .locals 1

    .prologue
    .line 1095
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->minimizeAll(Ljava/lang/String;)V

    .line 1096
    return-void
.end method

.method public notifyMultiDisplayState(ZZ)Z
    .locals 3
    .param p1, "bIsMultiDisplay"    # Z
    .param p2, "bForced"    # Z

    .prologue
    .line 957
    iget-boolean v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    if-ne v0, p1, :cond_0

    if-eqz p2, :cond_1

    .line 958
    :cond_0
    const-string v0, "MultiWindowManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send broadcast intent  ACTION_NOTIFY_MULTIDISPLAY_STATUS mIsMultiDisplay set as "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    .line 961
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    new-instance v1, Lcom/android/server/am/MultiWindowManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/am/MultiWindowManagerService$4;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 969
    const/4 v0, 0x1

    .line 971
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public registerCallback(Landroid/os/IBinder;ILandroid/os/IBinder;)Z
    .locals 6
    .param p1, "callback"    # Landroid/os/IBinder;
    .param p2, "type"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 508
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    .line 509
    .local v0, "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    iget-object v5, v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 527
    .end local v0    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    :cond_1
    :goto_0
    return v3

    .line 514
    :cond_2
    if-eqz p1, :cond_1

    .line 515
    new-instance v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;-><init>(Lcom/android/server/am/MultiWindowManagerService;Landroid/os/IBinder;ILandroid/os/IBinder;)V

    .line 517
    .restart local v0    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    const/4 v5, 0x0

    :try_start_0
    invoke-interface {p1, v0, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    iget-object v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v5, v3, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 522
    if-ne p2, v4, :cond_3

    .line 523
    invoke-direct {p0, p1, p3}, Lcom/android/server/am/MultiWindowManagerService;->addMinimizeCallback(Landroid/os/IBinder;Landroid/os/IBinder;)V

    :cond_3
    move v3, v4

    .line 525
    goto :goto_0

    .line 518
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public removeWindowInfo(I)V
    .locals 3
    .param p1, "taskId"    # I

    .prologue
    .line 1371
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1372
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    monitor-exit v1

    .line 1374
    return-void

    .line 1373
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeWindowInfoByComponent(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "realActivity"    # Landroid/content/ComponentName;

    .prologue
    .line 1377
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1378
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    monitor-exit v1

    .line 1380
    return-void

    .line 1379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rotateCenterBar(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 2027
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    if-ne p1, v1, :cond_0

    .line 2041
    :goto_0
    return-void

    .line 2031
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 2032
    .local v0, "centerBarPoint":Landroid/graphics/Point;
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    .line 2033
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2034
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    if-eqz v1, :cond_1

    .line 2035
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2036
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2037
    invoke-direct {p0, v0}, Lcom/android/server/am/MultiWindowManagerService;->applyCenterBarDocking(Landroid/graphics/Point;)V

    .line 2038
    iput-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    .line 2040
    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAppListPosition(I)V
    .locals 0
    .param p1, "pos"    # I

    .prologue
    .line 257
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mAppListPosition:I

    .line 258
    return-void
.end method

.method public setCenterBarDirection(I)V
    .locals 0
    .param p1, "orientation"    # I

    .prologue
    .line 253
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarDirection:I

    .line 254
    return-void
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 242
    :try_start_0
    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mCenterBarPoint:Landroid/graphics/Point;

    .line 243
    monitor-exit v1

    .line 244
    return-void

    .line 243
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMinimizeStackedIcon()V
    .locals 6

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mHandler:Lcom/android/server/am/MultiWindowManagerService$H;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionX:F

    float-to-int v3, v3

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mOldPositionY:F

    float-to-int v4, v4

    iget v5, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowMinimizedHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 570
    return-void
.end method

.method public setMultiDisplayState(Z)V
    .locals 2
    .param p1, "bMultiDisplayState"    # Z

    .prologue
    .line 998
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 999
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mIsMultiDisplay:Z

    .line 1000
    monitor-exit v1

    .line 1001
    return-void

    .line 1000
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMultiDisplayTarget(I)Z
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 983
    iget-object v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 984
    :try_start_0
    iput p1, p0, Lcom/android/server/am/MultiWindowManagerService;->mMultiDisplayId:I

    .line 985
    monitor-exit v1

    .line 986
    const/4 v0, 0x1

    return v0

    .line 985
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setToolkitRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 1621
    if-nez p1, :cond_1

    .line 1622
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 1623
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 1624
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    .line 1625
    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    .line 1646
    :cond_0
    :goto_0
    return-void

    .line 1628
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 1629
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowY:I

    .line 1630
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    .line 1631
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    .line 1633
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    if-nez v1, :cond_3

    .line 1634
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1635
    .local v0, "fullscreen":Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1636
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    if-nez v1, :cond_2

    .line 1637
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    neg-int v1, v1

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowX:I

    .line 1639
    :cond_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefWidth:I

    goto :goto_0

    .line 1640
    .end local v0    # "fullscreen":Landroid/graphics/Point;
    :cond_3
    iget v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    if-nez v1, :cond_0

    .line 1641
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1642
    .restart local v0    # "fullscreen":Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 1644
    iget v1, v0, Landroid/graphics/Point;->y:I

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/server/am/MultiWindowManagerService;->mToolkitWindowDefHeight:I

    goto :goto_0
.end method

.method public skipFullScreenCheck(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 920
    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .locals 4

    .prologue
    .line 194
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v2, :cond_0

    .line 195
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 196
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_0

    .line 198
    :try_start_0
    new-instance v2, Lcom/android/server/am/MultiWindowManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiWindowManagerService$1;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 205
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    .end local v1    # "phone":Landroid/telephony/TelephonyManager;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    if-nez v2, :cond_1

    .line 212
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT_FROM_ALARM"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 213
    .local v0, "filter":Landroid/content/IntentFilter;
    new-instance v2, Lcom/android/server/am/MultiWindowManagerService$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/MultiWindowManagerService$2;-><init>(Lcom/android/server/am/MultiWindowManagerService;)V

    iput-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    .line 218
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mAlarmStateListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 206
    .restart local v1    # "phone":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public unRegisterCallback(Landroid/os/IBinder;)Z
    .locals 5
    .param p1, "callback"    # Landroid/os/IBinder;

    .prologue
    const/4 v3, 0x0

    .line 531
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 532
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 533
    iget-object v4, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    .line 534
    .local v0, "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    iget-object v4, v0, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 535
    invoke-interface {p1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 536
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 537
    invoke-direct {p0, p1}, Lcom/android/server/am/MultiWindowManagerService;->removeMinimizeCallback(Landroid/os/IBinder;)V

    .line 538
    const/4 v3, 0x1

    .line 541
    .end local v0    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    :cond_0
    return v3

    .line 532
    .restart local v0    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public updateArrangeState(Ljava/util/List;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "resumeRecord":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v11, 0x1

    .line 1006
    const/4 v6, 0x0

    .line 1007
    .local v6, "mode":I
    const/4 v7, 0x0

    .line 1008
    .local v7, "option":I
    const/4 v0, 0x0

    .line 1009
    .local v0, "arrangeState":I
    const/4 v5, 0x0

    .line 1010
    .local v5, "isHarfSplit":Z
    const/4 v1, 0x0

    .line 1012
    .local v1, "bIsMultiDisplay":Z
    iput v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    .line 1014
    if-eqz p1, :cond_5

    .line 1015
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 1018
    .local v8, "r":Lcom/android/server/am/ActivityRecord;
    const/high16 v10, 0x1000000

    if-eq v6, v10, :cond_0

    .line 1022
    const/high16 v10, 0x2000000

    if-ne v6, v10, :cond_0

    .line 1023
    and-int/lit8 v9, v7, 0xf

    .line 1024
    .local v9, "zone":I
    if-eqz v9, :cond_0

    .line 1025
    and-int/lit8 v0, v0, -0x4

    .line 1026
    const/4 v10, 0x3

    if-nez v10, :cond_1

    if-nez v5, :cond_1

    .line 1027
    or-int/lit8 v0, v0, 0x8

    goto :goto_0

    .line 1028
    :cond_1
    if-nez v11, :cond_2

    .line 1029
    and-int/lit8 v0, v0, -0x9

    .line 1030
    or-int/lit8 v0, v0, 0x20

    .line 1031
    const/4 v5, 0x1

    goto :goto_0

    .line 1032
    :cond_2
    const/4 v10, 0x4

    if-nez v10, :cond_0

    .line 1033
    and-int/lit8 v0, v0, -0x9

    .line 1034
    or-int/lit8 v0, v0, 0x10

    .line 1035
    const/4 v5, 0x1

    goto :goto_0

    .line 1045
    .end local v8    # "r":Lcom/android/server/am/ActivityRecord;
    .end local v9    # "zone":I
    :cond_3
    if-eqz v0, :cond_4

    .line 1046
    and-int/lit8 v10, v0, 0x10

    if-eqz v10, :cond_7

    and-int/lit8 v10, v0, 0x20

    if-eqz v10, :cond_7

    .line 1048
    const/16 v10, 0x40

    iput v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    .line 1054
    :cond_4
    :goto_1
    const/4 v10, 0x0

    invoke-virtual {p0, v1, v10}, Lcom/android/server/am/MultiWindowManagerService;->notifyMultiDisplayState(ZZ)Z

    .line 1059
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_5
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    iget v11, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    if-eq v10, v11, :cond_8

    .line 1060
    iget-object v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCallbackDeathRecipients:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;

    .line 1061
    .local v3, "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    iget v10, v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mType:I

    if-nez v10, :cond_6

    .line 1062
    iget-object v10, v3, Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;->mCallback:Landroid/os/IBinder;

    invoke-static {v10}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;

    move-result-object v2

    .line 1064
    .local v2, "cb":Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;
    :try_start_0
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    invoke-interface {v2, v10}, Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;->onArrangeStateUpdate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1065
    :catch_0
    move-exception v10

    goto :goto_2

    .line 1050
    .end local v2    # "cb":Landroid/sec/multiwindow/impl/IMultiWindowServiceCallback;
    .end local v3    # "cdr":Lcom/android/server/am/MultiWindowManagerService$CallbackDeathRecipient;
    :cond_7
    iput v0, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    goto :goto_1

    .line 1070
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_8
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    iput v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mLastArrangeState:I

    .line 1071
    iget v10, p0, Lcom/android/server/am/MultiWindowManagerService;->mCurrentArrangeState:I

    return v10
.end method

.method public updateSplitZone(Lcom/android/server/am/ActivityRecord;Ljava/util/ArrayList;Z)V
    .locals 3
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .param p3, "useDefault"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1339
    .local p2, "frontActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v1, v1, Lcom/android/server/am/TaskRecord;->taskId:I

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, v2, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/MultiWindowManagerService;->getWindowInfo(ILandroid/content/ComponentName;)Landroid/os/Bundle;

    move-result-object v0

    .line 1349
    .local v0, "targetWinInfo":Landroid/os/Bundle;
    return-void
.end method

.method public updateSplitZoneAfterDestroy(Lcom/android/server/am/ActivityRecord;Ljava/util/List;)Z
    .locals 1
    .param p1, "r"    # Lcom/android/server/am/ActivityRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ActivityRecord;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1335
    .local p2, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v0, 0x1

    return v0
.end method

.method public updateWindowInfo(ILandroid/content/ComponentName;Landroid/os/Bundle;)V
    .locals 5
    .param p1, "taskId"    # I
    .param p2, "realActivity"    # Landroid/content/ComponentName;
    .param p3, "winInfo"    # Landroid/os/Bundle;

    .prologue
    .line 1352
    iget-object v3, p0, Lcom/android/server/am/MultiWindowManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1353
    if-nez p3, :cond_0

    .line 1354
    :try_start_0
    const-string v2, "MultiWindowManagerService"

    const-string/jumbo v4, "updateWindowInfo: failed due because winInfo is null."

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    monitor-exit v3

    .line 1368
    :goto_0
    return-void

    .line 1358
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByTaskId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 1359
    .local v1, "taskBundle":Landroid/os/Bundle;
    if-eqz v1, :cond_1

    .line 1360
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1363
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/MultiWindowManagerService;->mWindowInfoMapByComponent:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1364
    .local v0, "cmpBundle":Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 1365
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1367
    :cond_2
    monitor-exit v3

    goto :goto_0

    .end local v0    # "cmpBundle":Landroid/os/Bundle;
    .end local v1    # "taskBundle":Landroid/os/Bundle;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
