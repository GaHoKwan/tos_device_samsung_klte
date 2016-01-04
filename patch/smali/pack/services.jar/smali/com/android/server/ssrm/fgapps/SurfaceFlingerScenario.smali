.class public Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;
.super Lcom/android/server/ssrm/fgapps/FgAppListener;
.source "SurfaceFlingerScenario.java"

# interfaces
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$FgAppChangedCallback;
.implements Lcom/android/server/ssrm/fgapps/FgAppListener$MultiWindowStatusCallback;


# instance fields
.field final TAG:Ljava/lang/String;

.field mIsBrowserForeground:Z

.field mMultiWindowOn:Z

.field mSurfaceFlingerParameterChanged:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;-><init>()V

    .line 27
    const-string v0, "SSRMv2:SurfaceFlingerScenario"

    iput-object v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->TAG:Ljava/lang/String;

    .line 32
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mIsBrowserForeground:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mMultiWindowOn:Z

    .line 50
    iput-boolean v1, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mSurfaceFlingerParameterChanged:Z

    .line 30
    return-void
.end method


# virtual methods
.method public onFgAppChanged()V
    .locals 3

    .prologue
    .line 42
    sget-object v2, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/ssrm/SortingMachine;->getInstance(Landroid/content/Context;)Lcom/android/server/ssrm/SortingMachine;

    move-result-object v1

    .line 43
    .local v1, "sm":Lcom/android/server/ssrm/SortingMachine;
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/FgAppListener;->getForegroundPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/ssrm/SortingMachine;->isBrowserApp(Ljava/lang/String;)Z

    move-result v0

    .line 44
    .local v0, "isBrowserForeground":Z
    iget-boolean v2, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mIsBrowserForeground:Z

    if-eq v2, v0, :cond_0

    .line 45
    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mIsBrowserForeground:Z

    .line 46
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->updateParameters()V

    .line 48
    :cond_0
    return-void
.end method

.method public onFgAppInPackageList(Z)V
    .locals 0
    .param p1, "isForeground"    # Z

    .prologue
    .line 38
    return-void
.end method

.method public onMultiWindowStatusChanged(Z)V
    .locals 0
    .param p1, "isMultiWindowOn"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mMultiWindowOn:Z

    .line 65
    invoke-virtual {p0}, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->updateParameters()V

    .line 66
    return-void
.end method

.method protected updateParameters()V
    .locals 2

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mIsBrowserForeground:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mMultiWindowOn:Z

    if-nez v0, :cond_1

    .line 54
    const-string v0, "SSRMv2:SurfaceFlingerScenario"

    const-string v1, "service call SurfaceFlinger 1051 i32 1"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->executeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mSurfaceFlingerParameterChanged:Z

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mSurfaceFlingerParameterChanged:Z

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "SSRMv2:SurfaceFlingerScenario"

    const-string v1, "service call SurfaceFlinger 1051 i32 0"

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->executeCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ssrm/fgapps/SurfaceFlingerScenario;->mSurfaceFlingerParameterChanged:Z

    goto :goto_0
.end method
