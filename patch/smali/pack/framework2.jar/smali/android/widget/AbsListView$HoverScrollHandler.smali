.class Landroid/widget/AbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/AbsListView;Landroid/widget/AbsListView$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/AbsListView$HoverScrollHandler;-><init>(Landroid/widget/AbsListView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11

    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/4 v5, 0x0

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    long-to-int v8, v8

    # setter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$6102(Landroid/widget/AbsListView;I)I

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$6100(Landroid/widget/AbsListView;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionStartTime:I
    invoke-static {v9}, Landroid/widget/AbsListView;->access$6300(Landroid/widget/AbsListView;)I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit16 v8, v8, 0x3e8

    # setter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$6202(Landroid/widget/AbsListView;I)I

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionCurrentTime:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6100(Landroid/widget/AbsListView;)I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollStartTime:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$6400(Landroid/widget/AbsListView;)I

    move-result v8

    sub-int/2addr v7, v8

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollTimeInterval:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$6500(Landroid/widget/AbsListView;)I

    move-result v8

    if-lt v7, v8, :cond_0

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v4

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    add-int/2addr v7, v4

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v8, v8, Landroid/widget/AbsListView;->mItemCount:I

    if-ge v7, v8, :cond_7

    const/4 v1, 0x1

    :goto_1
    if-nez v1, :cond_2

    if-lez v4, :cond_2

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    add-int/lit8 v8, v4, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mBottom:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$6600(Landroid/widget/AbsListView;)I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-gt v7, v8, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getHeight()I

    move-result v8

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v9, v9, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    if-le v7, v8, :cond_8

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_2
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget v7, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    if-lez v7, :cond_9

    const/4 v2, 0x1

    :goto_3
    if-nez v2, :cond_3

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v7

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, v8, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    if-ge v7, v8, :cond_a

    const/4 v2, 0x1

    :cond_3
    :goto_4
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6200(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x2

    if-le v7, v8, :cond_b

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6200(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x4

    if-ge v7, v8, :cond_b

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$6800(Landroid/widget/AbsListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    # setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$6702(Landroid/widget/AbsListView;I)I

    :goto_5
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6900(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_e

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6700(Landroid/widget/AbsListView;)I

    move-result v7

    mul-int/lit8 v5, v7, -0x1

    :goto_6
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v8, 0x438

    if-lt v7, v8, :cond_4

    mul-int/lit8 v5, v5, 0x2

    :cond_4
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v8}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_0

    if-gez v5, :cond_5

    if-nez v2, :cond_6

    :cond_5
    if-lez v5, :cond_f

    if-eqz v1, :cond_f

    :cond_6
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x0

    invoke-virtual {v7, v5, v8}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverHandler:Landroid/widget/AbsListView$HoverScrollHandler;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7100(Landroid/widget/AbsListView;)Landroid/widget/AbsListView$HoverScrollHandler;

    move-result-object v7

    const/4 v8, 0x1

    iget-object v9, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_DELAY:I
    invoke-static {v9}, Landroid/widget/AbsListView;->access$7000(Landroid/widget/AbsListView;)I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v8, v9, v10}, Landroid/widget/AbsListView$HoverScrollHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    :cond_9
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_a
    const/4 v2, 0x0

    goto :goto_4

    :cond_b
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6200(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x4

    if-lt v7, v8, :cond_c

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6200(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_c

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$6800(Landroid/widget/AbsListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x4

    # setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$6702(Landroid/widget/AbsListView;I)I

    goto :goto_5

    :cond_c
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverRecognitionDurationTime:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6200(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x5

    if-lt v7, v8, :cond_d

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$6800(Landroid/widget/AbsListView;)I

    move-result v8

    add-int/lit8 v8, v8, 0x6

    # setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$6702(Landroid/widget/AbsListView;I)I

    goto/16 :goto_5

    :cond_d
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    iget-object v8, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->HOVERSCROLL_SPEED:I
    invoke-static {v8}, Landroid/widget/AbsListView;->access$6800(Landroid/widget/AbsListView;)I

    move-result v8

    # setter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$6702(Landroid/widget/AbsListView;I)I

    goto/16 :goto_5

    :cond_e
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollSpeed:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6700(Landroid/widget/AbsListView;)I

    move-result v7

    mul-int/lit8 v5, v7, 0x1

    goto/16 :goto_6

    :cond_f
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getOverScrollMode()I

    move-result v6

    if-eqz v6, :cond_10

    const/4 v7, 0x1

    if-ne v6, v7, :cond_15

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # invokes: Landroid/widget/AbsListView;->contentFits()Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$2900(Landroid/widget/AbsListView;)Z

    move-result v7

    if-nez v7, :cond_15

    :cond_10
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_14

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7200(Landroid/widget/AbsListView;)Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6900(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_16

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    :cond_11
    :goto_8
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    if-eqz v7, :cond_13

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_12

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_13

    :cond_12
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->invalidate()V

    :cond_13
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x1

    # setter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7202(Landroid/widget/AbsListView;Z)Z

    :cond_14
    if-nez v0, :cond_0

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7}, Landroid/widget/AbsListView;->access$7200(Landroid/widget/AbsListView;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    const/4 v8, 0x1

    # setter for: Landroid/widget/AbsListView;->mIsHoverOverscrolled:Z
    invoke-static {v7, v8}, Landroid/widget/AbsListView;->access$7202(Landroid/widget/AbsListView;Z)Z

    goto/16 :goto_0

    :cond_15
    const/4 v0, 0x0

    goto :goto_7

    :cond_16
    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mHoverScrollDirection:I
    invoke-static {v7}, Landroid/widget/AbsListView;->access$6900(Landroid/widget/AbsListView;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_11

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowBottom:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3100(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/EdgeEffect;->onPull(F)V

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p0, Landroid/widget/AbsListView$HoverScrollHandler;->this$0:Landroid/widget/AbsListView;

    # getter for: Landroid/widget/AbsListView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;
    invoke-static {v7}, Landroid/widget/AbsListView;->access$3000(Landroid/widget/AbsListView;)Landroid/widget/EdgeEffect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EdgeEffect;->onRelease()V

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
