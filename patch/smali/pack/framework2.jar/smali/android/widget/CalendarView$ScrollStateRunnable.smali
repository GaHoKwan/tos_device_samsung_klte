.class Landroid/widget/CalendarView$ScrollStateRunnable;
.super Ljava/lang/Object;
.source "CalendarView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CalendarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollStateRunnable"
.end annotation


# instance fields
.field private mNewState:I

.field private mView:Landroid/widget/AbsListView;

.field final synthetic this$0:Landroid/widget/CalendarView;


# direct methods
.method private constructor <init>(Landroid/widget/CalendarView;)V
    .locals 0

    .prologue
    .line 1372
    iput-object p1, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/CalendarView;Landroid/widget/CalendarView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/CalendarView;
    .param p2, "x1"    # Landroid/widget/CalendarView$1;

    .prologue
    .line 1372
    invoke-direct {p0, p1}, Landroid/widget/CalendarView$ScrollStateRunnable;-><init>(Landroid/widget/CalendarView;)V

    return-void
.end method


# virtual methods
.method public doScrollStateChange(Landroid/widget/AbsListView;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 1385
    iput-object p1, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    .line 1386
    iput p2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    .line 1387
    iget-object v0, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1388
    iget-object v0, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    const-wide/16 v1, 0x28

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1389
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/16 v4, 0x1f4

    .line 1392
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    iget v3, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    # setter for: Landroid/widget/CalendarView;->mCurrentScrollState:I
    invoke-static {v2, v3}, Landroid/widget/CalendarView;->access$1002(Landroid/widget/CalendarView;I)I

    .line 1394
    iget v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mPreviousScrollState:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1100(Landroid/widget/CalendarView;)I

    move-result v2

    if-eqz v2, :cond_1

    .line 1396
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1397
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_0

    .line 1411
    .end local v0    # "child":Landroid/view/View;
    :goto_0
    return-void

    .line 1401
    .restart local v0    # "child":Landroid/view/View;
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mListScrollTopOffset:I
    invoke-static {v3}, Landroid/widget/CalendarView;->access$1200(Landroid/widget/CalendarView;)I

    move-result v3

    sub-int v1, v2, v3

    .line 1402
    .local v1, "dist":I
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mListScrollTopOffset:I
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1200(Landroid/widget/CalendarView;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 1403
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    # getter for: Landroid/widget/CalendarView;->mIsScrollingUp:Z
    invoke-static {v2}, Landroid/widget/CalendarView;->access$1300(Landroid/widget/CalendarView;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1404
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {v2, v3, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 1410
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "dist":I
    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->this$0:Landroid/widget/CalendarView;

    iget v3, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mNewState:I

    # setter for: Landroid/widget/CalendarView;->mPreviousScrollState:I
    invoke-static {v2, v3}, Landroid/widget/CalendarView;->access$1102(Landroid/widget/CalendarView;I)I

    goto :goto_0

    .line 1406
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "dist":I
    :cond_2
    iget-object v2, p0, Landroid/widget/CalendarView$ScrollStateRunnable;->mView:Landroid/widget/AbsListView;

    invoke-virtual {v2, v1, v4}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    goto :goto_1
.end method
