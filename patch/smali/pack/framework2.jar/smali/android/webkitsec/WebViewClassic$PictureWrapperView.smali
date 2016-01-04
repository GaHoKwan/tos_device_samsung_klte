.class Landroid/webkitsec/WebViewClassic$PictureWrapperView;
.super Landroid/view/View;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PictureWrapperView"
.end annotation


# instance fields
.field mPicture:Landroid/graphics/Picture;

.field mWebView:Landroid/webkitsec/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/Picture;Landroid/webkitsec/WebView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "picture"    # Landroid/graphics/Picture;
    .param p3, "parent"    # Landroid/webkitsec/WebView;

    .prologue
    .line 15753
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 15754
    iput-object p2, p0, Landroid/webkitsec/WebViewClassic$PictureWrapperView;->mPicture:Landroid/graphics/Picture;

    .line 15755
    iput-object p3, p0, Landroid/webkitsec/WebViewClassic$PictureWrapperView;->mWebView:Landroid/webkitsec/WebView;

    .line 15756
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 15757
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PictureWrapperView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setRight(I)V

    .line 15758
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PictureWrapperView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBottom(I)V

    .line 15759
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 15763
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PictureWrapperView;->mPicture:Landroid/graphics/Picture;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 15764
    return-void
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "action"    # Ljava/lang/Runnable;

    .prologue
    .line 15768
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PictureWrapperView;->mWebView:Landroid/webkitsec/WebView;

    invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method
