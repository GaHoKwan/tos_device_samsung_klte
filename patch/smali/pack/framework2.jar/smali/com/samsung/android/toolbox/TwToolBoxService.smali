.class public Lcom/samsung/android/toolbox/TwToolBoxService;
.super Lcom/samsung/android/toolbox/ITwToolBoxService$Stub;
.source "TwToolBoxService.java"


# static fields
.field public static final ACTION_ASSISTIVE_LIGHT_OFF:Ljava/lang/String; = "android.intent.action.ASSISTIVELIGHT_OFF"

.field public static final ACTION_ASSISTIVE_LIGHT_ON:Ljava/lang/String; = "android.intent.action.ASSISTIVELIGHT_ON"

.field public static final ACTION_EARPHONE:Ljava/lang/String; = "android.intent.action.HEADSET_PLUG"

.field public static final SETTINGS_KIDS_MODE:Ljava/lang/String; = "kids_home_mode"

.field public static final SETTINGS_SHOW_TOOLBOX:Ljava/lang/String; = "toolbox_onoff"

.field public static final SETTINGS_SHOW_TOOLBOX_EARPHONES_ONLY:Ljava/lang/String; = "toolbox_earphones_only"

.field public static final SETTINGS_SHOW_TOOLBOX_FLOATING_X_RATIO:Ljava/lang/String; = "tw_tool_box_floating_x_ratio"

.field public static final SETTINGS_SHOW_TOOLBOX_FLOATING_Y_RATIO:Ljava/lang/String; = "tw_tool_box_floating_y_ratio"

.field public static final SETTINGS_TOOLBOX_PACKAGE_LIST:Ljava/lang/String; = "toolbox_apps"

.field public static final SETTINGS_TOOLBOX_PACKAGE_LIST_DEFAULT:Ljava/lang/String; = "0;com.sec.android.app.camera/00;com.sec.android.app.sbrowser/00;com.sec.android.app.voicenote/00;com.android.contacts/00;com.samsung.android.app.memo/00"

.field private static TAG:Ljava/lang/String; = null

.field public static final TOOLBOX_FUNCTION_SHORTCUT_ACTION_MEMO:I = 0x4

.field public static final TOOLBOX_FUNCTION_SHORTCUT_MAGNIFIER:I = 0x6

.field public static final TOOLBOX_FUNCTION_SHORTCUT_QUICK_CONNECT:I = 0x1

.field public static final TOOLBOX_FUNCTION_SHORTCUT_SCRAP_BOOK:I = 0x5

.field public static final TOOLBOX_FUNCTION_SHORTCUT_SCREEN_WRITE:I = 0x3

.field public static final TOOLBOX_FUNCTION_SHORTCUT_S_FINDER:I = 0x0

.field public static final TOOLBOX_FUNCTION_SHORTCUT_TORCH_LIGHT:I = 0x2

.field public static final TOOLBOX_MESSAGE_OPTION_FADE_IN:I = 0x2

.field public static final TOOLBOX_MESSAGE_OPTION_FADE_OUT:I = 0x4

.field public static final TOOLBOX_MESSAGE_OPTION_FORCE_NO_SHOW:I = 0x20

.field public static final TOOLBOX_MESSAGE_OPTION_WINDOW_FOCUS_OFF:I = 0x10

.field public static final TOOLBOX_MESSAGE_OPTION_WINDOW_FOCUS_ON:I = 0x8

.field public static final TOOLBOX_MESSAGE_VISIBILITY:I = 0x1

.field public static final TOOLBOX_MESSAGE_WINDOW_DETACHED_FROM_WINDOW:I = 0x3

.field public static final TOOLBOX_MESSAGE_WINDOW_FOCUS_CHANGED:I = 0x2

.field public static final TOOLBOX_SUPPORT:Z = true


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mH:Landroid/os/Handler;

.field private mPackageList:Ljava/lang/String;

.field mPackageListObserver:Landroid/database/ContentObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field mShowToolFloatingObserver:Landroid/database/ContentObserver;

.field mShowToolObserver:Landroid/database/ContentObserver;

