.class Landroid/webkitsec/WebViewClassic$InvokeListBox$1;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewClassic$InvokeListBox;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

.field final synthetic val$adapter:Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;

.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;Landroid/widget/ListView;)V
    .locals 0

    .prologue
    .line 14376
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iput-object p2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->val$adapter:Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;

    iput-object p3, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 14378
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x1

    # setter for: Landroid/webkitsec/WebViewClassic;->mSelectFocusMoved:Z
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$9402(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 14379
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mIsTextFieldNext:Z

    if-eqz v0, :cond_1

    .line 14380
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14381
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkitsec/WebSelectDialog;->dismiss()V

    .line 14382
    :cond_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$9302(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebSelectDialog;)Landroid/webkitsec/WebSelectDialog;

    .line 14383
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z
    invoke-static {v0, v4}, Landroid/webkitsec/WebViewClassic;->access$9202(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 14386
    :cond_1
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 14387
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    # getter for: Landroid/webkitsec/WebViewClassic$InvokeListBox;->mMultiple:Z
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic$InvokeListBox;->access$12700(Landroid/webkitsec/WebViewClassic$InvokeListBox;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 14388
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7b

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->val$adapter:Landroid/webkitsec/WebViewClassic$InvokeListBox$MyArrayListAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 14396
    :goto_0
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x258

    invoke-virtual {v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(I)V

    .line 14399
    :cond_2
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v0, v0, Landroid/webkitsec/WebViewClassic;->mIsTextFieldNext:Z

    if-eqz v0, :cond_3

    .line 14400
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->moveCursorToEnd()V

    .line 14403
    :cond_3
    return-void

    .line 14393
    :cond_4
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$1;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v4}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method
