.class public Landroid/webkitsec/HtmlComposerView$SelectionOffset;
.super Ljava/lang/Object;
.source "HtmlComposerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/HtmlComposerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SelectionOffset"
.end annotation


# instance fields
.field public endOffset:I

.field public startOffset:I

.field final synthetic this$0:Landroid/webkitsec/HtmlComposerView;


# direct methods
.method public constructor <init>(Landroid/webkitsec/HtmlComposerView;II)V
    .locals 0

    iput-object p1, p0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->this$0:Landroid/webkitsec/HtmlComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->startOffset:I

    iput p3, p0, Landroid/webkitsec/HtmlComposerView$SelectionOffset;->endOffset:I

    return-void
.end method
