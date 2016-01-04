.class Landroid/webkitsec/HtmlComposerView$2;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"

# interfaces
.implements Landroid/widget/HoverPopupWindow$HoverPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/HtmlComposerView;->HtmlComposerViewInit(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/HtmlComposerView;


# direct methods
.method constructor <init>(Landroid/webkitsec/HtmlComposerView;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView$2;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetContentView(Landroid/view/View;Landroid/widget/HoverPopupWindow;)Z
    .locals 1
    .param p1, "parentView"    # Landroid/view/View;
    .param p2, "hpw"    # Landroid/widget/HoverPopupWindow;

    .prologue
    .line 556
    const/4 v0, 0x1

    return v0
.end method
