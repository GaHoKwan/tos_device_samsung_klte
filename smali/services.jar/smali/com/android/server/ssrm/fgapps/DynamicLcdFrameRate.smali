.class public final Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "DynamicLcdFrameRate.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$BootCompleteCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$StatusNotificationCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;,
        Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field static mCustomFreqManager:Landroid/os/CustomFrequencyManager;

.field public static sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

.field static sMultiWindowRunning:Z

.field public static sPermanentAppPID:I


# instance fields
.field final LCD_FPS_HIGH:I

.field final LCD_FPS_IDLE:I

.field final LCD_FPS_LOW:I

.field final LCD_FPS_NONE:I

.field mBrowserIntentLowFps:Z

.field mBrowserLowFps:Z

.field mDynamicFpsPackage:Z

.field mFpsFullScreenMode:Z

.field mPrevBrowserLowFps:Z

.field mPrevFpsFullScreen:Z

.field mPrevFpsPackage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 37
    const-string v0, "SSRMv2:DynamicLcdFrameRate"

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    .line 42
    sput-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    .line 44
    const/4 v0, 0x0

    sput v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sPermanentAppPID:I

    .line 70
    const-string v0, "1"

    const-string/jumbo v1, "sys.multiwindow.running"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sMultiWindowRunning:Z

    .line 239
    sput-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 46
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    .line 48
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevBrowserLowFps:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsFullScreen:Z

    .line 58
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsPackage:Z

    .line 60
    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_HIGH:I

    .line 62
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_LOW:I

    .line 64
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_IDLE:I

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->LCD_FPS_NONE:I

    .line 40
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;
    .param p1, "x1"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->isFPSValid(I)Z

    move-result v0

    return v0
.end method

.method private isFPSValid(I)Z
    .locals 1
    .param p1, "fps"    # I

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_0

    .line 161
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 159
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static onFullScreenStatusChanged(Z)V
    .locals 2
    .param p0, "isFullscreen"    # Z

    .prologue
    .line 242
    sget-boolean v0, Lcom/android/server/ssrm/Feature;->MODEL_D2:Z

    if-eqz v0, :cond_1

    .line 243
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-nez v0, :cond_0

    .line 244
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mContext:Landroid/content/Context;

    const-string v1, "CustomFrequencyManagerService"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/CustomFrequencyManager;

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    .line 247
    :cond_0
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    if-eqz v0, :cond_1

    .line 248
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mCustomFreqManager:Landroid/os/CustomFrequencyManager;

    invoke-virtual {v0, p0}, Landroid/os/CustomFrequencyManager;->onTopAppChanged(Z)V

    .line 251
    :cond_1
    return-void
.end method


