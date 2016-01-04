.class Landroid/webkitsec/WebViewClassic$ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewClassic$ColorPickerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebViewClassic$ColorPickerDialog;

.field final synthetic val$gridViewColors:Landroid/widget/GridView;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic$ColorPickerDialog;Landroid/widget/GridView;)V
    .locals 0

    .prologue
    .line 7770
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$1;->this$1:Landroid/webkitsec/WebViewClassic$ColorPickerDialog;

    iput-object p2, p0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$1;->val$gridViewColors:Landroid/widget/GridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 7773
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$1;->this$1:Landroid/webkitsec/WebViewClassic$ColorPickerDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 7774
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$1;->val$gridViewColors:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    .line 7775
    .local v0, "color":Ljava/lang/Integer;
    iget-object v1, p0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$1;->this$1:Landroid/webkitsec/WebViewClassic$ColorPickerDialog;

    iget-object v1, v1, Landroid/webkitsec/WebViewClassic$ColorPickerDialog;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Landroid/webkitsec/WebViewClassic;->updateColor(I)V
    invoke-static {v1, v2}, Landroid/webkitsec/WebViewClassic;->access$3900(Landroid/webkitsec/WebViewClassic;I)V

    .line 7776
    return-void
.end method
