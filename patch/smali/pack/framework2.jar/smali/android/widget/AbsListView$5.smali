.class Landroid/widget/AbsListView$5;
.super Ljava/lang/Object;
.source "AbsListView.java"

# interfaces
.implements Landroid/hardware/motion/MRListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMotionListener(Landroid/hardware/motion/MREvent;)V
    .locals 3

    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mMotionEnable:Z
    invoke-static {v1}, Landroid/widget/AbsListView;->access$5800(Landroid/widget/AbsListView;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHasWindowFocusForMotion:Z
    invoke-static {v1}, Landroid/widget/AbsListView;->access$5900(Landroid/widget/AbsListView;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/hardware/motion/MREvent;->getMotion()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "[Motion-DoubleTap]"

    # invokes: Landroid/widget/AbsListView;->log(Ljava/lang/String;)V
    invoke-static {v1}, Landroid/widget/AbsListView;->access$6000(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    iget-object v2, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v2}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    :cond_2
    iget-object v1, p0, Landroid/widget/AbsListView$5;->this$0:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->smoothScrollToPosition(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
