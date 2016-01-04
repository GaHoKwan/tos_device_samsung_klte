.class Landroid/webkitsec/ViewManager$ChildView;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/ViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildView"
.end annotation


# instance fields
.field height:I

.field mView:Landroid/view/View;

.field final synthetic this$0:Landroid/webkitsec/ViewManager;

.field width:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(Landroid/webkitsec/ViewManager;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method static synthetic access$100(Landroid/webkitsec/ViewManager$ChildView;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/ViewManager$ChildView;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/webkitsec/ViewManager$ChildView;->attachViewOnUIThread()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkitsec/ViewManager$ChildView;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/ViewManager$ChildView;

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/webkitsec/ViewManager$ChildView;->removeViewOnUIThread()V

    return-void
.end method

.method private attachViewOnUIThread()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$200(Landroid/webkitsec/ViewManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mChildren:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$300(Landroid/webkitsec/ViewManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mReadyToDraw:Z
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$400(Landroid/webkitsec/ViewManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_0
    return-void
.end method

.method private removeViewOnUIThread()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$200(Landroid/webkitsec/ViewManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mChildren:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$300(Landroid/webkitsec/ViewManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 99
    return-void
.end method


# virtual methods
.method attachView(IIII)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 57
    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/webkitsec/ViewManager$ChildView;->setBounds(IIII)V

    .line 62
    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$200(Landroid/webkitsec/ViewManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkitsec/ViewManager$ChildView$1;

    invoke-direct {v1, p0}, Landroid/webkitsec/ViewManager$ChildView$1;-><init>(Landroid/webkitsec/ViewManager$ChildView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method removeView()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/ViewManager$ChildView;->this$0:Landroid/webkitsec/ViewManager;

    # getter for: Landroid/webkitsec/ViewManager;->mWebView:Landroid/webkitsec/WebViewClassic;
    invoke-static {v0}, Landroid/webkitsec/ViewManager;->access$200(Landroid/webkitsec/ViewManager;)Landroid/webkitsec/WebViewClassic;

    move-result-object v0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkitsec/ViewManager$ChildView$2;

    invoke-direct {v1, p0}, Landroid/webkitsec/ViewManager$ChildView$2;-><init>(Landroid/webkitsec/ViewManager$ChildView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method setBounds(IIII)V
    .locals 0
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 50
    iput p1, p0, Landroid/webkitsec/ViewManager$ChildView;->x:I

    .line 51
    iput p2, p0, Landroid/webkitsec/ViewManager$ChildView;->y:I

    .line 52
    iput p3, p0, Landroid/webkitsec/ViewManager$ChildView;->width:I

    .line 53
    iput p4, p0, Landroid/webkitsec/ViewManager$ChildView;->height:I

    .line 54
    return-void
.end method
