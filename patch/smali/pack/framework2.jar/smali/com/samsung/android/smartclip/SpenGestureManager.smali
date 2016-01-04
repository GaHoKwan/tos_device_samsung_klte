.class public Lcom/samsung/android/smartclip/SpenGestureManager;
.super Ljava/lang/Object;
.source "SpenGestureManager.java"


# static fields
.field public static final GLOBAL_AIR_BUTTON_ALL_ENABLE:I = -0x1

.field public static final GLOBAL_AIR_BUTTON_FLASHANNOTATE:I = 0x2

.field public static final GLOBAL_AIR_BUTTON_GALAXYFINDER:I = 0x3

.field public static final GLOBAL_AIR_BUTTON_MULTIWINDOW:I = 0x4

.field public static final GLOBAL_AIR_BUTTON_QUICKMEMO:I = 0x0

.field public static final GLOBAL_AIR_BUTTON_RAKEIN:I = 0x1

.field private static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mService:Lcom/samsung/android/smartclip/ISpenGestureService;


# instance fields
.field private mSpenGestureBackground:Landroid/graphics/drawable/Drawable;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    .line 52
    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    .line 53
    const-string v0, "SpenGestureManager"

    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sput-object p1, Lcom/samsung/android/smartclip/SpenGestureManager;->mContext:Landroid/content/Context;

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    .line 63
    return-void
.end method

.method private declared-synchronized getService()Lcom/samsung/android/smartclip/ISpenGestureService;
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-nez v0, :cond_0

    .line 67
    const-string/jumbo v0, "spengestureservice"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/smartclip/ISpenGestureService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    .line 69
    sget-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-nez v0, :cond_0

    .line 70
    const-string v0, "SpenGestureManager"

    const-string/jumbo v1, "warning: no SpenGestureManager"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_0
    sget-object v0, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public activateExclusiveCroppingMode()V
    .locals 3

    .prologue
    .line 114
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 115
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    .line 116
    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureService;->activateExclusiveCroppingMode()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :cond_0
    return-void

    .line 118
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getAirButtonHitTest(III)I
    .locals 3
    .param p1, "id"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 152
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 153
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    .line 154
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/smartclip/ISpenGestureService;->getAirButtonHitTest(III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 160
    :goto_0
    return v2

    .line 156
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 160
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 3
    .param p1, "rect"    # Landroid/graphics/Rect;
    .param p2, "skipWindowToken"    # Landroid/os/IBinder;
    .param p3, "extractionMode"    # I

    .prologue
    .line 139
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 140
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    .line 141
    invoke-interface {v1, p1, p2, p3}, Lcom/samsung/android/smartclip/ISpenGestureService;->getSmartClipDataByScreenRect(Landroid/graphics/Rect;Landroid/os/IBinder;I)Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 147
    :goto_0
    return-object v2

    .line 143
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .line 145
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 147
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSmartClipDataFromCurrentScreen()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    .locals 3

    .prologue
    .line 126
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 127
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    .line 128
    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureService;->getSmartClipDataFromCurrentScreen()Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 134
    :goto_0
    return-object v2

    .line 130
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 134
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isExclusiveModeActivated()Z
    .locals 3

    .prologue
    .line 101
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 102
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    .line 103
    invoke-interface {v1}, Lcom/samsung/android/smartclip/ISpenGestureService;->isExclusiveModeActivated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 109
    :goto_0
    return v2

    .line 105
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 109
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAirButtonHitTestResult(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "result"    # I

    .prologue
    .line 165
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 166
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    .line 167
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/smartclip/ISpenGestureService;->setAirButtonHitTestResult(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    return-void

    .line 169
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .line 171
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setDisableGlobalAirBottonAppindex(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 177
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 178
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    .line 179
    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->setDisableGlobalAirBottonAppindex(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    return-void

    .line 181
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .line 183
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public setFocusWindow(I)V
    .locals 4
    .param p1, "focusSurfaceLayer"    # I

    .prologue
    .line 90
    :try_start_0
    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    if-eqz v1, :cond_0

    .line 91
    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFocusWindow"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    sget-object v1, Lcom/samsung/android/smartclip/SpenGestureManager;->mService:Lcom/samsung/android/smartclip/ISpenGestureService;

    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->setFocusWindow(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setSmartClipDataExtractionResult(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;

    .prologue
    .line 78
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/smartclip/SpenGestureManager;->getService()Lcom/samsung/android/smartclip/ISpenGestureService;

    move-result-object v1

    .line 79
    .local v1, "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    if-eqz v1, :cond_0

    .line 80
    invoke-interface {v1, p1}, Lcom/samsung/android/smartclip/ISpenGestureService;->setSmartClipDataExtractionResult(Lcom/samsung/android/smartclip/SmartClipDataExtractionResponse;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :cond_0
    return-void

    .line 82
    .end local v1    # "svc":Lcom/samsung/android/smartclip/ISpenGestureService;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
