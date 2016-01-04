.class Landroid/webkitsec/WebViewClassic$InvokeListBox$5;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic$InvokeListBox;)V
    .locals 0

    .prologue
    .line 14508
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$5;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    const/4 v3, 0x0

    .line 14511
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$5;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z
    invoke-static {v0, v3}, Landroid/webkitsec/WebViewClassic;->access$9202(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 14512
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$5;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$9302(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebSelectDialog;)Landroid/webkitsec/WebSelectDialog;

    .line 14513
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$5;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 14514
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$InvokeListBox$5;->this$1:Landroid/webkitsec/WebViewClassic$InvokeListBox;

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$InvokeListBox;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v0

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    .line 14517
    :cond_0
    return-void
.end method
