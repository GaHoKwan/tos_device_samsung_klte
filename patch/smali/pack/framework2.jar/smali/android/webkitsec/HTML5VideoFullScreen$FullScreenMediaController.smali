.class Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;
.super Landroid/widget/MediaController;
.source "HTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FullScreenMediaController"
.end annotation


# instance fields
.field mVideoView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p3}, Landroid/widget/MediaController;-><init>(Landroid/content/Context;Z)V

    iput-object p2, p0, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 2

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    invoke-super {p0}, Landroid/widget/MediaController;->hide()V

    return-void
.end method

.method public show()V
    .locals 2

    invoke-super {p0}, Landroid/widget/MediaController;->show()V

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;->mVideoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method