# virtual methods
.method createDynamicLCDFPS()Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 177
    sget-boolean v5, Lcom/android/server/ssrm/Feature;->DISABLE_DYNAMIC_FPS:Z

    if-eqz v5, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-object v2

    .line 181
    :cond_1
    const-string v0, "/sys/class/lcd/panel/fps_change"

    .line 182
    .local v0, "QUALCOMM_FPS_PATH":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v5, "/sys/class/lcd/panel/fps_change"

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v3, "qualcomFPSFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 184
    new-instance v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;-><init>(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;)V

    .line 185
    .local v2, "instance":Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;
    const-string v5, "/sys/class/lcd/panel/fps_change"

    invoke-virtual {v2, v5}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;->setSysfsPath(Ljava/lang/String;)V

    goto :goto_0

    .line 189
    .end local v2    # "instance":Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;
    :cond_2
    const-string v1, "/sys/class/graphics/fb0/lcdfreq/level"

    .line 190
    .local v1, "SLSI_FPS_PATH":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .local v4, "slsiFPSFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 192
    new-instance v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;

    invoke-direct {v2, p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;-><init>(Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;)V

    .line 193
    .restart local v2    # "instance":Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;
    const-string v5, "/sys/class/graphics/fb0/lcdfreq/level"

    invoke-virtual {v2, v5}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS_ALL;->setSysfsPath(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBootComplete()V
    .locals 1

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->createDynamicLCDFPS()Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    move-result-object v0

    sput-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    .line 167
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v0, :cond_0

    .line 168
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->initialize()V

    .line 170
    :cond_0
    return-void
.end method

.method public onFgAppChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 202
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 208
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    const-string v2, "com.google.android.youtube"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.android.chrome"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 210
    :cond_2
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    .line 211
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    .line 212
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    .line 222
    :goto_1
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsPackage:Z

    if-eq v2, v3, :cond_6

    .line 223
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v2, :cond_3

    .line 224
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 226
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsPackage:Z

    goto :goto_0

    .line 213
    :cond_4
    invoke-virtual {v1, v0}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 214
    iput-boolean v4, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    .line 215
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    goto :goto_1

    .line 217
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mDynamicFpsPackage:Z

    .line 218
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    .line 219
    iput-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    goto :goto_1

    .line 227
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    iget-boolean v3, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevBrowserLowFps:Z

    if-eq v2, v3, :cond_0

    .line 228
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v2, :cond_7

    .line 229
    sget-object v2, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v2}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 231
    :cond_7
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserLowFps:Z

    iput-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevBrowserLowFps:Z

    goto :goto_0
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 174
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "value"    # Lcom/android/server/ssrm/fgapps/FgAppListener;

    .prologue
    const/4 v6, 0x0

    .line 255
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/ssrm/fgapps/FgAppListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/android/server/ssrm/fgapps/FgAppListener;)V

    .line 257
    const-string v0, "com.sec.android.intent.action.SSRM_REQUEST"

    .line 258
    .local v0, "SSRM_STATUS_NOTIFY":Ljava/lang/String;
    const-string v1, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    .line 259
    .local v1, "SSRM_STATUS_NOTIFY_KNOX":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 261
    .local v2, "action":Ljava/lang/String;
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 262
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v6, :cond_0

    .line 263
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v6}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->resetFPS()V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const-string v7, "com.sec.android.action.NOTIFY_MULTIWINDOW_STATUS"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 266
    const-string v6, "1"

    const-string/jumbo v7, "sys.multiwindow.running"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    sput-boolean v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sMultiWindowRunning:Z

    .line 267
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v6, :cond_0

    .line 268
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v6}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto :goto_0

    .line 270
    :cond_2
    const-string v7, "com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "sec_container_1.com.sec.android.intent.action.SSRM_REQUEST"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 271
    :cond_3
    const-string v7, "SSRM_STATUS_NAME"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 272
    .local v4, "statusName":Ljava/lang/String;
    const-string v7, "SSRM_STATUS_VALUE"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    .line 273
    .local v5, "statusValue":Z
    const-string v7, "PID"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 275
    .local v3, "pid":I
    if-lez v3, :cond_0

    .line 278
    const-string v7, "Camera_preview"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "MoviePlayer_play"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "Navigation_show"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "ChatOnV_vtCall"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "GroupPlay_fpsChange"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "Phone_vtCall"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 283
    :cond_4
    if-eqz v5, :cond_5

    .end local v3    # "pid":I
    :goto_1
    sput v3, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sPermanentAppPID:I

    .line 284
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v6, :cond_0

    .line 285
    sget-object v6, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v6}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto/16 :goto_0

    .restart local v3    # "pid":I
    :cond_5
    move v3, v6

    .line 283
    goto :goto_1
.end method

.method public onStatusNotiReceived(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 3
    .param p1, "statusName"    # Ljava/lang/String;
    .param p2, "statusValue"    # Z
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 294
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "statusName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", statusValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "FullScreen"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 297
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    .line 298
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FullScreen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->logOnEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    iget-boolean v1, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsFullScreen:Z

    if-eq v0, v1, :cond_1

    .line 300
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    invoke-static {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->onFullScreenStatusChanged(Z)V

    .line 301
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v0, :cond_0

    .line 302
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    .line 304
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mFpsFullScreenMode:Z

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mPrevFpsFullScreen:Z

    .line 312
    :cond_1
    :goto_0
    return-void

    .line 306
    :cond_2
    const-string v0, "BrowserLowFps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 307
    iput-boolean p2, p0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->mBrowserIntentLowFps:Z

    .line 308
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    if-eqz v0, :cond_1

    .line 309
    sget-object v0, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate;->sDynamicLCDFPS:Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;

    invoke-virtual {v0}, Lcom/android/server/ssrm/fgapps/DynamicLcdFrameRate$DynamicLCDFPS;->handleMonitorStateChanged()V

    goto :goto_0
.end method
