.class Landroid/view/TextureView$1;
.super Ljava/lang/Object;
.source "TextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/view/TextureView;->onDetachedFromWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Landroid/view/TextureView;)V
    .locals 0

    iput-object p1, p0, Landroid/view/TextureView$1;->this$0:Landroid/view/TextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/view/TextureView$1;->this$0:Landroid/view/TextureView;

    const/4 v1, 0x0

    # setter for: Landroid/view/TextureView;->mPreventSurfaceLoss:Z
    invoke-static {v0, v1}, Landroid/view/TextureView;->access$002(Landroid/view/TextureView;Z)Z

    iget-object v0, p0, Landroid/view/TextureView$1;->this$0:Landroid/view/TextureView;

    # invokes: Landroid/view/TextureView;->destroySurface()V
    invoke-static {v0}, Landroid/view/TextureView;->access$100(Landroid/view/TextureView;)V

    return-void
.end method
