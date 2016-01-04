.class public Lcom/android/server/SecExternalDisplayIntents;
.super Lcom/android/server/SecExternalDisplayOrientation;
.source "SecExternalDisplayIntents.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SecExternalDisplayIntents$2;,
        Lcom/android/server/SecExternalDisplayIntents$EDSRecievedIntent;
    }
.end annotation


# static fields
.field private static final ALLSHARE_CAST_EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final ALLSHARE_CAST_GETSTATE:Ljava/lang/String; = "android.intent.action.WIFI_DISPLAY"

.field public static final ANDROID_HDMI_SET_FORCE_MIRROR_MODE:Ljava/lang/String; = "samsung.intent.action.ANDROID_HDMI_SET_FORCE_MIRROR_MODE"

.field public static final ANDROID_HDMI_START_VFB:Ljava/lang/String; = "samsung.intent.action.ANDROID_HDMI_START_VFB"

.field public static final ANDROID_HDMI_STOP_VFB:Ljava/lang/String; = "samsung.intent.action.ANDROID_HDMI_STOP_VFB"

.field private static final CPUMINLOCK_ACQUIRE:Ljava/lang/String; = "com.samsung.intent.action.CPUMINLOCK_ACQUIRE"

.field private static final CPUMINLOCK_RELEASE:Ljava/lang/String; = "com.samsung.intent.action.CPUMINLOCK_RELEASE"

.field private static final CameraFrontStart:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

.field private static final CameraPosition:Ljava/lang/String; = "CameraPosition"

.field private static final CameraRearStart:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

.field private static final CameraStop:Ljava/lang/String; = "com.sec.android.app.camera.ACTION_STOP_CAMERA"

.field private static final DUAL_SCAN:Ljava/lang/String; = "com.samsung.intent.action.DUAL_SCAN"

.field public static final EXTRA_IS_FORCE_MIRROR:Ljava/lang/String; = "isForceMirror"

.field private static final GPUMINLOCK_ACQUIRE:Ljava/lang/String; = "com.samsung.intent.action.GPUMINLOCK_ACQUIRE"

.field private static final GPUMINLOCK_RELEASE:Ljava/lang/String; = "com.samsung.intent.action.GPUMINLOCK_RELEASE"

.field private static final HMT_AID:Ljava/lang/String; = "com.samsung.intent.action.HMT_AID"

.field private static final HMT_ON:Ljava/lang/String; = "com.samsung.intent.action.HMT_ON"

.field private static final LOG:Z = true

.field private static final PresentationStateInfo:Ljava/lang/String; = "android.app.presentation.ACTION_START_PRESENTATION_STATE"

.field private static final RemoteViewFinder:Ljava/lang/String; = "com.samsung.android.app.camera.RVF"

.field private static final SCREENRECORDER_NOTIFY_EVENT:Ljava/lang/String; = "android.intent.action.SCREENRECORDER_INFORMATION"

.field private static final SCREENRECORDER_STOP_EVENT:Ljava/lang/String; = "android.intent.action.SCREENRECORDER_HDMI"

.field private static final STEREO_RENDER:Ljava/lang/String; = "com.samsung.intent.action.STEREO_RENDER"

.field private static final SideSyncConnected:Ljava/lang/String; = "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

.field private static final SideSyncDestroyed:Ljava/lang/String; = "com.sec.android.sidesync.source.SERVICE_DESTROY"

.field private static final TAG:Ljava/lang/String; = "SecExternalDisplayIntents_Java"


