.class Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;
.super Landroid/view/SurfaceView;
.source "HTML5VideoFullScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VideoSurfaceView"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/HTML5VideoFullScreen;


# direct methods
.method public constructor <init>(Landroid/webkitsec/HTML5VideoFullScreen;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    invoke-static {v2, p1}, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->getDefaultSize(II)I

    move-result v1

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    invoke-static {v2, p2}, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->getDefaultSize(II)I

    move-result v0

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v3}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v3

    mul-int/2addr v3, v1

    if-le v2, v3, :cond_1

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v1

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v3}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v3

    div-int v0, v2, v3

    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->setMeasuredDimension(II)V

    return-void

    :cond_1
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v3}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v3

    mul-int/2addr v3, v1

    if-ge v2, v3, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I
    invoke-static {v2}, Landroid/webkitsec/HTML5VideoFullScreen;->access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v2

    mul-int/2addr v2, v0

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;->this$0:Landroid/webkitsec/HTML5VideoFullScreen;

    # getter for: Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I
    invoke-static {v3}, Landroid/webkitsec/HTML5VideoFullScreen;->access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I

    move-result v3

    div-int v1, v2, v3

    goto :goto_0
.end method
