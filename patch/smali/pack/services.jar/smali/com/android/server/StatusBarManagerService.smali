.class public Lcom/android/server/StatusBarManagerService;
.super Lcom/android/internal/statusbar/IStatusBarService$Stub;
.source "StatusBarManagerService.java"

# interfaces
.implements Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/StatusBarManagerService$NotificationCallbacks;,
        Lcom/android/server/StatusBarManagerService$DisableRecord;
    }
.end annotation


# static fields
.field private static final ANDROID:Ljava/lang/String; = "android"

.field private static final ANDROID_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field private static final BRIDGE:Ljava/lang/String; = "com.sec.knox.bridge"

.field static final CHATON:Ljava/lang/String; = "com.sec.chaton"

.field static final EMAIL:Ljava/lang/String; = "com.android.email"

.field private static final ENABLE_DENIAL_LOG:Ljava/lang/String; = "com.sec.esdk.elm"

.field static final FACEBOOK:Ljava/lang/String; = "com.facebook.katana"

.field static final GET_ALL_NOTIFICATIONS_INTENT:Ljava/lang/String; = "com.system.action.GET_ALL_NOTIFICATIONS"

.field static final GMAIL:Ljava/lang/String; = "com.google.android.gm"

.field static final GOOGLEPLUS:Ljava/lang/String; = "com.google.android.apps.plus"

.field static final GOOGLETALK:Ljava/lang/String; = "com.google.android.gsf"

.field static final KAKAOTALK:Ljava/lang/String; = "com.kakao.talk"

.field private static final KEYGUARD:Ljava/lang/String; = "com.android.keyguard"

.field private static LatestGeneralGradationMode:Z = false

.field private static LatestGeneralGradationModeColor:Z = false

.field public static final NOTIFICATION_CONTENT_INTENT_PRESENT:Ljava/lang/String; = "notification_content_intent_present"

.field public static final NOTIFICATION_DELETE_INTENT_PRESENT:Ljava/lang/String; = "notification_delete_intent_present"

.field static final NOTIFICATION_FIELD_DISABLE_STATUS_BAR_OPEN:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Disable"

.field static final NOTIFICATION_FIELD_KEY:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Key"

.field static final NOTIFICATION_FIELD_NOTIFICATION:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Notification"

.field static final NOTIFICATION_FIELD_TYPE:Ljava/lang/String; = "com.system.notification.DashNotificationManagerService.Type"

.field public static final NOTIFICATION_ID_KEY:Ljava/lang/String; = "notification_id"

.field static final NOTIFICATION_INTENT:Ljava/lang/String; = "com.system.action.NOTIFICATION"

.field public static final NOTIFICATION_KEY:Ljava/lang/String; = "notification"

.field public static final NOTIFICATION_PACKAGE_KEY:Ljava/lang/String; = "notification_package"

.field public static final NOTIFICATION_PID_KEY:Ljava/lang/String; = "notification_pid"

.field static final NOTIFICATION_READ_PERMISSIONS:Ljava/lang/String; = "com.system.permission.READ_NOTIFICATIONS"

.field public static final NOTIFICATION_SCORE_KEY:Ljava/lang/String; = "notification_score"

.field public static final NOTIFICATION_TAG_KEY:Ljava/lang/String; = "notification_tag"

.field static final NOTIFICATION_TYPE_ADD:I = 0x1

.field static final NOTIFICATION_TYPE_REFRESH:I = 0x4

.field static final NOTIFICATION_TYPE_REMOVE:I = 0x3

.field static final NOTIFICATION_TYPE_UPDATE:I = 0x2

.field public static final NOTIFICATION_UID_KEY:Ljava/lang/String; = "notification_uid"

.field private static final NOTIF_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.knox.rcp.components"

