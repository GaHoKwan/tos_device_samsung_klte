.class public final Lcom/samsung/android/multiwindow/MultiWindowFacade;
.super Ljava/lang/Object;
.source "MultiWindowFacade.java"


# static fields
.field public static final ARRANGE_SPLITED:I = 0x1

.field public static final ARRANGE_SPLITED3L:I = 0x2

.field public static final ARRANGE_SPLITED3R:I = 0x4

.field public static final ARRANGE_SPLITED4:I = 0x8

.field public static final ARRANGE_UNKNOWN:I = 0x0

.field public static final MULTIWINDOW_ABSOLUTE_TOPACTIVITY:I = 0x2

.field public static final MULTIWINDOW_EXCLUDED_CASCADE_TYPE:I = 0x1

.field public static final SPLIT_MAX_WEIGHT:F = 0.8f

.field public static final SPLIT_MIN_WEIGHT:F = 0.2f


# instance fields
.field private mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;


# direct methods
.method public constructor <init>(Lcom/samsung/android/multiwindow/IMultiWindowFacade;)V
    .locals 1
    .param p1, "service"    # Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    .line 17
    iput-object p1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    .line 18
    return-void
.end method


# virtual methods
.method public changeFocusedTaskToFull()V
    .locals 2

    .prologue
    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->changeFocusedTaskToFull()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public exchangeTopTaskToZone(II)Z
    .locals 2
    .param p1, "zone1"    # I
    .param p2, "zone2"    # I

    .prologue
    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->exchangeTopTaskToZone(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 108
    :goto_0
    return v1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 108
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getArrangeState()I
    .locals 2

    .prologue
    .line 120
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getArrangeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 123
    :goto_0
    return v1

    .line 121
    :catch_0
    move-exception v0

    .line 122
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 123
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAvailableMultiInstanceCnt()I
    .locals 2

    .prologue
    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getAvailableMultiInstanceCnt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 200
    :goto_0
    return v1

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 200
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCenterBarPoint()Landroid/graphics/Point;
    .locals 2

    .prologue
    .line 38
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getCenterBarPoint()Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 41
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFocusedStackLayer()I
    .locals 2

    .prologue
    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFocusedStackLayer()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 132
    :goto_0
    return v1

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFocusedZone()I
    .locals 2

    .prologue
    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFocusedZone()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 141
    :goto_0
    return v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 141
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2
    .param p1, "flags"    # I

    .prologue
    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getFrontActivityMultiWindowStyle(I)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGlobalSystemUiVisibility()I
    .locals 2

    .prologue
    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getGlobalSystemUiVisibility()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 183
    :goto_0
    return v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getMultiWindowStyle(Landroid/os/IBinder;)Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 60
    :goto_0
    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 60
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getSplitMaxWeight()F
    .locals 2

    .prologue
    .line 240
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getSplitMaxWeight()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 243
    :goto_0
    return v1

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method

.method public getSplitMinWeight()F
    .locals 2

    .prologue
    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getSplitMinWeight()F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 234
    :goto_0
    return v1

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 234
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 77
    :goto_0
    return-object v1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackBoxPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 259
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackBoxPosition(Landroid/os/IBinder;)Landroid/graphics/Point;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 264
    :goto_0
    return-object v1

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 83
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getStackOriginalBound(Landroid/os/IBinder;)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 86
    :goto_0
    return-object v1

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 86
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getZoneBounds(I)Landroid/graphics/Rect;
    .locals 2
    .param p1, "zone"    # I

    .prologue
    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->getZoneBounds(I)Landroid/graphics/Rect;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 150
    :goto_0
    return-object v1

    .line 148
    :catch_0
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 150
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnableMakePenWindow()Z
    .locals 2

    .prologue
    .line 249
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->isEnableMakePenWindow()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 254
    :goto_0
    return v1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public minimizeWindow(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;

    .prologue
    .line 22
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->minimizeWindow(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    .line 24
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public moveOnlySpecificTaskToFront(II)V
    .locals 2
    .param p1, "taskId"    # I
    .param p2, "flags"    # I

    .prologue
    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->moveOnlySpecificTaskToFront(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 224
    :catch_0
    move-exception v0

    .line 225
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public requestSplitPreview(Z)V
    .locals 2
    .param p1, "enablePreview"    # Z

    .prologue
    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->requestSplitPreview(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setCenterBarPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 30
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setCenterBarPoint(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    :goto_0
    return-void

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setFocusAppByZone(I)V
    .locals 2
    .param p1, "zone"    # I

    .prologue
    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setFocusAppByZone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-void

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "style"    # Lcom/samsung/android/multiwindow/MultiWindowStyle;

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    if-nez v1, :cond_0

    .line 53
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setMultiWindowStyle(Landroid/os/IBinder;Lcom/samsung/android/multiwindow/MultiWindowStyle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setMultiWindowTrayOpenState(Z)V
    .locals 2
    .param p1, "open"    # Z

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setMultiWindowTrayOpenState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreviewFullAppZone(I)V
    .locals 2
    .param p1, "zone"    # I

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setPreviewFullAppZone(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :goto_0
    return-void

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "bound"    # Landroid/graphics/Rect;

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->setStackBound(Landroid/os/IBinder;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "point"    # Landroid/graphics/Point;

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/multiwindow/MultiWindowFacade;->mService:Lcom/samsung/android/multiwindow/IMultiWindowFacade;

    invoke-interface {v1, p1}, Lcom/samsung/android/multiwindow/IMultiWindowFacade;->updateIsolatedCenterPoint(Landroid/graphics/Point;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
