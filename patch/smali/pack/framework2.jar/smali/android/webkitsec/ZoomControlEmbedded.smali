.class Landroid/webkitsec/ZoomControlEmbedded;
.super Ljava/lang/Object;
.source "ZoomControlEmbedded.java"

# interfaces
.implements Landroid/webkitsec/ZoomControlBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/ZoomControlEmbedded$1;,
        Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;
    }
.end annotation


# instance fields
.field private final mWebView:Landroid/webkitsec/WebViewClassic;

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private final mZoomManager:Landroid/webkitsec/ZoomManager;


# direct methods
.method public constructor <init>(Landroid/webkitsec/ZoomManager;Landroid/webkitsec/WebViewClassic;)V
    .locals 0
    .param p1, "zoomManager"    # Landroid/webkitsec/ZoomManager;
    .param p2, "webView"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    .line 35
    iput-object p2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;

    .line 36
    return-void
.end method

.method static synthetic access$100(Landroid/webkitsec/ZoomControlEmbedded;)Landroid/webkitsec/WebViewClassic;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomControlEmbedded;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method static synthetic access$200(Landroid/webkitsec/ZoomControlEmbedded;)Landroid/widget/ZoomButtonsController;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/ZoomControlEmbedded;

    .prologue
    .line 25
    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method private getControls()Landroid/widget/ZoomButtonsController;
    .locals 5

    .prologue
    .line 84
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_0

    .line 85
    new-instance v2, Landroid/widget/ZoomButtonsController;

    iget-object v3, p0, Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 86
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    new-instance v3, Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Landroid/webkitsec/ZoomControlEmbedded$ZoomListener;-><init>(Landroid/webkitsec/ZoomControlEmbedded;Landroid/webkitsec/ZoomControlEmbedded$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 90
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v0

    .line 91
    .local v0, "controls":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 92
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    .line 94
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    const v2, 0x800005

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 97
    .end local v0    # "controls":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v2
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 60
    :cond_0
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

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
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 39
    invoke-direct {p0}, Landroid/webkitsec/ZoomControlEmbedded;->getControls()Landroid/widget/ZoomButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->isZoomScaleFixed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 41
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v4}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 43
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->isDoubleTapEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 44
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v1

    .line 45
    .local v1, "settings":Landroid/webkitsec/WebSettingsClassic;
    invoke-virtual {v1}, Landroid/webkitsec/WebSettingsClassic;->getDoubleTapToastCount()I

    move-result v0

    .line 46
    .local v0, "count":I
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->isInZoomOverview()Z

    move-result v2

    if-eqz v2, :cond_0

    if-lez v0, :cond_0

    .line 47
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkitsec/WebSettingsClassic;->setDoubleTapToastCount(I)V

    .line 48
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x10405f6

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 54
    .end local v0    # "count":I
    .end local v1    # "settings":Landroid/webkitsec/WebSettingsClassic;
    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 67
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_0

    .line 81
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->canZoomIn()Z

    move-result v0

    .line 72
    .local v0, "canZoomIn":Z
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->canZoomOut()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomManager:Landroid/webkitsec/ZoomManager;

    invoke-virtual {v2}, Landroid/webkitsec/ZoomManager;->isInZoomOverview()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x1

    .line 73
    .local v1, "canZoomOut":Z
    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 75
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 72
    .end local v1    # "canZoomOut":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 78
    .restart local v1    # "canZoomOut":Z
    :cond_2
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 79
    iget-object v2, p0, Landroid/webkitsec/ZoomControlEmbedded;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_0
.end method
