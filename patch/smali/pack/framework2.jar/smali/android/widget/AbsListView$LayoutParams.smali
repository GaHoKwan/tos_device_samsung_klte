.class public Landroid/widget/AbsListView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field forceAdd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field itemId:J

.field recycledHeaderFooter:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field scrappedFromPosition:I

.field viewType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "ITEM_VIEW_TYPE_IGNORE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "ITEM_VIEW_TYPE_HEADER_OR_FOOTER"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 8058
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 8051
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 8059
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "viewType"    # I

    .prologue
    .line 8062
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 8051
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 8063
    iput p3, p0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 8064
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 8054
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8051
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 8055
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 8067
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 8051
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 8068
    return-void
.end method
