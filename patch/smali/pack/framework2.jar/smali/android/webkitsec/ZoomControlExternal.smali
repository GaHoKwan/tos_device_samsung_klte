.class Landroid/webkitsec/ZoomControlExternal;
.super Ljava/lang/Object;
.source "ZoomControlExternal.java"

# interfaces
.implements Landroid/webkitsec/ZoomControlBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final ZOOM_CONTROLS_TIMEOUT:J


# instance fields
.field private final mPrivateHandler:Landroid/os/Handler;

.field private final mWebView:Landroid/webkitsec/WebViewClassic;

.field private mZoomControlRunnable:Ljava/lang/Runnable;

.field private mZoomControls:Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Landroid/webkitsec/ZoomControlExternal;->ZOOM_CONTROLS_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 1
    .param p1, "webView"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Landroid/webkitsec/ZoomControlExternal;->mWebView:Landroid/webkitsec/WebViewClassic;

    .line 42
    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/ZoomControlExternal;)Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomControlExternal;

    .prologue
    .line 28
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControls:Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkitsec/ZoomControlExternal;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomControlExternal;

    .prologue
    .line 28
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkitsec/ZoomControlExternal;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomControlExternal;

    .prologue
    .line 28
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()J
    .locals 2

    .prologue
    .line 28
    sget-wide v0, Landroid/webkitsec/ZoomControlExternal;->ZOOM_CONTROLS_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$400(Landroid/webkitsec/ZoomControlExternal;)Landroid/webkitsec/WebViewClassic;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomControlExternal;

    .prologue
    .line 28
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method private createZoomControls()Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;
    .locals 2

    .prologue
    .line 96
    new-instance v0, Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    iget-object v1, p0, Landroid/webkitsec/ZoomControlExternal;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v1}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;-><init>(Landroid/content/Context;)V

    .line 97
    .local v0, "zoomControls":Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;
    new-instance v1, Landroid/webkitsec/ZoomControlExternal$2;

    invoke-direct {v1, p0}, Landroid/webkitsec/ZoomControlExternal$2;-><init>(Landroid/webkitsec/ZoomControlExternal;)V

    invoke-virtual {v0, v1}, Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v1, Landroid/webkitsec/ZoomControlExternal$3;

    invoke-direct {v1, p0}, Landroid/webkitsec/ZoomControlExternal$3;-><init>(Landroid/webkitsec/ZoomControlExternal;)V

    invoke-virtual {v0, v1}, Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-object v0
.end method


# virtual methods
.method public getControls()Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControls:Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    if-nez v0, :cond_0

    .line 69
    invoke-direct {p0}, Landroid/webkitsec/ZoomControlExternal;->createZoomControls()Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControls:Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    .line 76
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControls:Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    new-instance v0, Landroid/webkitsec/ZoomControlExternal$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/ZoomControlExternal$1;-><init>(Landroid/webkitsec/ZoomControlExternal;)V

    iput-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControls:Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControls:Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControls:Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    invoke-virtual {v0}, Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;->hide()V

    .line 59
    :cond_1
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControls:Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControls:Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public show()V
    .locals 4

    .prologue
    .line 45
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/ZoomControlExternal;->getControls()Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkitsec/ZoomControlExternal$ExtendedZoomControls;->show(Z)V

    .line 49
    iget-object v0, p0, Landroid/webkitsec/ZoomControlExternal;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkitsec/ZoomControlExternal;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v2, Landroid/webkitsec/ZoomControlExternal;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method
