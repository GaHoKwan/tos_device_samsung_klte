.class public Landroid/webkitsec/WebViewClassic$ColorPickerDialog;
.super Landroid/app/Dialog;
.source "WebViewClassic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ColorPickerDialog"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method public constructor <init>(Landroid/webkitsec/WebViewClassic;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 7756
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog;->this$0:Landroid/webkitsec/WebViewClassic;

    .line 7757
    invoke-direct {p0, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 7758
    const-string v0, "Pick a Color"

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 7759
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 7763
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 7764
    const v1, 0x1090045

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 7766
    const v1, 0x1020303

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    .line 7767
    .local v0, "gridViewColors":Landroid/widget/GridView;
    new-instance v1, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;

    iget-object v2, p0, Landroid/webkitsec/WebViewClassic$ColorPickerDialog;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {v1, v2}, Landroid/webkitsec/WebViewClassic$ColorPickerAdapter;-><init>(Landroid/webkitsec/WebViewClassic;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 7770
    new-instance v1, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$1;

    invoke-direct {v1, p0, v0}, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$1;-><init>(Landroid/webkitsec/WebViewClassic$ColorPickerDialog;Landroid/widget/GridView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 7779
    new-instance v1, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$2;

    invoke-direct {v1, p0}, Landroid/webkitsec/WebViewClassic$ColorPickerDialog$2;-><init>(Landroid/webkitsec/WebViewClassic$ColorPickerDialog;)V

    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 7784
    return-void
.end method
