.class Landroid/widget/AbsListView$TwSmoothScrollByMove;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwSmoothScrollByMove"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    .prologue
    .line 6353
    iput-object p1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/AbsListView;
    .param p2, "x1"    # Landroid/widget/AbsListView$1;

    .prologue
    .line 6353
    invoke-direct {p0, p1}, Landroid/widget/AbsListView$TwSmoothScrollByMove;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6355
    iget-object v1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mFlingRunnable:Landroid/widget/AbsListView$FlingRunnable;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4200(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$FlingRunnable;

    move-result-object v1

    # getter for: Landroid/widget/AbsListView$FlingRunnable;->mScroller:Landroid/widget/OverScroller;
    invoke-static {v1}, Landroid/widget/AbsListView$FlingRunnable;->access$2000(Landroid/widget/AbsListView$FlingRunnable;)Landroid/widget/OverScroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6356
    iget-object v1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4300(Landroid/widget/AbsListView;)Ljava/util/LinkedList;

    move-result-object v2

    monitor-enter v2

    .line 6357
    :try_start_0
    iget-object v1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4300(Landroid/widget/AbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6358
    monitor-exit v2

    .line 6366
    :goto_0
    return-void

    .line 6360
    :cond_0
    iget-object v1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mTwTwScrollRemains:Ljava/util/LinkedList;
    invoke-static {v1}, Landroid/widget/AbsListView;->access$4300(Landroid/widget/AbsListView;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6361
    .local v0, "remain":I
    iget-object v1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v3, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZ)V

    .line 6363
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6365
    .end local v0    # "remain":I
    :cond_1
    iget-object v1, p0, Landroid/widget/AbsListView$TwSmoothScrollByMove;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 6363
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
