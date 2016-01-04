.class public Lcom/android/server/wm/ScreenFreezeSurface;
.super Ljava/lang/Object;
.source "ScreenFreezeSurface.java"


# instance fields
.field final mLayer:I

.field mLeft:I

.field final mSurface:Landroid/view/SurfaceControl;

.field mTop:I


# direct methods
.method constructor <init>(Landroid/view/SurfaceSession;IIIIII)V
    .locals 8
    .param p1, "session"    # Landroid/view/SurfaceSession;
    .param p2, "layer"    # I
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I
    .param p7, "layerStack"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/SurfaceControl$OutOfResourcesException;
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p3, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mLeft:I

    .line 40
    iput p4, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mTop:I

    .line 41
    iput p2, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mLayer:I

    .line 42
    sub-int v3, p5, p3

    .line 43
    .local v3, "w":I
    sub-int v4, p6, p4

    .line 50
    .local v4, "h":I
    new-instance v0, Landroid/view/SurfaceControl;

    const-string v2, "ScreenFreezeSurface"

    const/4 v5, -0x1

    const/4 v6, 0x4

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/SurfaceControl;-><init>(Landroid/view/SurfaceSession;Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    .line 54
    new-instance v7, Landroid/view/Surface;

    invoke-direct {v7}, Landroid/view/Surface;-><init>()V

    .line 55
    .local v7, "sur":Landroid/view/Surface;
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v7, v0}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, v7}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V

    .line 59
    invoke-virtual {v7}, Landroid/view/Surface;->destroy()V

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    const v1, 0x3f7d70a4    # 0.99f

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 62
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p7}, Landroid/view/SurfaceControl;->setLayerStack(I)V

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p2}, Landroid/view/SurfaceControl;->setLayer(I)V

    .line 64
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->hide()V

    .line 76
    return-void
.end method

.method public kill()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 84
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    .line 72
    return-void
.end method

.method public setMatrix(FFFF)V
    .locals 1
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    .line 88
    return-void
.end method

.method public setPosition(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1, p2}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 68
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeSurface;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
