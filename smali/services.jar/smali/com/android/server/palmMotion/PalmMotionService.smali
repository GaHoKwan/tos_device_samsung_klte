.class public Lcom/android/server/palmMotion/PalmMotionService;
.super Landroid/hardware/palmMotion/IPalmMotionService$Stub;
.source "PalmMotionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;,
        Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;,
        Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;,
        Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;,
        Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static final GESUTRE_LOGGING_APP_ID:Ljava/lang/String; = "com.android.server.palmMotion"

.field private static final GESUTRE_LOGGING_FEATURE:Ljava/lang/String; = "PALM"

.field public static final IS_VISIBLE_WINDOW:Ljava/lang/String; = "AxT9IME.isVisibleWindow"

.field public static final RESPONSE_AXT9INFO:Ljava/lang/String; = "ResponseAxT9Info"

.field private static final SWEEP_DOWN:I = 0x3

.field private static final SWEEP_LEFT:I = 0x2

.field private static final SWEEP_RIGHT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "PalmMotionService"

.field static g_IsBootCompleted:Z

.field private static mInputManagerService:Lcom/android/server/input/InputManagerService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mGestureSurfaceTouch:Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

.field mLockScreenReceiver:Landroid/content/BroadcastReceiver;

.field private mPalmMotionInputChannel:Landroid/view/InputChannel;

.field private mPalmMotionInputEventReceiver:Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;

.field private mPalmMotionRecognizer:Z

.field private mPalmObserver:Landroid/database/ContentObserver;

.field private mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

.field private mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

.field mSIPKeyboardReceiver:Landroid/content/BroadcastReceiver;

.field private mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

