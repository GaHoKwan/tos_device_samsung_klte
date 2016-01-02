.class public Landroid/widget/ExpandableHeightGridView;
.super Landroid/widget/GridView;
.source "ExpandableHeightGridView.java"


# instance fields
.field private expanded:Z

.field private mItemHeight:I

.field private mLineNum:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Landroid/widget/ExpandableHeightGridView;->expanded:Z

    iput v0, p0, Landroid/widget/ExpandableHeightGridView;->mItemHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v0, p0, Landroid/widget/ExpandableHeightGridView;->expanded:Z

    iput v0, p0, Landroid/widget/ExpandableHeightGridView;->mItemHeight:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v0, p0, Landroid/widget/ExpandableHeightGridView;->expanded:Z

    iput v0, p0, Landroid/widget/ExpandableHeightGridView;->mItemHeight:I

    return-void
.end method


# virtual methods
.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/ExpandableHeightGridView;->expanded:Z

    return v0
.end method

.method public onMeasure(II)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/ExpandableHeightGridView;->isExpanded()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0xffffff

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/GridView;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/widget/ExpandableHeightGridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v2, p0, Landroid/widget/ExpandableHeightGridView;->mItemHeight:I

    if-lez v2, :cond_1

    invoke-virtual {p0}, Landroid/widget/ExpandableHeightGridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/ExpandableHeightGridView;->getNumColumns()I

    move-result v3

    div-int/2addr v2, v3

    iput v2, p0, Landroid/widget/ExpandableHeightGridView;->mLineNum:I

    iget v2, p0, Landroid/widget/ExpandableHeightGridView;->mLineNum:I

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput v2, p0, Landroid/widget/ExpandableHeightGridView;->mLineNum:I

    iget v2, p0, Landroid/widget/ExpandableHeightGridView;->mLineNum:I

    iget v3, p0, Landroid/widget/ExpandableHeightGridView;->mItemHeight:I

    mul-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_1
    return-void

    :cond_0
    iget v2, p0, Landroid/widget/ExpandableHeightGridView;->mLineNum:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/widget/ExpandableHeightGridView;->getMeasuredHeight()I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    goto :goto_1
.end method

.method public setExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/widget/ExpandableHeightGridView;->expanded:Z

    return-void
.end method

.method public setItemHeight(I)V
    .locals 0

    iput p1, p0, Landroid/widget/ExpandableHeightGridView;->mItemHeight:I

    return-void
.end method