# instance fields
.field public final ALARM_STARTED:[Ljava/lang/String;

.field public final ALARM_STOPPED:[Ljava/lang/String;

.field private BroadcastMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver2:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Lcom/android/server/SecExternalDisplayService;)V
    .locals 6
    .param p1, "_obj"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-direct {p0, p1}, Lcom/android/server/SecExternalDisplayOrientation;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STARTED_IN_ALERT"

    aput-object v1, v0, v2

    const-string v1, "com.android.deskclock.ALARM_ALERT"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_ALERT"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STARTED:[Ljava/lang/String;

    .line 58
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOPPED_IN_ALERT"

    aput-object v1, v0, v2

    const-string v1, "com.android.deskclock.ALARM_DONE"

    aput-object v1, v0, v3

    const-string v1, "com.samsung.sec.android.clockpackage.alarm.ALARM_STOP"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STOPPED:[Ljava/lang/String;

    .line 243
    new-instance v0, Lcom/android/server/SecExternalDisplayIntents$1;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayIntents$1;-><init>(Lcom/android/server/SecExternalDisplayIntents;)V

    iput-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->mReceiver2:Landroid/content/BroadcastReceiver;

    .line 157
    iput-object p1, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    .line 158
    const-string v0, "SecExternalDisplayIntents_Java"

    const-string v1, "SecExternalDisplayIntents +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-virtual {p0}, Lcom/android/server/SecExternalDisplayIntents;->SecExternalDisplayRegistIntentReceiver()V

    .line 161
    return-void
.end method

.method public static StartEDSIntents(Lcom/android/server/SecExternalDisplayService;)V
    .locals 1
    .param p0, "edsObj"    # Lcom/android/server/SecExternalDisplayService;

    .prologue
    .line 152
    new-instance v0, Lcom/android/server/SecExternalDisplayIntents;

    invoke-direct {v0, p0}, Lcom/android/server/SecExternalDisplayIntents;-><init>(Lcom/android/server/SecExternalDisplayService;)V

    .line 153
    .local v0, "intentObj":Lcom/android/server/SecExternalDisplayIntents;
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/SecExternalDisplayIntents;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/SecExternalDisplayIntents;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public SecExternalDisplayRegistIntentReceiver()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 165
    sget-boolean v2, Lcom/android/server/SecExternalDisplayIntents;->bIsLogEnabled:Z

    if-eqz v2, :cond_0

    .line 166
    const-string v2, "SecExternalDisplayIntents_Java"

    const-string v3, "entered SecExternalDisplayRegistIntentReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 169
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HDMI_PLUGGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 170
    const-string v2, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 171
    const-string v2, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 172
    const-string v2, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 173
    const-string v2, "android.intent.action.WIFI_DISPLAY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 174
    const-string v2, "android.intent.action.USBHID_MOUSE_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 175
    const-string v2, "android.intent.action.SCREENRECORDER_INFORMATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    const-string v2, "com.samsung.android.app.camera.RVF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 177
    const-string v2, "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const-string v2, "com.sec.android.sidesync.source.SERVICE_DESTROY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 179
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 180
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_1

    .line 182
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 181
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v7, :cond_2

    .line 185
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    :cond_2
    const-string v2, "com.samsung.intent.action.HMT_AID"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v2, "com.samsung.intent.action.DUAL_SCAN"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v2, "com.samsung.intent.action.CPUMINLOCK_ACQUIRE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    const-string v2, "com.samsung.intent.action.CPUMINLOCK_RELEASE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    const-string v2, "com.samsung.intent.action.GPUMINLOCK_ACQUIRE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string v2, "com.samsung.intent.action.GPUMINLOCK_RELEASE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string v2, "com.samsung.intent.action.HMT_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    const-string v2, "com.samsung.intent.action.STEREO_RENDER"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayOrientation;->mEDSServiceObj:Lcom/android/server/SecExternalDisplayService;

    invoke-virtual {v2}, Lcom/android/server/SecExternalDisplayService;->getEDSContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents;->mReceiver2:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    .line 207
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "android.intent.action.HDMI_PLUGGED"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.sec.android.app.camera.ACTION_START_BACK_CAMERA"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.sec.android.app.camera.ACTION_START_FRONT_CAMERA"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.sec.android.app.camera.ACTION_STOP_CAMERA"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.samsung.android.app.camera.RVF"

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "android.intent.action.WIFI_DISPLAY"

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v3, v3, v8

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v3, v3, v5

    const/16 v4, 0x8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STARTED:[Ljava/lang/String;

    aget-object v3, v3, v6

    const/16 v4, 0x9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v3, v3, v8

    const/16 v4, 0xa

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v3, v3, v5

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/SecExternalDisplayIntents;->ALARM_STOPPED:[Ljava/lang/String;

    aget-object v3, v3, v6

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.sec.android.sidesync.source.SIDESYNC_CONNECTED"

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.sec.android.sidesync.source.SERVICE_DESTROY"

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "android.intent.action.SCREENRECORDER_INFORMATION"

    const/16 v4, 0x10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "android.intent.action.USBHID_MOUSE_EVENT"

    const/16 v4, 0x11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "android.intent.action.SCREEN_OFF"

    const/16 v4, 0x12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "android.intent.action.SCREEN_ON"

    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.samsung.intent.action.HMT_AID"

    const/16 v4, 0x14

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.samsung.intent.action.DUAL_SCAN"

    const/16 v4, 0x15

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.samsung.intent.action.CPUMINLOCK_ACQUIRE"

    const/16 v4, 0x16

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.samsung.intent.action.CPUMINLOCK_RELEASE"

    const/16 v4, 0x17

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.samsung.intent.action.GPUMINLOCK_ACQUIRE"

    const/16 v4, 0x18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.samsung.intent.action.GPUMINLOCK_RELEASE"

    const/16 v4, 0x19

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.samsung.intent.action.HMT_ON"

    const/16 v4, 0x1a

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v2, p0, Lcom/android/server/SecExternalDisplayIntents;->BroadcastMap:Ljava/util/HashMap;

    const-string v3, "com.samsung.intent.action.STEREO_RENDER"

    const/16 v4, 0x1b

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    return-void
.end method