.field static final PACKAGE_FILTER:[Ljava/lang/String;

.field static final PACKAGE_FILTER2:[Ljava/lang/String;

.field private static final SD_CARD:Ljava/lang/String; = "com.android.systemui"

.field static final SMS:Ljava/lang/String; = "com.android.mms"

.field static final SPEW:Z = false

.field private static final S_PEN:Ljava/lang/String; = "com.sec.android.pagebuddynotisvc"

.field static final TAG:Ljava/lang/String; = "StatusBarManagerService"

.field static final TWITTER:Ljava/lang/String; = "com.twitter.android"

.field static final TW_TAG:Ljava/lang/String; = "STATUSBAR-StatusBarManagerService"

.field public static final VERSION_KEY:Ljava/lang/String; = "version"

.field private static bUseWindowTransGradation:Z


# instance fields
.field volatile mBar:Lcom/android/internal/statusbar/IStatusBar;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field final mContext:Landroid/content/Context;

.field mCurrentUserId:I

.field mDisableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDisableRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/StatusBarManagerService$DisableRecord;",
            ">;"
        }
    .end annotation
.end field

.field mDisabled:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mHandler:Landroid/os/Handler;

.field mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

.field mImeBackDisposition:I

.field mImeToken:Landroid/os/IBinder;

.field mImeWindowVis:I

.field mLock:Ljava/lang/Object;

.field mMenuVisible:Z

.field mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

.field mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mNotifications:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelExpandState:Z

.field private mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

.field mSysUiVisToken:Landroid/os/IBinder;

.field mSystemUiVisibility:I

.field final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    sput-boolean v3, Lcom/android/server/StatusBarManagerService;->LatestGeneralGradationModeColor:Z

    .line 87
    sput-boolean v3, Lcom/android/server/StatusBarManagerService;->LatestGeneralGradationMode:Z

    .line 88
    sput-boolean v3, Lcom/android/server/StatusBarManagerService;->bUseWindowTransGradation:Z

    .line 1056
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.twitter.android"

    aput-object v1, v0, v3

    const-string v1, "com.sec.chaton"

    aput-object v1, v0, v4

    const-string v1, "com.google.android.apps.plus"

    aput-object v1, v0, v5

    const-string v1, "com.android.mms"

    aput-object v1, v0, v6

    const-string v1, "com.google.android.gm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.kakao.talk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.facebook.katana"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.google.android.gsf"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/StatusBarManagerService;->PACKAGE_FILTER:[Ljava/lang/String;

    .line 1106
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.samsung.knox.rcp.components"

    aput-object v1, v0, v3

    const-string v1, "android"

    aput-object v1, v0, v4

    const-string v1, "com.sec.android.pagebuddynotisvc"

    aput-object v1, v0, v5

    const-string v1, "com.android.systemui"

    aput-object v1, v0, v6

    const-string v1, "com.sec.esdk.elm"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sec.knox.bridge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.android.keyguard"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/StatusBarManagerService;->PACKAGE_FILTER2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 153
    invoke-direct {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;-><init>()V

    .line 92
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance v2, Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-direct {v2}, Lcom/android/internal/statusbar/StatusBarIconList;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 96
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    .line 99
    iput-object v4, p0, Lcom/android/server/StatusBarManagerService;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 112
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    .line 113
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    .line 114
    iput v3, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    .line 116
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    .line 118
    iput v3, p0, Lcom/android/server/StatusBarManagerService;->mSystemUiVisibility:I

    .line 119
    iput-boolean v3, p0, Lcom/android/server/StatusBarManagerService;->mMenuVisible:Z

    .line 120
    iput v3, p0, Lcom/android/server/StatusBarManagerService;->mImeWindowVis:I

    .line 122
    iput-object v4, p0, Lcom/android/server/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 125
    iput-boolean v3, p0, Lcom/android/server/StatusBarManagerService;->mPanelExpandState:Z

    .line 882
    new-instance v2, Lcom/android/server/StatusBarManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/StatusBarManagerService$7;-><init>(Lcom/android/server/StatusBarManagerService;)V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 914
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    .line 915
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 154
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    .line 155
    iput-object p2, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 156
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/WindowManagerService;->setOnHardKeyboardStatusChangeListener(Lcom/android/server/wm/WindowManagerService$OnHardKeyboardStatusChangeListener;)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 159
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    const v3, 0x107000e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/statusbar/StatusBarIconList;->defineSlots([Ljava/lang/String;)V

    .line 162
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 163
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "com.system.action.GET_ALL_NOTIFICATIONS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v4, "com.system.permission.READ_NOTIFICATIONS"

    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 166
invoke-virtual/range {p0 .. p2}, Lcom/android/server/StatusBarManagerService;->tos_StatusBarManagerService_init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/StatusBarManagerService;IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StatusBarManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/os/IBinder;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/StatusBarManagerService;->disableInternal(IILandroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/StatusBarManagerService;ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/StatusBarManagerService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;
    .param p3, "x3"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method private disableInternal(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 229
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 230
    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 231
    monitor-exit v1

    .line 232
    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private disableLocked(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 239
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/StatusBarManagerService;->manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 242
    iget v1, p0, Lcom/android/server/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/server/StatusBarManagerService;->gatherDisableActionsLocked(I)I

    move-result v0

    .line 243
    .local v0, "net":I
    iget v1, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    if-eq v0, v1, :cond_0

    .line 244
    iput v0, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    .line 245
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/StatusBarManagerService$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/StatusBarManagerService$1;-><init>(Lcom/android/server/StatusBarManagerService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v1, :cond_0

    .line 252
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->disable(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 253
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private enforceExpandStatusBar()V
    .locals 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.EXPAND_STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method private enforceStatusBar()V
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method private enforceStatusBarService()V
    .locals 3

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    const-string v2, "StatusBarManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method private getService()Landroid/app/enterprise/IRestrictionPolicy;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    if-nez v0, :cond_0

    .line 104
    const-string v0, "restriction_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IRestrictionPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/StatusBarManagerService;->mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    return-object v0
.end method

.method private notificationMatches(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p1, "nt"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 1013
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v0

    if-ne v0, p4, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 8
    .param p1, "notificationType"    # I
    .param p2, "key"    # Landroid/os/IBinder;
    .param p3, "nt"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 958
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 960
    .local v2, "notificationBundle":Landroid/os/Bundle;
    const-string/jumbo v3, "version"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 962
    const-string v3, "notification_id"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 963
    const-string v3, "notification_package"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    const-string v3, "notification_tag"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    const-string v3, "notification_uid"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 966
    const-string v3, "notification_pid"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 967
    const-string v3, "notification_score"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getScore()I

    move-result v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 968
    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 969
    const-string v6, "notification_delete_intent_present"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 971
    const-string v6, "notification_content_intent_present"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 973
    const-string v3, "notification"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 974
    const-string v3, "android.largeIcon"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 975
    const-string v3, "android.largeIcon.big"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 976
    const-string v3, "android.picture"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 979
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.system.action.NOTIFICATION"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 980
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "com.system.notification.DashNotificationManagerService.Type"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 981
    const-string v3, "com.system.notification.DashNotificationManagerService.Notification"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 983
    const-string v3, "com.system.notification.DashNotificationManagerService.Disable"

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->isDisabledStatusBarOpenOnFullScreen()Z

    move-result v6

    invoke-virtual {v1, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 985
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v6, "com.system.permission.READ_NOTIFICATIONS"

    invoke-virtual {v3, v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 987
    const-string v3, "STATUSBAR-StatusBarManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendNotification("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 992
    .local v0, "flagdbg":Ljava/lang/StringBuilder;
    if-ne p1, v4, :cond_4

    .line 993
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : ADD("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1002
    :cond_1
    :goto_2
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/16 v4, 0x32

    if-le v3, v4, :cond_6

    .line 1003
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .end local v0    # "flagdbg":Ljava/lang/StringBuilder;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    move v3, v5

    .line 969
    goto/16 :goto_0

    :cond_3
    move v3, v5

    .line 971
    goto/16 :goto_1

    .line 995
    .restart local v0    # "flagdbg":Ljava/lang/StringBuilder;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_4
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    .line 996
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : UPDATE("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 998
    :cond_5
    const/4 v3, 0x3

    if-ne p1, v3, :cond_1

    .line 999
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : REMOVE("

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") - "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1010
    :cond_6
    return-void
.end method

.method private updateUiVisibilityLocked(II)V
    .locals 2
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 411
    iget v0, p0, Lcom/android/server/StatusBarManagerService;->mSystemUiVisibility:I

    if-eq v0, p1, :cond_0

    .line 412
    iput p1, p0, Lcom/android/server/StatusBarManagerService;->mSystemUiVisibility:I

    .line 413
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/StatusBarManagerService$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/StatusBarManagerService$4;-><init>(Lcom/android/server/StatusBarManagerService;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    :cond_0
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/service/notification/StatusBarNotification;)Landroid/os/IBinder;
    .locals 3
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 663
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v2

    .line 664
    :try_start_0
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 665
    .local v0, "key":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 668
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
    :cond_0
    :goto_0
    const/4 v1, 0x1

    :try_start_2
    invoke-direct {p0, v1, v0, p1}, Lcom/android/server/StatusBarManagerService;->sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    .line 676
    monitor-exit v2

    return-object v0

    .line 677
    .end local v0    # "key":Landroid/os/IBinder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 669
    .restart local v0    # "key":Landroid/os/IBinder;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public applyEDMPolicy()V
    .locals 1

    .prologue
    .line 399
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 401
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 403
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->applyEDMPolicy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    :cond_0
    :goto_0
    return-void

    .line 404
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public blockRecentWindow(Z)V
    .locals 3
    .param p1, "block"    # Z

    .prologue
    .line 1260
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 1261
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 1263
    :try_start_0
    const-string v0, "StatusBarManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockRecentWindow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1264
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->blockRecentWindow(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1268
    :cond_0
    :goto_0
    return-void

    .line 1265
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public cancelPreloadRecentApps()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->cancelPreloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :cond_0
    :goto_0
    return-void

    .line 471
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public collapsePanels()V
    .locals 1

    .prologue
    .line 191
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 193
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateCollapsePanels()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 196
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disable(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 1
    .param p1, "what"    # I
    .param p2, "token"    # Landroid/os/IBinder;
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 223
    iget v0, p0, Lcom/android/server/StatusBarManagerService;->mCurrentUserId:I

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->disableInternal(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public disableAsUser(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/StatusBarManagerService;->disableInternal(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 822
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.DUMP"

    invoke-virtual {v5, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 824
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: can\'t dump StatusBar from from pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    :goto_0
    return-void

    .line 830
    :cond_0
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v6

    .line 831
    :try_start_0
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v5, p2}, Lcom/android/internal/statusbar/StatusBarIconList;->dump(Ljava/io/PrintWriter;)V

    .line 832
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 834
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v6

    .line 835
    const/4 v2, 0x0

    .line 836
    .local v2, "i":I
    :try_start_1
    const-string v5, "Notification list:"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 838
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    const-string v7, "  %2d: %s\n"

    const/4 v5, 0x2

    new-array v8, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    const/4 v9, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v9

    invoke-virtual {p2, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 839
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 832
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "i":I
    .end local v3    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 841
    .restart local v2    # "i":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_1
    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 843
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 844
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisabled=0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 845
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 846
    .local v0, "N":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisableRecords.size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 847
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_2

    .line 848
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .line 849
    .local v4, "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] userId="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->userId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " what=0x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " pkg="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " token="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v7, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 847
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 841
    .end local v0    # "N":I
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :catchall_1
    move-exception v5

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v5

    .line 854
    .restart local v0    # "N":I
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_2
    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 860
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 861
    :try_start_7
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 862
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mDisableList.size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 863
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_3

    .line 864
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 865
    .local v4, "tok":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 863
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 854
    .end local v0    # "N":I
    .end local v4    # "tok":Ljava/lang/String;
    :catchall_2
    move-exception v5

    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v5

    .line 867
    .restart local v0    # "N":I
    :cond_3
    :try_start_9
    monitor-exit v6
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 868
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 869
    :try_start_a
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 870
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  mNotificationList.size="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_4

    .line 872
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 873
    .restart local v4    # "tok":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "    ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "] "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 871
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 867
    .end local v4    # "tok":Ljava/lang/String;
    :catchall_3
    move-exception v5

    :try_start_b
    monitor-exit v6
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    throw v5

    .line 875
    :cond_4
    :try_start_c
    monitor-exit v6

    goto/16 :goto_0

    :catchall_4
    move-exception v5

    monitor-exit v6
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v5
.end method

.method public tos_org_expandNotificationsPanel()V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 178
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    .line 184
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandNotificationsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :cond_1
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public expandSettingsPanel()V
    .locals 1

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceExpandStatusBar()V

    .line 204
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    .line 210
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->animateExpandSettingsPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_1
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method gatherDisableActionsLocked(I)I
    .locals 8
    .param p1, "userId"    # I

    .prologue
    .line 793
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 795
    .local v0, "N":I
    const/4 v4, 0x0

    .line 796
    .local v4, "net":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 797
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .line 798
    .local v5, "rec":Lcom/android/server/StatusBarManagerService$DisableRecord;
    iget v6, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v6, p1, :cond_0

    .line 799
    iget v6, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    or-int/2addr v4, v6

    .line 796
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 803
    .end local v5    # "rec":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_1
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v7, "enterprise_policy"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 806
    .local v2, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->getService()Landroid/app/enterprise/IRestrictionPolicy;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mRestrictionService:Landroid/app/enterprise/IRestrictionPolicy;

    const/4 v7, 0x1

    invoke-interface {v6, v7, p1}, Landroid/app/enterprise/IRestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v6

    if-eqz v6, :cond_3

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/app/enterprise/EnterpriseDeviceManager;->getSecurityPolicy()Landroid/app/enterprise/SecurityPolicy;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/SecurityPolicy;->isDodBannerVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_4

    .line 808
    :cond_3
    const/high16 v6, 0x10000

    or-int/2addr v4, v6

    .line 814
    :cond_4
    :goto_1
    return v4

    .line 810
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e":Landroid/os/RemoteException;
    const-string v6, "StatusBarManagerService"

    const-string v7, "Failed talking with restriction policy"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getAllNotifications()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1083
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    const-string v4, "com.system.permission.READ_NOTIFICATIONS"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    .line 1084
    iget-object v4, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v4

    .line 1085
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1086
    .local v2, "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 1088
    .local v1, "notification":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/StatusBarManagerService;->isNotificationAllowed(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1089
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1093
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "notification":Landroid/service/notification/StatusBarNotification;
    .end local v2    # "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1092
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v2    # "notificationList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/service/notification/StatusBarNotification;>;"
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v2
.end method

.method public getAllNotificationsForBridge(Z)Ljava/util/List;
    .locals 10
    .param p1, "includeCallingUserNotifs"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1121
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1122
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    invoke-static {}, Landroid/os/PersonaManager;->getKnoxInfo()Landroid/os/Bundle;

    move-result-object v5

    .line 1123
    .local v5, "versionInfo":Landroid/os/Bundle;
    const-string v6, "2.0"

    const-string/jumbo v7, "version"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1124
    invoke-static {}, Lcom/android/server/StatusBarManagerService;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 1125
    .local v0, "callingUser":Landroid/os/UserHandle;
    const-string v7, "StatusBarManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAllNotifications() get all of the notifications "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz p1, :cond_1

    const-string v6, ""

    :goto_0
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget-object v7, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v7

    .line 1130
    :try_start_0
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1132
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/StatusBarNotification;

    .line 1133
    .local v4, "n":Landroid/service/notification/StatusBarNotification;
    const-string v6, "StatusBarManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "UserHandle for notif = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/android/server/StatusBarManagerService;->PACKAGE_FILTER2:[Ljava/lang/String;

    invoke-virtual {p0, v6, v8}, Lcom/android/server/StatusBarManagerService;->isNotificationAllowed(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1142
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.largeIcon"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1143
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.largeIcon.big"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1144
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget-object v6, v6, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v8, "android.picture"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1146
    if-eqz p1, :cond_2

    .line 1147
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1148
    const-string v6, "StatusBarManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "added notif = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1157
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "n":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 1125
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "that do NOT pertain to userHandle = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 1152
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "n":Landroid/service/notification/StatusBarNotification;
    :cond_2
    :try_start_1
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1153
    const-string v6, "StatusBarManagerService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "added notif = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1157
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    .end local v4    # "n":Landroid/service/notification/StatusBarNotification;
    :cond_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1158
    const-string v6, "StatusBarManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAllNotifications() size of list to return == "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    .end local v0    # "callingUser":Landroid/os/UserHandle;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_4
    return-object v3
.end method

.method public getPanelExpandState()Z
    .locals 1

    .prologue
    .line 1256
    iget-boolean v0, p0, Lcom/android/server/StatusBarManagerService;->mPanelExpandState:Z

    return v0
.end method

.method public hideCallView()V
    .locals 1

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 550
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 552
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->hideCallOnGoingView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 553
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method isNotificationAllowed(Ljava/lang/String;)Z
    .locals 7
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1068
    const-string/jumbo v6, "sys.hmt.connected"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1078
    :cond_0
    :goto_0
    return v4

    .line 1073
    :cond_1
    sget-object v0, Lcom/android/server/StatusBarManagerService;->PACKAGE_FILTER:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 1074
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1073
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3    # "pkg":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 1078
    goto :goto_0
.end method

.method isNotificationAllowed(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "PKG_FILTER"    # [Ljava/lang/String;

    .prologue
    .line 1111
    move-object v0, p2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1112
    .local v3, "pkg":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1113
    const/4 v4, 0x0

    .line 1116
    .end local v3    # "pkg":Ljava/lang/String;
    :goto_1
    return v4

    .line 1111
    .restart local v3    # "pkg":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1116
    .end local v3    # "pkg":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public isScreenCaptureEnabled()Z
    .locals 1

    .prologue
    .line 562
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 565
    const/4 v0, 0x1

    return v0
.end method

.method public isStatusBarExpandEnabled()Z
    .locals 2

    .prologue
    .line 571
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 573
    const/high16 v0, 0x10000

    iget v1, p0, Lcom/android/server/StatusBarManagerService;->mDisabled:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method manageDisableListLocked(IILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 10
    .param p1, "userId"    # I
    .param p2, "what"    # I
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 727
    const-string v6, "STATUSBAR-StatusBarManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "manageDisableList what=0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " pkg="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 735
    .local v2, "flagdbg":Ljava/lang/StringBuilder;
    const/high16 v6, 0x10000

    and-int/2addr v6, p2

    if-eqz v6, :cond_1

    const-string v6, "EXPAND "

    :goto_0
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const/high16 v6, 0x20000

    and-int/2addr v6, p2

    if-eqz v6, :cond_2

    const-string v6, "ICONS "

    :goto_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    const/high16 v6, 0x40000

    and-int/2addr v6, p2

    if-eqz v6, :cond_3

    const-string v6, "ALERTS "

    :goto_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    const/high16 v6, 0x80000

    and-int/2addr v6, p2

    if-eqz v6, :cond_4

    const-string v6, "TICKER "

    :goto_3
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const/high16 v6, 0x100000

    and-int/2addr v6, p2

    if-eqz v6, :cond_5

    const-string v6, "SYSTEM_INFO "

    :goto_4
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 740
    const/high16 v6, 0x400000

    and-int/2addr v6, p2

    if-eqz v6, :cond_6

    const-string v6, "BACK "

    :goto_5
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    const/high16 v6, 0x200000

    and-int/2addr v6, p2

    if-eqz v6, :cond_7

    const-string v6, "HOME "

    :goto_6
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 742
    const/high16 v6, 0x1000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_8

    const-string v6, "RECENT "

    :goto_7
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 743
    const/high16 v6, 0x800000

    and-int/2addr v6, p2

    if-eqz v6, :cond_9

    const-string v6, "CLOCK "

    :goto_8
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const/high16 v6, 0x2000000

    and-int/2addr v6, p2

    if-eqz v6, :cond_a

    const-string v6, "SEARCH "

    :goto_9
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    if-nez p2, :cond_0

    .line 746
    const-string v6, "CLEAR"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    :cond_0
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    :goto_a
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/16 v7, 0x32

    if-le v6, v7, :cond_b

    .line 750
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableList:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    .line 735
    :cond_1
    const-string v6, ""

    goto/16 :goto_0

    .line 736
    :cond_2
    const-string v6, ""

    goto/16 :goto_1

    .line 737
    :cond_3
    const-string v6, ""

    goto/16 :goto_2

    .line 738
    :cond_4
    const-string v6, ""

    goto/16 :goto_3

    .line 739
    :cond_5
    const-string v6, ""

    goto :goto_4

    .line 740
    :cond_6
    const-string v6, ""

    goto :goto_5

    .line 741
    :cond_7
    const-string v6, ""

    goto :goto_6

    .line 742
    :cond_8
    const-string v6, ""

    goto :goto_7

    .line 743
    :cond_9
    const-string v6, ""

    goto :goto_8

    .line 744
    :cond_a
    const-string v6, ""

    goto :goto_9

    .line 758
    :cond_b
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 759
    .local v0, "N":I
    const/4 v5, 0x0

    .line 761
    .local v5, "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v0, :cond_c

    .line 762
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .line 763
    .local v4, "t":Lcom/android/server/StatusBarManagerService$DisableRecord;
    iget-object v6, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    if-ne v6, p3, :cond_f

    iget v6, v4, Lcom/android/server/StatusBarManagerService$DisableRecord;->userId:I

    if-ne v6, p1, :cond_f

    .line 764
    move-object v5, v4

    .line 768
    .end local v4    # "t":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_c
    if-eqz p2, :cond_d

    invoke-interface {p3}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v6

    if-nez v6, :cond_10

    .line 769
    :cond_d
    if-eqz v5, :cond_e

    .line 770
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 771
    iget-object v6, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    invoke-interface {v6, v5, v9}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 789
    :cond_e
    :goto_c
    return-void

    .line 761
    .restart local v4    # "t":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 774
    .end local v4    # "t":Lcom/android/server/StatusBarManagerService$DisableRecord;
    :cond_10
    if-nez v5, :cond_11

    .line 775
    new-instance v5, Lcom/android/server/StatusBarManagerService$DisableRecord;

    .end local v5    # "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/server/StatusBarManagerService$DisableRecord;-><init>(Lcom/android/server/StatusBarManagerService;Lcom/android/server/StatusBarManagerService$1;)V

    .line 776
    .restart local v5    # "tok":Lcom/android/server/StatusBarManagerService$DisableRecord;
    iput p1, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->userId:I

    .line 778
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {p3, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 783
    iget-object v6, p0, Lcom/android/server/StatusBarManagerService;->mDisableRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    :cond_11
    iput p2, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->what:I

    .line 786
    iput-object p3, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->token:Landroid/os/IBinder;

    .line 787
    iput-object p4, v5, Lcom/android/server/StatusBarManagerService$DisableRecord;->pkg:Ljava/lang/String;

    goto :goto_c

    .line 780
    :catch_0
    move-exception v1

    .line 781
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_c
.end method

.method public onClearAllNotifications()V
    .locals 1

    .prologue
    .line 654
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 656
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onClearAll()V

    .line 657
    return-void
.end method

.method public onHardKeyboardStatusChange(ZZ)V
    .locals 2
    .param p1, "available"    # Z
    .param p2, "enabled"    # Z

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/StatusBarManagerService$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/StatusBarManagerService$6;-><init>(Lcom/android/server/StatusBarManagerService;ZZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 446
    return-void
.end method

.method public onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 648
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 650
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationClear(Ljava/lang/String;Ljava/lang/String;I)V

    .line 651
    return-void
.end method

.method public onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 634
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 636
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 637
    return-void
.end method

.method public onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "uid"    # I
    .param p5, "initialPid"    # I
    .param p6, "message"    # Ljava/lang/String;

    .prologue
    .line 641
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 644
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onNotificationError(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;)V

    .line 645
    return-void
.end method

.method public onPanelRevealed()V
    .locals 1

    .prologue
    .line 627
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 630
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    invoke-interface {v0}, Lcom/android/server/StatusBarManagerService$NotificationCallbacks;->onPanelRevealed()V

    .line 631
    return-void
.end method

.method public preloadRecentApps()V
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 461
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->preloadRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :cond_0
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public registerStatusBar(Lcom/android/internal/statusbar/IStatusBar;Lcom/android/internal/statusbar/StatusBarIconList;Ljava/util/List;Ljava/util/List;[ILjava/util/List;)V
    .locals 8
    .param p1, "bar"    # Lcom/android/internal/statusbar/IStatusBar;
    .param p2, "iconList"    # Lcom/android/internal/statusbar/StatusBarIconList;
    .param p5, "switches"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/statusbar/IStatusBar;",
            "Lcom/android/internal/statusbar/StatusBarIconList;",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;[I",
            "Ljava/util/List",
            "<",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 582
    .local p3, "notificationKeys":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .local p4, "notifications":Ljava/util/List;, "Ljava/util/List<Landroid/service/notification/StatusBarNotification;>;"
    .local p6, "binders":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 584
    const-string v4, "StatusBarManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerStatusBar bar="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    .line 586
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v5

    .line 587
    :try_start_0
    iget-object v4, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {p2, v4}, Lcom/android/internal/statusbar/StatusBarIconList;->copyFrom(Lcom/android/internal/statusbar/StatusBarIconList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 590
    :try_start_1
    const-string v4, "StatusBarManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIcons.size()="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v7}, Lcom/android/internal/statusbar/StatusBarIconList;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 603
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 604
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v5

    .line 605
    :try_start_3
    iget-object v4, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 606
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 607
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 609
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 591
    :catch_0
    move-exception v0

    .line 592
    .local v0, "e":Ljava/lang/NullPointerException;
    :try_start_4
    iget-object v4, p0, Lcom/android/server/StatusBarManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 593
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    const v6, 0x107000e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/internal/statusbar/StatusBarIconList;->defineSlots([Ljava/lang/String;)V

    .line 594
    const-string v4, "StatusBarManagerService"

    const-string v6, "defineSlots() called to recover null state!!!"

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 603
    .end local v0    # "e":Ljava/lang/NullPointerException;
    .end local v3    # "res":Landroid/content/res/Resources;
    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v4

    .line 609
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_0
    :try_start_5
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 610
    iget-object v5, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 611
    const/4 v4, 0x0

    :try_start_6
    iget v6, p0, Lcom/android/server/StatusBarManagerService;->mCurrentUserId:I

    invoke-virtual {p0, v6}, Lcom/android/server/StatusBarManagerService;->gatherDisableActionsLocked(I)I

    move-result v6

    aput v6, p5, v4

    .line 612
    const/4 v4, 0x1

    iget v6, p0, Lcom/android/server/StatusBarManagerService;->mSystemUiVisibility:I

    aput v6, p5, v4

    .line 613
    const/4 v6, 0x2

    iget-boolean v4, p0, Lcom/android/server/StatusBarManagerService;->mMenuVisible:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_2
    aput v4, p5, v6

    .line 614
    const/4 v4, 0x3

    iget v6, p0, Lcom/android/server/StatusBarManagerService;->mImeWindowVis:I

    aput v6, p5, v4

    .line 615
    const/4 v4, 0x4

    iget v6, p0, Lcom/android/server/StatusBarManagerService;->mImeBackDisposition:I

    aput v6, p5, v4

    .line 616
    iget-object v4, p0, Lcom/android/server/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    invoke-interface {p6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 617
    monitor-exit v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 618
    const/4 v5, 0x5

    iget-object v4, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    :goto_3
    aput v4, p5, v5

    .line 619
    const/4 v5, 0x6

    iget-object v4, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->isHardKeyboardEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_4
    aput v4, p5, v5

    .line 620
    return-void

    .line 613
    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 617
    :catchall_2
    move-exception v4

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    throw v4

    .line 618
    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    .line 619
    :cond_3
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public removeIcon(Ljava/lang/String;)V
    .locals 5
    .param p1, "slot"    # Ljava/lang/String;

    .prologue
    .line 312
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 314
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 315
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 317
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid status bar icon slot: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 328
    .end local v0    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 320
    .restart local v0    # "index":I
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->removeIcon(I)V

    .line 322
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 324
    :try_start_2
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->removeIcon(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 329
    return-void

    .line 325
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 699
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v2

    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 701
    .local v0, "n":Landroid/service/notification/StatusBarNotification;
    if-nez v0, :cond_0

    .line 702
    const-string v1, "StatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeNotification key not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    monitor-exit v2

    .line 715
    :goto_0
    return-void

    .line 705
    :cond_0
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 707
    :try_start_1
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, p1}, Lcom/android/internal/statusbar/IStatusBar;->removeNotification(Landroid/os/IBinder;)V

    .line 710
    const/4 v1, 0x3

    invoke-direct {p0, v1, p1, v0}, Lcom/android/server/StatusBarManagerService;->sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 714
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit v2

    goto :goto_0

    .end local v0    # "n":Landroid/service/notification/StatusBarNotification;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 711
    .restart local v0    # "n":Landroid/service/notification/StatusBarNotification;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public setCallBackground(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 1272
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 1274
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 1276
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setCallBackground(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1280
    :cond_0
    :goto_0
    return-void

    .line 1277
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setCurrentUser(I)V
    .locals 0
    .param p1, "newUserId"    # I

    .prologue
    .line 478
    iput p1, p0, Lcom/android/server/StatusBarManagerService;->mCurrentUserId:I

    .line 479
    return-void
.end method

.method public setHardKeyboardEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 427
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/StatusBarManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/StatusBarManagerService$5;-><init>(Lcom/android/server/StatusBarManagerService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    return-void
.end method

.method public setIcon(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 9
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "iconPackage"    # Ljava/lang/String;
    .param p3, "iconId"    # I
    .param p4, "iconLevel"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 261
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 263
    iget-object v8, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v8

    .line 264
    :try_start_0
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v7

    .line 265
    .local v7, "index":I
    if-gez v7, :cond_0

    .line 266
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid status bar icon slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    .end local v7    # "index":I
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 269
    .restart local v7    # "index":I
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/internal/statusbar/StatusBarIcon;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    const/4 v5, 0x0

    move-object v1, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarIcon;-><init>(Ljava/lang/String;Landroid/os/UserHandle;IIILjava/lang/CharSequence;)V

    .line 273
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v1, v7, v0}, Lcom/android/internal/statusbar/StatusBarIconList;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V

    .line 275
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 277
    :try_start_2
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v1, v7, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 281
    :cond_1
    :goto_0
    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 282
    return-void

    .line 278
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setIconVisibility(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "slot"    # Ljava/lang/String;
    .param p2, "visible"    # Z

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 287
    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v3

    .line 288
    :try_start_0
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, p1}, Lcom/android/internal/statusbar/StatusBarIconList;->getSlotIndex(Ljava/lang/String;)I

    move-result v1

    .line 289
    .local v1, "index":I
    if-gez v1, :cond_0

    .line 290
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invalid status bar icon slot: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 308
    .end local v1    # "index":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 293
    .restart local v1    # "index":I
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mIcons:Lcom/android/internal/statusbar/StatusBarIconList;

    invoke-virtual {v2, v1}, Lcom/android/internal/statusbar/StatusBarIconList;->getIcon(I)Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v0

    .line 294
    .local v0, "icon":Lcom/android/internal/statusbar/StatusBarIcon;
    if-nez v0, :cond_1

    .line 295
    monitor-exit v3

    .line 309
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-boolean v2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    if-eq v2, p2, :cond_2

    .line 299
    iput-boolean p2, v0, Lcom/android/internal/statusbar/StatusBarIcon;->visible:Z

    .line 301
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    .line 303
    :try_start_2
    iget-object v2, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v2, v1, v0}, Lcom/android/internal/statusbar/IStatusBar;->setIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 308
    :cond_2
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setImeWindowStatus(Landroid/os/IBinder;II)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "vis"    # I
    .param p3, "backDisposition"    # I

    .prologue
    .line 356
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 362
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 366
    :try_start_0
    iput p2, p0, Lcom/android/server/StatusBarManagerService;->mImeWindowVis:I

    .line 367
    iput p3, p0, Lcom/android/server/StatusBarManagerService;->mImeBackDisposition:I

    .line 368
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mImeToken:Landroid/os/IBinder;

    .line 369
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/StatusBarManagerService$3;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService$3;-><init>(Lcom/android/server/StatusBarManagerService;Landroid/os/IBinder;II)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    monitor-exit v1

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMaxBrightness(I)V
    .locals 2
    .param p1, "maxLevel"    # I

    .prologue
    .line 522
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 524
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 525
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 527
    :try_start_1
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setMaxBrightness(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 531
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 532
    return-void

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 528
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMultiWindowBg(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 1242
    :try_start_0
    const-string v1, "StatusBarManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mw p:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",o:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "t"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setMultiWindowBg(Z)V

    .line 1247
    :cond_0
    :goto_1
    return-void

    .line 1242
    :cond_1
    const-string v0, "f"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1244
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setNotificationCallbacks(Lcom/android/server/StatusBarManagerService$NotificationCallbacks;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/server/StatusBarManagerService;->mNotificationCallbacks:Lcom/android/server/StatusBarManagerService$NotificationCallbacks;

    .line 170
    return-void
.end method

.method public setPanelExpandState(Z)V
    .locals 0
    .param p1, "state"    # Z

    .prologue
    .line 1251
    iput-boolean p1, p0, Lcom/android/server/StatusBarManagerService;->mPanelExpandState:Z

    .line 1252
    return-void
.end method

.method public setSemiTransparentMode(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1

    .line 1184
    :try_start_0
    sget-boolean v0, Lcom/android/server/StatusBarManagerService;->bUseWindowTransGradation:Z

    if-nez v0, :cond_0

    .line 1185
    const-string v1, "StatusBarManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "semi p:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",o:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string/jumbo v0, "t"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setSemiTransparentMode(Z)V

    .line 1188
    :cond_0
    sput-boolean p1, Lcom/android/server/StatusBarManagerService;->LatestGeneralGradationModeColor:Z

    .line 1192
    :cond_1
    :goto_1
    return-void

    .line 1185
    :cond_2
    const-string v0, "f"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1189
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setSystemUiVisibility(II)V
    .locals 5
    .param p1, "vis"    # I
    .param p2, "mask"    # I

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 388
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/StatusBarManagerService;->updateUiVisibilityLocked(II)V

    .line 390
    iget v0, p0, Lcom/android/server/StatusBarManagerService;->mCurrentUserId:I

    const/high16 v2, 0x3ff0000

    and-int/2addr v2, p1

    iget-object v3, p0, Lcom/android/server/StatusBarManagerService;->mSysUiVisToken:Landroid/os/IBinder;

    const-string v4, "WindowManager.LayoutParams"

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/StatusBarManagerService;->disableLocked(IILandroid/os/IBinder;Ljava/lang/String;)V

    .line 395
    monitor-exit v1

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTransGradationMode(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1

    .line 1170
    :try_start_0
    sget-boolean v0, Lcom/android/server/StatusBarManagerService;->bUseWindowTransGradation:Z

    if-nez v0, :cond_0

    .line 1171
    const-string v1, "StatusBarManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tr p:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",o:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_2

    const-string/jumbo v0, "t"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setTransGradationMode(Z)V

    .line 1174
    :cond_0
    sput-boolean p1, Lcom/android/server/StatusBarManagerService;->LatestGeneralGradationMode:Z

    .line 1178
    :cond_1
    :goto_1
    return-void

    .line 1171
    :cond_2
    const-string v0, "f"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1175
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setTransGradationModeColor(ZI)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    .line 1236
    return-void
.end method

.method public setUseWindowTrans(Z)V
    .locals 1
    .param p1, "on"    # Z

    .prologue
    .line 1219
    sput-boolean p1, Lcom/android/server/StatusBarManagerService;->bUseWindowTransGradation:Z

    .line 1220
    if-nez p1, :cond_0

    .line 1221
    sget-boolean v0, Lcom/android/server/StatusBarManagerService;->LatestGeneralGradationModeColor:Z

    invoke-virtual {p0, v0}, Lcom/android/server/StatusBarManagerService;->setWindowSemiTransparentMode(Z)V

    .line 1222
    sget-boolean v0, Lcom/android/server/StatusBarManagerService;->LatestGeneralGradationMode:Z

    invoke-virtual {p0, v0}, Lcom/android/server/StatusBarManagerService;->setWindowTransGradationMode(Z)V

    .line 1224
    :cond_0
    return-void
.end method

.method public setWindowSemiTransparentMode(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 1210
    :try_start_0
    const-string v1, "StatusBarManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "semi p:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",o:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "t"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setSemiTransparentMode(Z)V

    .line 1215
    :cond_0
    :goto_1
    return-void

    .line 1210
    :cond_1
    const-string v0, "f"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1212
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public setWindowState(II)V
    .locals 1
    .param p1, "window"    # I
    .param p2, "state"    # I

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->setWindowState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :goto_0
    return-void

    .line 501
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setWindowTransGradationMode(Z)V
    .locals 3
    .param p1, "on"    # Z

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 1199
    :try_start_0
    const-string v1, "StatusBarManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "tr p:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",o:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p1, :cond_1

    const-string/jumbo v0, "t"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1200
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1}, Lcom/android/internal/statusbar/IStatusBar;->setTransGradationMode(Z)V

    .line 1204
    :cond_0
    :goto_1
    return-void

    .line 1199
    :cond_1
    const-string v0, "f"
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1201
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public showCallView()V
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 539
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->showCallOnGoingView()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 542
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toggleNotificationPanel()V
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_1

    .line 486
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTransientBars()V

    .line 490
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleNotificationPanel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :cond_1
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public toggleRecentApps()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    if-eqz v0, :cond_0

    .line 452
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBar;->toggleRecentApps()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    :cond_0
    :goto_0
    return-void

    .line 453
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public topAppWindowChanged(Z)V
    .locals 3
    .param p1, "menuVisible"    # Z

    .prologue
    .line 336
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBar()V

    .line 340
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 341
    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/StatusBarManagerService;->mMenuVisible:Z

    .line 342
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/StatusBarManagerService$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/StatusBarManagerService$2;-><init>(Lcom/android/server/StatusBarManagerService;Z)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    monitor-exit v1

    .line 353
    return-void

    .line 352
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public triggerNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 1019
    invoke-direct {p0}, Lcom/android/server/StatusBarManagerService;->enforceStatusBarService()V

    .line 1020
    iget-object v4, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    .line 1021
    .local v1, "noti":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/service/notification/StatusBarNotification;>;"
    if-eqz v1, :cond_1

    .line 1022
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 1023
    .local v2, "nt":Landroid/service/notification/StatusBarNotification;
    invoke-direct {p0, v2, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->notificationMatches(Landroid/service/notification/StatusBarNotification;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1027
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 1028
    .local v3, "wrappedNotification":Landroid/app/Notification;
    if-eqz v3, :cond_0

    iget-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_0

    .line 1034
    :try_start_0
    iget-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1035
    :catch_0
    move-exception v4

    goto :goto_0

    .line 1040
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v2    # "nt":Landroid/service/notification/StatusBarNotification;
    .end local v3    # "wrappedNotification":Landroid/app/Notification;
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/StatusBarManagerService;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1041
    return-void
.end method

.method public updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 4
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 681
    iget-object v1, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    monitor-enter v1

    .line 682
    :try_start_0
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 683
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateNotification key not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 685
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mNotifications:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 688
    :try_start_2
    iget-object v0, p0, Lcom/android/server/StatusBarManagerService;->mBar:Lcom/android/internal/statusbar/IStatusBar;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/statusbar/IStatusBar;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 694
    :cond_1
    :goto_0
    const/4 v0, 0x2

    :try_start_3
    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/StatusBarManagerService;->sendNotification(ILandroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    .line 695
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 696
    return-void

    .line 689
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public expandNotificationsPanel()V
    .locals 2
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: systemui part ::agneswang::20150826"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 142
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    const/4 v1, 0x1

    iput v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 143
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 144
    const-string v1, "com.android.server.StatusBarManagerService#expandNotificationsPanel"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 145
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/StatusBarManagerService;->tos_org_expandNotificationsPanel()V

    goto :goto_0
.end method

.method public tos_StatusBarManagerService_init(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v1, 0x2

    .line 123
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 124
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 125
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 126
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 127
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 128
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 129
    const-string v1, "com.android.server.StatusBarManagerService#StatusBarManagerService"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 130
    return-void
.end method