.field private mUseGestureDetectorTouchEventEx:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    const-string v0, "ro.debuggable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/palmMotion/PalmMotionService;->DEBUG:Z

    .line 55
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/palmMotion/PalmMotionService;->g_IsBootCompleted:Z

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/palmMotion/PalmMotionService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "Im"    # Lcom/android/server/input/InputManagerService;

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Landroid/hardware/palmMotion/IPalmMotionService$Stub;-><init>()V

    .line 56
    iput-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mUseGestureDetectorTouchEventEx:Z

    .line 61
    iput-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z

    .line 65
    iput-object v4, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionInputEventReceiver:Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;

    .line 725
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/palmMotion/PalmMotionService$1;-><init>(Lcom/android/server/palmMotion/PalmMotionService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmObserver:Landroid/database/ContentObserver;

    .line 749
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$2;

    invoke-direct {v0, p0}, Lcom/android/server/palmMotion/PalmMotionService$2;-><init>(Lcom/android/server/palmMotion/PalmMotionService;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    .line 760
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$3;

    invoke-direct {v0, p0}, Lcom/android/server/palmMotion/PalmMotionService$3;-><init>(Lcom/android/server/palmMotion/PalmMotionService;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSIPKeyboardReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    .line 69
    sput-object p2, Lcom/android/server/palmMotion/PalmMotionService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    .line 70
    const-string v0, "PalmMotionService"

    const-string v1, "PalmMotionService(context, Im)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    invoke-direct {v0, p0, v4}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;-><init>(Lcom/android/server/palmMotion/PalmMotionService;Lcom/android/server/palmMotion/PalmMotionService$1;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    .line 73
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    invoke-direct {v0, p0, v4}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;-><init>(Lcom/android/server/palmMotion/PalmMotionService;Lcom/android/server/palmMotion/PalmMotionService$1;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    .line 74
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-direct {v0, p0, v4}, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;-><init>(Lcom/android/server/palmMotion/PalmMotionService;Lcom/android/server/palmMotion/PalmMotionService$1;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    .line 75
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

    invoke-direct {v0, p1}, Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mGestureSurfaceTouch:Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

    .line 76
    sget-object v0, Lcom/android/server/palmMotion/PalmMotionService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    const-string v1, "PalmMotionService"

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->monitorInput(Ljava/lang/String;)Landroid/view/InputChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionInputChannel:Landroid/view/InputChannel;

    .line 77
    sget-object v0, Lcom/android/server/palmMotion/PalmMotionService;->mInputManagerService:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionInputChannel:Landroid/view/InputChannel;

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->setMonitorChannelFilter(Landroid/view/InputChannel;I)V

    .line 80
    new-instance v0, Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionInputChannel:Landroid/view/InputChannel;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;-><init>(Lcom/android/server/palmMotion/PalmMotionService;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionInputEventReceiver:Lcom/android/server/palmMotion/PalmMotionService$PalmMotionInputEventReceiver;

    .line 81
    invoke-direct {p0}, Lcom/android/server/palmMotion/PalmMotionService;->SetContentObserver()V

    .line 83
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 84
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mLockScreenReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 86
    new-instance v3, Landroid/content/IntentFilter;

    .end local v3    # "filter":Landroid/content/IntentFilter;
    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 87
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    const-string v0, "ResponseAxT9Info"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSIPKeyboardReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 89
    return-void
.end method

.method private SetContentObserver()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 698
    const-string v1, "PalmMotionService"

    const-string v2, "[Surface Touch] SetContentObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_motion_engine"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 701
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_merged_mute_pause"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 702
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_palm_touch"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 703
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "surface_motion_engine"

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    .line 704
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "motion_merged_mute_pause"

    invoke-static {v1, v2, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 705
    .local v0, "settingMutePause":I
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "surface_palm_touch"

    invoke-static {v2, v3, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 706
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v2, v2, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    and-int/2addr v2, v0

    iput v2, v1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    .line 721
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "surface_palm_swipe"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 722
    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget-object v2, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "surface_palm_swipe"

    invoke-static {v2, v3, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, v1, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmSweep:I

    .line 723
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/palmMotion/PalmMotionService;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/palmMotion/PalmMotionService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;

    .prologue
    .line 46
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mUseGestureDetectorTouchEventEx:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/palmMotion/PalmMotionService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mUseGestureDetectorTouchEventEx:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/palmMotion/PalmMotionService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/palmMotion/PalmMotionService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;
    .param p1, "x1"    # Z

    .prologue
    .line 46
    iput-boolean p1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/palmMotion/PalmMotionService;)Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/palmMotion/PalmMotionService;

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mGestureSurfaceTouch:Lcom/android/server/palmMotion/PalmMotionService$GestureSurfaceTouch;

    return-object v0
.end method


# virtual methods
.method public onTouchEvent_ex(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 653
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    if-ne v0, v2, :cond_6

    .line 654
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0, p1}, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->PreUpdate(Landroid/view/MotionEvent;)V

    .line 656
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z

    if-nez v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->SsumSize:F

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 658
    iput-boolean v2, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z

    .line 662
    :cond_0
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0}, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Initialize()V

    .line 664
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->Initialize(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 665
    :cond_2
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->Initialize(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 668
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z

    if-ne v0, v2, :cond_6

    .line 669
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0, p1}, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->Update(Landroid/view/MotionEvent;)V

    .line 670
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-ne v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->Process(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 671
    :cond_4
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    invoke-virtual {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->Process(Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;)V

    .line 673
    :cond_5
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    iget-object v1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    # getter for: Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->access$700(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;)Z

    move-result v1

    # setter for: Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mPreSweepDown:Z
    invoke-static {v0, v1}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->access$602(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;Z)Z

    .line 675
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mAction:I

    if-ne v0, v2, :cond_6

    .line 677
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    # setter for: Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v0, v3}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->access$702(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;Z)Z

    .line 678
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    # setter for: Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z
    invoke-static {v0, v3}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->access$1102(Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;Z)Z

    .line 679
    iput-boolean v3, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmMotionRecognizer:Z

    .line 684
    :cond_6
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmSweep:I

    if-eq v0, v2, :cond_8

    .line 686
    :cond_7
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    # setter for: Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->mSweepDown:Z
    invoke-static {v0, v3}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->access$702(Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;Z)Z

    .line 689
    :cond_8
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingSurfaceMotionEngine:I

    if-ne v0, v2, :cond_9

    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mSurfaceTouchSharingData:Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;

    iget v0, v0, Lcom/android/server/palmMotion/PalmMotionService$SurfaceTouchSharingData;->mSettingPalmTouch:I

    if-eq v0, v2, :cond_a

    .line 691
    :cond_9
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmTouchRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;

    # setter for: Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->mPalmDown:Z
    invoke-static {v0, v3}, Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;->access$1102(Lcom/android/server/palmMotion/PalmMotionService$PalmTouchRecognizer;Z)Z

    .line 694
    :cond_a
    iget-object v0, p0, Lcom/android/server/palmMotion/PalmMotionService;->mPalmSweepRecognizer:Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;

    invoke-virtual {v0}, Lcom/android/server/palmMotion/PalmMotionService$PalmSweepRecognizer;->getSweepDown()Z

    move-result v0

    return v0
.end method

.method public setUseGestureDetectorEx(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 769
    iput-boolean p1, p0, Lcom/android/server/palmMotion/PalmMotionService;->mUseGestureDetectorTouchEventEx:Z

    .line 770
    return-void
.end method
