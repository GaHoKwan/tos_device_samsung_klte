.class final Landroid/view/ViewRootImpl$ViewRootHandler;
.super Landroid/os/Handler;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ViewRootHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    .prologue
    .line 3473
    iput-object p1, p0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageName(Landroid/os/Message;)Ljava/lang/String;
    .locals 1
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 3476
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 3528
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->getMessageName(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 3478
    :pswitch_1
    const-string v0, "MSG_INVALIDATE"

    goto :goto_0

    .line 3480
    :pswitch_2
    const-string v0, "MSG_INVALIDATE_RECT"

    goto :goto_0

    .line 3482
    :pswitch_3
    const-string v0, "MSG_DIE"

    goto :goto_0

    .line 3484
    :pswitch_4
    const-string v0, "MSG_RESIZED"

    goto :goto_0

    .line 3486
    :pswitch_5
    const-string v0, "MSG_RESIZED_REPORT"

    goto :goto_0

    .line 3488
    :pswitch_6
    const-string v0, "MSG_WINDOW_FOCUS_CHANGED"

    goto :goto_0

    .line 3490
    :pswitch_7
    const-string v0, "MSG_DISPATCH_INPUT_EVENT"

    goto :goto_0

    .line 3492
    :pswitch_8
    const-string v0, "MSG_DISPATCH_APP_VISIBILITY"

    goto :goto_0

    .line 3494
    :pswitch_9
    const-string v0, "MSG_DISPATCH_GET_NEW_SURFACE"

    goto :goto_0

    .line 3496
    :pswitch_a
    const-string v0, "MSG_DISPATCH_KEY_FROM_IME"

    goto :goto_0

    .line 3498
    :pswitch_b
    const-string v0, "MSG_FINISH_INPUT_CONNECTION"

    goto :goto_0

    .line 3500
    :pswitch_c
    const-string v0, "MSG_CHECK_FOCUS"

    goto :goto_0

    .line 3502
    :pswitch_d
    const-string v0, "MSG_CLOSE_SYSTEM_DIALOGS"

    goto :goto_0

    .line 3504
    :pswitch_e
    const-string v0, "MSG_DISPATCH_DRAG_EVENT"

    goto :goto_0

    .line 3506
    :pswitch_f
    const-string v0, "MSG_DISPATCH_DRAG_LOCATION_EVENT"

    goto :goto_0

    .line 3508
    :pswitch_10
    const-string v0, "MSG_DISPATCH_SYSTEM_UI_VISIBILITY"

    goto :goto_0

    .line 3510
    :pswitch_11
    const-string v0, "MSG_UPDATE_CONFIGURATION"

    goto :goto_0

    .line 3512
    :pswitch_12
    const-string v0, "MSG_PROCESS_INPUT_EVENTS"

    goto :goto_0

    .line 3514
    :pswitch_13
    const-string v0, "MSG_DISPATCH_SCREEN_STATE"

    goto :goto_0

    .line 3516
    :pswitch_14
    const-string v0, "MSG_CLEAR_ACCESSIBILITY_FOCUS_HOST"

    goto :goto_0

    .line 3518
    :pswitch_15
    const-string v0, "MSG_DISPATCH_DONE_ANIMATING"

    goto :goto_0

    .line 3520
    :pswitch_16
    const-string v0, "MSG_WINDOW_MOVED"

    goto :goto_0

    .line 3522
    :pswitch_17
    const-string v0, "MSG_FLUSH_LAYER_UPDATES"

    goto :goto_0

    .line 3524
    :pswitch_18
    const-string v0, "MSG_DISPATCH_SPEN_GESTURE"

    goto :goto_0

    .line 3526
    :pswitch_19
    const-string v0, "MSG_DISPATCH_AIR_BUTTON_HIT_TEST"

    goto :goto_0

    .line 3476
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_0
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 38
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3533
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 3869
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 3535
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 3538
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/view/View$AttachInfo$InvalidateInfo;

    .line 3539
    .local v22, "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    move-object/from16 v0, v22

    iget-object v4, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->target:Landroid/view/View;

    move-object/from16 v0, v22

    iget v5, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->left:I

    move-object/from16 v0, v22

    iget v6, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->top:I

    move-object/from16 v0, v22

    iget v7, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->right:I

    move-object/from16 v0, v22

    iget v8, v0, Landroid/view/View$AttachInfo$InvalidateInfo;->bottom:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->invalidate(IIII)V

    .line 3540
    invoke-virtual/range {v22 .. v22}, Landroid/view/View$AttachInfo$InvalidateInfo;->recycle()V

    goto :goto_0

    .line 3543
    .end local v22    # "info":Landroid/view/View$AttachInfo$InvalidateInfo;
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/view/ViewRootImpl;->mProcessInputEventsScheduled:Z

    .line 3544
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->doProcessInputEvents()V

    goto :goto_0

    .line 3547
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v5, v4}, Landroid/view/ViewRootImpl;->handleAppVisibility(Z)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 3550
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->handleGetNewSurface()V

    goto :goto_0

    .line 3554
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 3555
    .local v9, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v5, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v5, v9, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v5, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v5, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 3561
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    instance-of v4, v4, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 3562
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    check-cast v4, Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v25

    .line 3563
    .local v25, "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    if-eqz v4, :cond_0

    invoke-virtual/range {v25 .. v25}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mLastMeasuredMultiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->getType()I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 3581
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v25    # "multiWindowStyle":Lcom/samsung/android/multiwindow/MultiWindowStyle;
    :cond_2
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_0

    .line 3582
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/os/SomeArgs;

    .line 3584
    .restart local v9    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v11, v9, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v11, Landroid/content/res/Configuration;

    .line 3585
    .local v11, "config":Landroid/content/res/Configuration;
    if-eqz v11, :cond_3

    .line 3586
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    .line 3589
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget-object v4, v9, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3590
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v4, Landroid/view/ViewRootImpl;->mPendingOverscanInsets:Landroid/graphics/Rect;

    iget-object v4, v9, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3591
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v4, Landroid/view/ViewRootImpl;->mPendingContentInsets:Landroid/graphics/Rect;

    iget-object v4, v9, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3592
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v4, Landroid/view/ViewRootImpl;->mPendingVisibleInsets:Landroid/graphics/Rect;

    iget-object v4, v9, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v5, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3594
    invoke-virtual {v9}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 3596
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    .line 3597
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/view/ViewRootImpl;->mReportNextDraw:Z

    .line 3600
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 3601
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/View;)V

    .line 3604
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 3608
    .end local v9    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v11    # "config":Landroid/content/res/Configuration;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_0

    .line 3609
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v33

    .line 3610
    .local v33, "w":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v18

    .line 3611
    .local v18, "h":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v23, v0

    .line 3612
    .local v23, "l":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v31, v0

    .line 3613
    .local v31, "t":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v23

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 3614
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v5, v23, v33

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3615
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    move/from16 v0, v31

    iput v0, v4, Landroid/graphics/Rect;->top:I

    .line 3616
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    add-int v5, v31, v18

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3618
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_6

    .line 3619
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    # invokes: Landroid/view/ViewRootImpl;->forceLayout(Landroid/view/View;)V
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$200(Landroid/view/View;)V

    .line 3621
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->requestLayout()V

    goto/16 :goto_0

    .line 3625
    .end local v18    # "h":I
    .end local v23    # "l":I
    .end local v31    # "t":I
    .end local v33    # "w":I
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mAdded:Z

    if-eqz v4, :cond_f

    .line 3626
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_10

    const/16 v19, 0x1

    .line 3627
    .local v19, "hasWindowFocus":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    move/from16 v0, v19

    iput-boolean v0, v4, Landroid/view/View$AttachInfo;->mHasWindowFocus:Z

    .line 3629
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v19

    # invokes: Landroid/view/ViewRootImpl;->profileRendering(Z)V
    invoke-static {v4, v0}, Landroid/view/ViewRootImpl;->access$300(Landroid/view/ViewRootImpl;Z)V

    .line 3631
    if-eqz v19, :cond_7

    .line 3632
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    if-eqz v4, :cond_11

    const/16 v21, 0x1

    .line 3633
    .local v21, "inTouchMode":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move/from16 v0, v21

    # invokes: Landroid/view/ViewRootImpl;->ensureTouchModeLocally(Z)Z
    invoke-static {v4, v0}, Landroid/view/ViewRootImpl;->access$400(Landroid/view/ViewRootImpl;Z)Z

    .line 3637
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->twUpdateToolBox()V

    .line 3640
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mSurface:Landroid/view/Surface;
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$500(Landroid/view/ViewRootImpl;)Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Surface;->isValid()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 3641
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 3643
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mHardwareRenderer:Landroid/view/HardwareRenderer;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v5, v5, Landroid/view/ViewRootImpl;->mWidth:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget v6, v6, Landroid/view/ViewRootImpl;->mHeight:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mHolder:Landroid/view/SurfaceHolder;
    invoke-static {v7}, Landroid/view/ViewRootImpl;->access$600(Landroid/view/ViewRootImpl;)Landroid/view/SurfaceHolder;

    move-result-object v7

    invoke-interface {v7}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/HardwareRenderer;->initializeIfNeeded(IILandroid/view/Surface;)Z
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3664
    .end local v21    # "inTouchMode":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mUseFloatingToolBox:Z

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_9

    .line 3665
    if-eqz v19, :cond_13

    const/16 v26, 0x8

    .line 3666
    .local v26, "option":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/ViewRootImpl;)Lcom/samsung/android/toolbox/TwToolBoxManager;

    move-result-object v4

    if-nez v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    new-instance v5, Lcom/samsung/android/toolbox/TwToolBoxManager;

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/samsung/android/toolbox/TwToolBoxManager;-><init>(Landroid/content/Context;)V

    # setter for: Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;
    invoke-static {v4, v5}, Landroid/view/ViewRootImpl;->access$702(Landroid/view/ViewRootImpl;Lcom/samsung/android/toolbox/TwToolBoxManager;)Lcom/samsung/android/toolbox/TwToolBoxManager;

    .line 3667
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # getter for: Landroid/view/ViewRootImpl;->mToolBoxManager:Lcom/samsung/android/toolbox/TwToolBoxManager;
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$700(Landroid/view/ViewRootImpl;)Lcom/samsung/android/toolbox/TwToolBoxManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    move/from16 v0, v26

    invoke-virtual {v4, v5, v6, v0}, Lcom/samsung/android/toolbox/TwToolBoxManager;->sendMessage(Ljava/lang/String;II)V

    .line 3671
    .end local v26    # "option":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-static {v5}, Landroid/view/WindowManager$LayoutParams;->mayUseInputMethod(I)Z

    move-result v5

    iput-boolean v5, v4, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    .line 3674
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 3675
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_b

    .line 3676
    if-eqz v19, :cond_a

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 3678
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->startGettingWindowFocus(Landroid/view/View;)V

    .line 3680
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mKeyDispatchState:Landroid/view/KeyEvent$DispatcherState;

    invoke-virtual {v4}, Landroid/view/KeyEvent$DispatcherState;->reset()V

    .line 3681
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 3682
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v4, v4, Landroid/view/View$AttachInfo;->mTreeObserver:Landroid/view/ViewTreeObserver;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/view/ViewTreeObserver;->dispatchOnWindowFocusChange(Z)V

    .line 3687
    :cond_b
    if-eqz v19, :cond_e

    .line 3688
    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v4, v4, Landroid/view/ViewRootImpl;->mLastWasImTarget:Z

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->isInLocalFocusMode()Z
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$800(Landroid/view/ViewRootImpl;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3689
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-boolean v7, v7, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    if-nez v7, :cond_14

    const/4 v7, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-virtual/range {v3 .. v8}, Landroid/view/inputmethod/InputMethodManager;->onWindowFocus(Landroid/view/View;Landroid/view/View;IZI)V

    .line 3695
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowAttributes:Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v5, v5, -0x101

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3697
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_d

    .line 3698
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager$LayoutParams;

    iget v5, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v5, v5, -0x101

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 3702
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/view/ViewRootImpl;->mHasHadWindowFocus:Z

    .line 3705
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3707
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 3708
    if-eqz v19, :cond_f

    .line 3709
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 3714
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "hasWindowFocus":Z
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->sendUserActionEvent()V
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_0

    .line 3626
    :cond_10
    const/16 v19, 0x0

    goto/16 :goto_2

    .line 3632
    .restart local v19    # "hasWindowFocus":Z
    :cond_11
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 3645
    .restart local v21    # "inTouchMode":Z
    :catch_0
    move-exception v16

    .line 3646
    .local v16, "e":Landroid/view/Surface$OutOfResourcesException;
    const-string v4, "ViewRootImpl"

    const-string v5, "OutOfResourcesException locking surface"

    move-object/from16 v0, v16

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3648
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mWindowSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWindow:Landroid/view/ViewRootImpl$W;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->outOfMemory(Landroid/view/IWindow;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 3649
    const-string v4, "ViewRootImpl"

    const-string v5, "No processes killed for memory; killing self"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3651
    const-string v4, "-k -t -z -d -o /data/log/dumpstate_surfaceoom"

    invoke-static {v4}, Landroid/os/Debug;->saveDumpstate(Ljava/lang/String;)V

    .line 3652
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 3657
    :cond_12
    :goto_6
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x1f4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 3665
    .end local v16    # "e":Landroid/view/Surface$OutOfResourcesException;
    .end local v21    # "inTouchMode":Z
    :cond_13
    const/16 v26, 0x10

    goto/16 :goto_4

    .line 3689
    .restart local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 3717
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v19    # "hasWindowFocus":Z
    :pswitch_a
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->doDie()V

    goto/16 :goto_0

    .line 3720
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/InputEvent;

    .line 3721
    .local v17, "event":Landroid/view/InputEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .line 3727
    .end local v17    # "event":Landroid/view/InputEvent;
    :pswitch_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/KeyEvent;

    .line 3728
    .local v17, "event":Landroid/view/KeyEvent;
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_15

    .line 3732
    invoke-virtual/range {v17 .. v17}, Landroid/view/KeyEvent;->getFlags()I

    move-result v4

    and-int/lit8 v4, v4, -0x9

    move-object/from16 v0, v17

    invoke-static {v0, v4}, Landroid/view/KeyEvent;->changeFlags(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v17

    .line 3734
    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v5, v6, v7}, Landroid/view/ViewRootImpl;->enqueueInputEvent(Landroid/view/InputEvent;Landroid/view/InputEventReceiver;IZ)V

    goto/16 :goto_0

    .line 3737
    .end local v17    # "event":Landroid/view/KeyEvent;
    :pswitch_d
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 3738
    .restart local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_0

    .line 3739
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/inputmethod/InputConnection;

    invoke-virtual {v3, v4}, Landroid/view/inputmethod/InputMethodManager;->reportFinishInputConnection(Landroid/view/inputmethod/InputConnection;)V

    goto/16 :goto_0

    .line 3743
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_e
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v3

    .line 3744
    .restart local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_16

    .line 3745
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->checkFocus()V

    .line 3747
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->sendUserActionEvent()V
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_0

    .line 3750
    .end local v3    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 3751
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Landroid/view/View;->onCloseSystemDialogs(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3756
    :pswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/view/DragEvent;

    .line 3757
    .local v17, "event":Landroid/view/DragEvent;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mLocalDragState:Ljava/lang/Object;

    move-object/from16 v0, v17

    iput-object v4, v0, Landroid/view/DragEvent;->mLocalState:Ljava/lang/Object;

    .line 3758
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, v17

    # invokes: Landroid/view/ViewRootImpl;->handleDragEvent(Landroid/view/DragEvent;)V
    invoke-static {v4, v0}, Landroid/view/ViewRootImpl;->access$1000(Landroid/view/ViewRootImpl;Landroid/view/DragEvent;)V

    goto/16 :goto_0

    .line 3761
    .end local v17    # "event":Landroid/view/DragEvent;
    :pswitch_11
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;

    invoke-virtual {v5, v4}, Landroid/view/ViewRootImpl;->handleDispatchSystemUiVisibilityChanged(Landroid/view/ViewRootImpl$SystemUiVisibilityInfo;)V

    .line 3762
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->sendUserActionEvent()V
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_0

    .line 3765
    :pswitch_12
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/content/res/Configuration;

    .line 3766
    .restart local v11    # "config":Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v11, v4}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 3767
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v11, v4, Landroid/view/ViewRootImpl;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 3769
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x0

    invoke-virtual {v4, v11, v5}, Landroid/view/ViewRootImpl;->updateConfiguration(Landroid/content/res/Configuration;Z)V

    goto/16 :goto_0

    .line 3772
    .end local v11    # "config":Landroid/content/res/Configuration;
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_18

    .line 3773
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    const/4 v6, 0x1

    if-ne v4, v6, :cond_19

    const/4 v4, 0x1

    :goto_7
    invoke-virtual {v5, v4}, Landroid/view/ViewRootImpl;->handleScreenStateChange(Z)V

    .line 3775
    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    # invokes: Landroid/view/ViewRootImpl;->sendUserActionEvent()V
    invoke-static {v4}, Landroid/view/ViewRootImpl;->access$900(Landroid/view/ViewRootImpl;)V

    goto/16 :goto_0

    .line 3773
    :cond_19
    const/4 v4, 0x0

    goto :goto_7

    .line 3778
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/ViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/16 :goto_0

    .line 3781
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->handleDispatchDoneAnimating()V

    goto/16 :goto_0

    .line 3784
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_0

    .line 3785
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/ViewRootImpl;->invalidateWorld(Landroid/view/View;)V

    goto/16 :goto_0

    .line 3789
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    invoke-virtual {v4}, Landroid/view/ViewRootImpl;->flushHardwareLayerUpdates()V

    goto/16 :goto_0

    .line 3792
    :pswitch_18
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;

    .line 3793
    .local v28, "requestInfo":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    if-eqz v28, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1b

    .line 3794
    :cond_1a
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v14

    .line 3795
    .local v14, "cropRectWidth":I
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v13

    .line 3796
    .local v13, "cropRectHeight":I
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->x:F

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 3797
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v7, v7, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v7, v7, Landroid/graphics/PointF;->y:F

    div-float/2addr v6, v7

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 3798
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v14

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->x:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->right:I

    .line 3799
    move-object/from16 v0, v28

    iget-object v4, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v0, v28

    iget-object v5, v0, Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;->mCropRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v6, v13

    const/high16 v7, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v8, v8, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v8, v8, Landroid/graphics/PointF;->y:F

    div-float/2addr v7, v8

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    .line 3802
    .end local v13    # "cropRectHeight":I
    .end local v14    # "cropRectWidth":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_1e

    .line 3803
    const/4 v15, 0x0

    .line 3804
    .local v15, "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1c

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1d

    .line 3805
    :cond_1c
    new-instance v15, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    .end local v15    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mWinFrame:Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/RectF;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v37, v0

    move/from16 v0, v36

    move/from16 v1, v37

    invoke-direct {v6, v7, v8, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, v28

    invoke-direct {v15, v4, v0, v5, v6}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;Landroid/graphics/Rect;Landroid/graphics/RectF;)V

    .line 3810
    .restart local v15    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v15, v4}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->doExtractSmartClipData(Landroid/view/View;)Z

    goto/16 :goto_0

    .line 3808
    :cond_1d
    new-instance v15, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    .end local v15    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-direct {v15, v4, v0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;)V

    .restart local v15    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    goto :goto_8

    .line 3813
    .end local v15    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    :cond_1e
    new-instance v15, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mSmartClipContext:Landroid/content/Context;

    move-object/from16 v0, v28

    invoke-direct {v15, v4, v0}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;-><init>(Landroid/content/Context;Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;)V

    .line 3814
    .restart local v15    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    const/4 v4, 0x0

    invoke-virtual {v15, v4}, Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;->sendExtractionResultToSmartClipService(Lcom/samsung/android/smartclip/SmartClipDataRepositoryImpl;)Z

    goto/16 :goto_0

    .line 3818
    .end local v15    # "cropper":Lcom/samsung/android/smartclip/SmartClipDataCropperImpl;
    .end local v28    # "requestInfo":Lcom/samsung/android/smartclip/SmartClipDataExtractionEvent;
    :pswitch_19
    const/16 v29, -0x1

    .line 3819
    .local v29, "result":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v10

    .line 3820
    .local v10, "bundle":Landroid/os/Bundle;
    const-string v4, "id"

    const/4 v5, -0x1

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v20

    .line 3821
    .local v20, "id":I
    const-string/jumbo v4, "x"

    const v5, -0xf423f

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v34

    .line 3822
    .local v34, "x":I
    const-string/jumbo v4, "y"

    const v5, -0xf423f

    invoke-virtual {v10, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v35

    .line 3824
    .local v35, "y":I
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_22

    .line 3826
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_21

    .line 3827
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v12, v4, Landroid/view/ViewRootImpl;->mContext:Landroid/content/Context;

    .line 3828
    .local v12, "context":Landroid/content/Context;
    if-eqz v12, :cond_0

    .line 3832
    instance-of v4, v12, Landroid/app/Activity;

    if-nez v4, :cond_20

    .line 3833
    instance-of v4, v12, Landroid/content/ContextWrapper;

    if-eqz v4, :cond_20

    .line 3834
    check-cast v12, Landroid/content/ContextWrapper;

    .end local v12    # "context":Landroid/content/Context;
    invoke-virtual {v12}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    .line 3837
    .restart local v12    # "context":Landroid/content/Context;
    :cond_20
    instance-of v4, v12, Landroid/app/Activity;

    if-eqz v4, :cond_21

    .line 3840
    const-string/jumbo v4, "multiwindow_facade"

    invoke-virtual {v12, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    .line 3841
    .local v24, "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    check-cast v12, Landroid/app/Activity;

    .end local v12    # "context":Landroid/content/Context;
    invoke-virtual {v12}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBoxPosition(Landroid/os/IBinder;)Landroid/graphics/Point;

    move-result-object v27

    .line 3843
    .local v27, "pos":Landroid/graphics/Point;
    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/Point;->x:I

    sub-int v4, v34, v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->x:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v34, v0

    .line 3844
    move-object/from16 v0, v27

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int v4, v35, v4

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v6, v6, Landroid/view/ViewRootImpl;->mScaleFactor:Landroid/graphics/PointF;

    iget v6, v6, Landroid/graphics/PointF;->y:F

    div-float/2addr v5, v6

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v0, v4

    move/from16 v35, v0

    .line 3848
    .end local v24    # "multiWindowFacade":Lcom/samsung/android/multiwindow/MultiWindowFacade;
    .end local v27    # "pos":Landroid/graphics/Point;
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v5, v5, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    move/from16 v0, v34

    move/from16 v1, v35

    # invokes: Landroid/view/ViewRootImpl;->findAirButtonViewByPosition(Landroid/view/View;II)Landroid/view/View;
    invoke-static {v4, v5, v0, v1}, Landroid/view/ViewRootImpl;->access$1100(Landroid/view/ViewRootImpl;Landroid/view/View;II)Landroid/view/View;

    move-result-object v32

    .line 3849
    .local v32, "targetView":Landroid/view/View;
    if-eqz v32, :cond_23

    invoke-virtual/range {v32 .. v32}, Landroid/view/View;->getAirButton()Lcom/samsung/android/airbutton/AirButtonImpl;

    move-result-object v4

    if-eqz v4, :cond_23

    .line 3850
    const/16 v29, 0x1

    .line 3857
    .end local v32    # "targetView":Landroid/view/View;
    :cond_22
    :goto_9
    const/4 v12, 0x0

    .line 3858
    .restart local v12    # "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    if-eqz v4, :cond_24

    .line 3859
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v4, v4, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 3865
    :goto_a
    const-string/jumbo v4, "spengestureservice"

    invoke-virtual {v12, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/samsung/android/smartclip/SpenGestureManager;

    .line 3866
    .local v30, "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    move-object/from16 v0, v30

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/smartclip/SpenGestureManager;->setAirButtonHitTestResult(II)V

    goto/16 :goto_0

    .line 3852
    .end local v12    # "context":Landroid/content/Context;
    .end local v30    # "spenGestureManager":Lcom/samsung/android/smartclip/SpenGestureManager;
    .restart local v32    # "targetView":Landroid/view/View;
    :cond_23
    const/16 v29, 0x0

    goto :goto_9

    .line 3861
    .end local v32    # "targetView":Landroid/view/View;
    .restart local v12    # "context":Landroid/content/Context;
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/ViewRootImpl$ViewRootHandler;->this$0:Landroid/view/ViewRootImpl;

    iget-object v12, v4, Landroid/view/ViewRootImpl;->mSmartClipContext:Landroid/content/Context;

    goto :goto_a

    .line 3654
    .end local v10    # "bundle":Landroid/os/Bundle;
    .end local v12    # "context":Landroid/content/Context;
    .end local v20    # "id":I
    .end local v29    # "result":I
    .end local v34    # "x":I
    .end local v35    # "y":I
    .restart local v16    # "e":Landroid/view/Surface$OutOfResourcesException;
    .restart local v19    # "hasWindowFocus":Z
    .restart local v21    # "inTouchMode":Z
    :catch_1
    move-exception v4

    goto/16 :goto_6

    .line 3533
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_a
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_b
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_3
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_8
        :pswitch_17
        :pswitch_18
        :pswitch_19
    .end packed-switch
.end method