.field private mVisibleFloatingStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-string/jumbo v0, "toolbox"

    sput-object v0, Lcom/samsung/android/toolbox/TwToolBoxService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x2

    const/4 v3, 0x0

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/toolbox/ITwToolBoxService$Stub;-><init>()V

    .line 92
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mH:Landroid/os/Handler;

    .line 93
    iput-boolean v3, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mVisibleFloatingStyle:Z

    .line 95
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 151
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxService$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/toolbox/TwToolBoxService$4;-><init>(Lcom/samsung/android/toolbox/TwToolBoxService;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 105
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mActivityManager:Landroid/app/ActivityManager;

    .line 106
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "toolbox_apps"

    invoke-static {v1, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageList:Ljava/lang/String;

    .line 107
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageList:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "0;com.sec.android.app.camera/00;com.sec.android.app.sbrowser/00;com.sec.android.app.voicenote/00;com.android.contacts/00;com.samsung.android.app.memo/00"

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageList:Ljava/lang/String;

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "toolbox_onoff"

    invoke-static {v1, v4, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mVisibleFloatingStyle:Z

    .line 112
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxService$1;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mH:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxService$1;-><init>(Lcom/samsung/android/toolbox/TwToolBoxService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mShowToolObserver:Landroid/database/ContentObserver;

    .line 120
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxService$2;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mH:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxService$2;-><init>(Lcom/samsung/android/toolbox/TwToolBoxService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mShowToolFloatingObserver:Landroid/database/ContentObserver;

    .line 128
    new-instance v1, Lcom/samsung/android/toolbox/TwToolBoxService$3;

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mH:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/toolbox/TwToolBoxService$3;-><init>(Lcom/samsung/android/toolbox/TwToolBoxService;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageListObserver:Landroid/database/ContentObserver;

    .line 134
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "toolbox_onoff"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mShowToolObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 135
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "toolbox_apps"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 141
    return-void

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    move v1, v3

    .line 109
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/samsung/android/toolbox/TwToolBoxService;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxService;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/samsung/android/toolbox/TwToolBoxService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxService;
    .param p1, "x1"    # Z

    .prologue
    .line 54
    iput-boolean p1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mVisibleFloatingStyle:Z

    return p1
.end method

.method static synthetic access$202(Lcom/samsung/android/toolbox/TwToolBoxService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageList:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/samsung/android/toolbox/TwToolBoxService;)V
    .locals 0
    .param p0, "x0"    # Lcom/samsung/android/toolbox/TwToolBoxService;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/samsung/android/toolbox/TwToolBoxService;->reloadContentObserver()V

    return-void
.end method

.method private reloadContentObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mShowToolObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 145
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 146
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "toolbox_onoff"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mShowToolObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 147
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "toolbox_apps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 148
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxService;->TAG:Ljava/lang/String;

    const-string v1, "TwToolBoxService reloadContentObserver()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
.end method


# virtual methods
.method public getToolList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxService;->TAG:Ljava/lang/String;

    const-string v1, "TwToolBoxService getToolList()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mPackageList:Ljava/lang/String;

    return-object v0
.end method

.method public isContain(II)Z
    .locals 5
    .param p1, "x"    # I
    .param p2, "y"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 174
    const/4 v1, 0x0

    .line 175
    .local v1, "result":Z
    iget-object v3, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v3

    .line 176
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 177
    .local v0, "N":I
    if-lez v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    invoke-interface {v2, p1, p2}, Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;->isContain(II)Z

    move-result v1

    .line 178
    :goto_0
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 179
    monitor-exit v3

    .line 180
    return v1

    :cond_0
    move v1, v2

    .line 177
    goto :goto_0

    .line 179
    .end local v0    # "N":I
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public registerCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    goto :goto_0
.end method

.method public sendMessage(Ljava/lang/String;II)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "message"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v2, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mCallbacks:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 187
    .local v0, "N":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;

    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;->receiveMessage(Ljava/lang/String;II)V

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 189
    monitor-exit v2

    .line 190
    return-void

    .line 189
    .end local v0    # "N":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setToolList(Ljava/lang/String;)V
    .locals 2
    .param p1, "toolList"    # Ljava/lang/String;

    .prologue
    .line 200
    sget-object v0, Lcom/samsung/android/toolbox/TwToolBoxService;->TAG:Ljava/lang/String;

    const-string v1, "TwToolBoxService setToolList() Deprecated."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void
.end method

.method public unregisterCallback(Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;)Z
    .locals 1
    .param p1, "callback"    # Lcom/samsung/android/toolbox/ITwToolBoxServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 164
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/toolbox/TwToolBoxService;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    goto :goto_0
.end method
