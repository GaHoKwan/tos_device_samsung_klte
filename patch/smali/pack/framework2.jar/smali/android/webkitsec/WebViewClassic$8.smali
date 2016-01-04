.class Landroid/webkitsec/WebViewClassic$8;
.super Landroid/os/AsyncTask;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewClassic;->loadViewState(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/InputStream;",
        "Ljava/lang/Void;",
        "Landroid/webkitsec/WebViewCore$DrawData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    .prologue
    .line 4620
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/InputStream;)Landroid/webkitsec/WebViewCore$DrawData;
    .locals 2
    .param p1, "params"    # [Ljava/io/InputStream;

    .prologue
    .line 4625
    const/4 v1, 0x0

    :try_start_0
    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/webkitsec/ViewStateSerializer;->deserializeViewState(Ljava/io/InputStream;)Landroid/webkitsec/WebViewCore$DrawData;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 4627
    :goto_0
    return-object v1

    .line 4626
    :catch_0
    move-exception v0

    .line 4627
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 4620
    check-cast p1, [Ljava/io/InputStream;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic$8;->doInBackground([Ljava/io/InputStream;)Landroid/webkitsec/WebViewCore$DrawData;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/webkitsec/WebViewCore$DrawData;)V
    .locals 5
    .param p1, "draw"    # Landroid/webkitsec/WebViewCore$DrawData;

    .prologue
    .line 4633
    if-nez p1, :cond_0

    .line 4634
    const-string/jumbo v2, "webview"

    const-string v3, "Failed to load view state!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4644
    :goto_0
    return-void

    .line 4637
    :cond_0
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v1

    .line 4638
    .local v1, "viewWidth":I
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewClassic;->getViewHeightWithTitle()I

    move-result v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v3

    sub-int v0, v2, v3

    .line 4639
    .local v0, "viewHeight":I
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewSize:Landroid/graphics/Point;

    .line 4640
    iget-object v2, p1, Landroid/webkitsec/WebViewCore$DrawData;->mViewState:Landroid/webkitsec/WebViewCore$ViewState;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getDefaultZoomScale()F

    move-result v3

    iput v3, v2, Landroid/webkitsec/WebViewCore$ViewState;->mDefaultScale:F

    .line 4641
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->mLoadedPicture:Landroid/webkitsec/WebViewCore$DrawData;
    invoke-static {v2, p1}, Landroid/webkitsec/WebViewClassic;->access$3602(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$DrawData;)Landroid/webkitsec/WebViewCore$DrawData;

    .line 4642
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mLoadedPicture:Landroid/webkitsec/WebViewCore$DrawData;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$3600(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$DrawData;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/webkitsec/WebViewClassic;->setNewPicture(Landroid/webkitsec/WebViewCore$DrawData;Z)V

    .line 4643
    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$8;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mLoadedPicture:Landroid/webkitsec/WebViewCore$DrawData;
    invoke-static {v2}, Landroid/webkitsec/WebViewClassic;->access$3600(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$DrawData;

    move-result-object v2

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/webkitsec/WebViewCore$DrawData;->mViewState:Landroid/webkitsec/WebViewCore$ViewState;

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4620
    check-cast p1, Landroid/webkitsec/WebViewCore$DrawData;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/webkitsec/WebViewClassic$8;->onPostExecute(Landroid/webkitsec/WebViewCore$DrawData;)V

    return-void
.end method
