.class Landroid/webkitsec/WebViewClassic$PrivateHandler;
.super Landroid/os/Handler;
.source "WebViewClassic.java"

# interfaces
.implements Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkitsec/WebViewClassic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkitsec/WebViewClassic;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewClassic;)V
    .locals 0

    .prologue
    .line 12928
    iput-object p1, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public canZoomOutOrZoomIn()Z
    .locals 1

    .prologue
    .line 13556
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->canZoomIn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->canZoomOut()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearPreviousHitTest()V
    .locals 2

    .prologue
    .line 13605
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v1, 0x0

    # invokes: Landroid/webkitsec/WebViewClassic;->setHitTestResult(Landroid/webkitsec/WebViewCore$WebKitHitTest;)V
    invoke-static {v0, v1}, Landroid/webkitsec/WebViewClassic;->access$9800(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$WebKitHitTest;)V

    .line 13606
    return-void
.end method

.method public dispatchUiEvent(Landroid/view/MotionEvent;II)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "eventType"    # I
    .param p3, "flags"    # I

    .prologue
    .line 13567
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->onHandleUiEvent(Landroid/view/MotionEvent;II)V
    invoke-static {v0, p1, p2, p3}, Landroid/webkitsec/WebViewClassic;->access$12100(Landroid/webkitsec/WebViewClassic;Landroid/view/MotionEvent;II)V

    .line 13568
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 13572
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getUiLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 13562
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 47
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 12945
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v3

    if-nez v3, :cond_1

    .line 13551
    :cond_0
    :goto_0
    return-void

    .line 12949
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mBlockWebkitViewMessages:Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$5400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    const/16 v8, 0x6b

    if-ne v3, v8, :cond_0

    .line 12954
    :cond_2
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 13548
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 12956
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$5000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewDatabaseClassic;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v44, "host"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v44

    const-string/jumbo v45, "username"

    invoke-virtual/range {v44 .. v45}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v45

    const-string/jumbo v46, "password"

    invoke-virtual/range {v45 .. v46}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkitsec/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12960
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 12964
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mDatabase:Landroid/webkitsec/WebViewDatabaseClassic;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$5000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewDatabaseClassic;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v44, "host"

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/16 v44, 0x0

    const/16 v45, 0x0

    move-object/from16 v0, v44

    move-object/from16 v1, v45

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkitsec/WebViewDatabaseClassic;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12965
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 12969
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoScrollX:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$5500(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoScrollY:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$5600(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    if-nez v3, :cond_3

    .line 12970
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mSentAutoScrollMessage:Z
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$5702(Landroid/webkitsec/WebViewClassic;Z)Z

    goto/16 :goto_0

    .line 12973
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mCurrentScrollingLayerId:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$5800(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    if-nez v3, :cond_4

    .line 12974
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoScrollX:I
    invoke-static {v8}, Landroid/webkitsec/WebViewClassic;->access$5500(Landroid/webkitsec/WebViewClassic;)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v44, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoScrollY:I
    invoke-static/range {v44 .. v44}, Landroid/webkitsec/WebViewClassic;->access$5600(Landroid/webkitsec/WebViewClassic;)I

    move-result v44

    const/16 v45, 0x1

    const/16 v46, 0x0

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    # invokes: Landroid/webkitsec/WebViewClassic;->pinScrollBy(IIZI)Z
    invoke-static {v3, v8, v0, v1, v2}, Landroid/webkitsec/WebViewClassic;->access$5900(Landroid/webkitsec/WebViewClassic;IIZI)Z

    .line 12979
    :goto_1
    const/16 v3, 0xb

    const-wide/16 v44, 0x10

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 12976
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static {v8}, Landroid/webkitsec/WebViewClassic;->access$6000(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v44, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoScrollX:I
    invoke-static/range {v44 .. v44}, Landroid/webkitsec/WebViewClassic;->access$5500(Landroid/webkitsec/WebViewClassic;)I

    move-result v44

    add-int v8, v8, v44

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v44, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mScrollingLayerRect:Landroid/graphics/Rect;
    invoke-static/range {v44 .. v44}, Landroid/webkitsec/WebViewClassic;->access$6000(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v44

    move-object/from16 v0, v44

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v44, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v45, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoScrollY:I
    invoke-static/range {v45 .. v45}, Landroid/webkitsec/WebViewClassic;->access$5600(Landroid/webkitsec/WebViewClassic;)I

    move-result v45

    add-int v44, v44, v45

    move/from16 v0, v44

    # invokes: Landroid/webkitsec/WebViewClassic;->scrollLayerTo(II)V
    invoke-static {v3, v8, v0}, Landroid/webkitsec/WebViewClassic;->access$6100(Landroid/webkitsec/WebViewClassic;II)V

    goto :goto_1

    .line 12985
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    instance-of v3, v3, Landroid/webkitsec/HtmlComposerView;

    if-nez v3, :cond_0

    .line 12989
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_5

    .line 12992
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v20

    .line 12993
    .local v20, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v20, :cond_0

    invoke-virtual/range {v20 .. v20}, Landroid/view/inputmethod/InputMethodManager;->isAcceptingText()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12998
    .end local v20    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Landroid/graphics/Point;

    .line 13005
    .local v29, "p":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v44, v0

    move-object/from16 v0, v29

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/16 v46, 0x1

    move/from16 v0, v46

    if-ne v3, v0, :cond_6

    const/4 v3, 0x1

    :goto_2
    move/from16 v0, v44

    move/from16 v1, v45

    # invokes: Landroid/webkitsec/WebViewClassic;->contentScrollTo(IIZ)V
    invoke-static {v8, v0, v1, v3}, Landroid/webkitsec/WebViewClassic;->access$6200(Landroid/webkitsec/WebViewClassic;IIZ)V

    goto/16 :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_2

    .line 13010
    .end local v29    # "p":Landroid/graphics/Point;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->playTouchSound()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$6300(Landroid/webkitsec/WebViewClassic;)V

    .line 13012
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->notifySingleTapReleased()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$6400(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13018
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkitsec/WebViewCore$ViewState;

    .line 13020
    .local v39, "viewState":Landroid/webkitsec/WebViewCore$ViewState;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$6500(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/ZoomManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v8}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v8

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkitsec/WebViewCore$ViewState;->mScrollX:I

    move/from16 v44, v0

    move-object/from16 v0, v39

    move/from16 v1, v44

    invoke-virtual {v3, v0, v8, v1}, Landroid/webkitsec/ZoomManager;->updateZoomRange(Landroid/webkitsec/WebViewCore$ViewState;II)V

    goto/16 :goto_0

    .line 13024
    .end local v39    # "viewState":Landroid/webkitsec/WebViewCore$ViewState;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v12

    .line 13025
    .local v12, "density":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mZoomManager:Landroid/webkitsec/ZoomManager;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$6500(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/ZoomManager;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/webkitsec/ZoomManager;->updateDefaultZoomDensity(F)V

    goto/16 :goto_0

    .line 13030
    .end local v12    # "density":F
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/webkitsec/WebViewCore$DrawData;

    .line 13031
    .local v14, "draw":Landroid/webkitsec/WebViewCore$DrawData;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x1

    invoke-virtual {v3, v14, v8}, Landroid/webkitsec/WebViewClassic;->setNewPicture(Landroid/webkitsec/WebViewCore$DrawData;Z)V

    goto/16 :goto_0

    .line 13036
    .end local v14    # "draw":Landroid/webkitsec/WebViewCore$DrawData;
    :sswitch_8
    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static {v8}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/webkitsec/BrowserFrame;->getRawResFilename(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v15

    .line 13047
    .local v15, "drawableDir":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v44

    move/from16 v0, v44

    # invokes: Landroid/webkitsec/WebViewClassic;->nativeCreate(ILjava/lang/String;Z)V
    invoke-static {v3, v8, v15, v0}, Landroid/webkitsec/WebViewClassic;->access$6600(Landroid/webkitsec/WebViewClassic;ILjava/lang/String;Z)V

    .line 13050
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mDelaySetPicture:Landroid/webkitsec/WebViewCore$DrawData;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$6700(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$DrawData;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 13051
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mDelaySetPicture:Landroid/webkitsec/WebViewCore$DrawData;
    invoke-static {v8}, Landroid/webkitsec/WebViewClassic;->access$6700(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$DrawData;

    move-result-object v8

    const/16 v44, 0x1

    move/from16 v0, v44

    invoke-virtual {v3, v8, v0}, Landroid/webkitsec/WebViewClassic;->setNewPicture(Landroid/webkitsec/WebViewCore$DrawData;Z)V

    .line 13052
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mDelaySetPicture:Landroid/webkitsec/WebViewCore$DrawData;
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$6702(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$DrawData;)Landroid/webkitsec/WebViewCore$DrawData;

    .line 13054
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mIsPaused:Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$6800(Landroid/webkitsec/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 13055
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mNativeClass:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$6900(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    const/4 v8, 0x1

    # invokes: Landroid/webkitsec/WebViewClassic;->nativeSetPauseDrawing(IZ)V
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$7000(IZ)V

    .line 13057
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    new-instance v8, Landroid/webkitsec/WebViewInputDispatcher;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v44, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static/range {v44 .. v44}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Landroid/webkitsec/WebViewCore;->getInputDispatcherCallbacks()Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;

    move-result-object v44

    move-object/from16 v0, p0

    move-object/from16 v1, v44

    invoke-direct {v8, v0, v1}, Landroid/webkitsec/WebViewInputDispatcher;-><init>(Landroid/webkitsec/WebViewInputDispatcher$UiCallbacks;Landroid/webkitsec/WebViewInputDispatcher$WebKitCallbacks;)V

    # setter for: Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$7102(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewInputDispatcher;)Landroid/webkitsec/WebViewInputDispatcher;

    .line 13059
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->setAppType()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$7200(Landroid/webkitsec/WebViewClassic;)V

    .line 13060
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x1

    # invokes: Landroid/webkitsec/WebViewClassic;->enabledTouchPerformancePatch(Z)V
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$7300(Landroid/webkitsec/WebViewClassic;Z)V

    goto/16 :goto_0

    .line 13065
    .end local v15    # "drawableDir":Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mTextGeneration:I
    invoke-static {v8}, Landroid/webkitsec/WebViewClassic;->access$7400(Landroid/webkitsec/WebViewClassic;)I

    move-result v8

    if-ne v3, v8, :cond_0

    .line 13066
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 13067
    .local v6, "text":Ljava/lang/String;
    if-nez v6, :cond_9

    .line 13068
    const-string v6, ""

    .line 13070
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$100(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_0

    .line 13072
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    const/4 v8, 0x1

    iput-boolean v8, v3, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->mIsUpdatingText:Z

    .line 13073
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v6}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 13078
    .end local v6    # "text":Ljava/lang/String;
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkitsec/WebViewCore$TextSelectionData;

    move/from16 v0, v44

    move/from16 v1, v45

    # invokes: Landroid/webkitsec/WebViewClassic;->updateTextSelectionFromMessage(IILandroid/webkitsec/WebViewCore$TextSelectionData;)V
    invoke-static {v8, v0, v1, v3}, Landroid/webkitsec/WebViewClassic;->access$7500(Landroid/webkitsec/WebViewClassic;IILandroid/webkitsec/WebViewCore$TextSelectionData;)V

    goto/16 :goto_0

    .line 13083
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkitsec/WebViewCore$TextInputData;

    move/from16 v0, v44

    move/from16 v1, v45

    # invokes: Landroid/webkitsec/WebViewClassic;->updateTextSelectionStartEndFromMessage(IILandroid/webkitsec/WebViewCore$TextInputData;)V
    invoke-static {v8, v0, v1, v3}, Landroid/webkitsec/WebViewClassic;->access$7600(Landroid/webkitsec/WebViewClassic;IILandroid/webkitsec/WebViewCore$TextInputData;)V

    goto/16 :goto_0

    .line 13088
    :sswitch_c
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 13089
    .local v13, "direction":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v3, v13}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v16

    .line 13090
    .local v16, "focusSearch":Landroid/view/View;
    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v3

    move-object/from16 v0, v16

    if-eq v0, v3, :cond_0

    .line 13091
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->requestFocus()Z

    goto/16 :goto_0

    .line 13095
    .end local v13    # "direction":I
    .end local v16    # "focusSearch":Landroid/view/View;
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$700(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13099
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->displaySoftKeyboardWithDelay()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$7700(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13103
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/graphics/Rect;

    .line 13104
    .local v32, "r":Landroid/graphics/Rect;
    if-nez v32, :cond_a

    .line 13105
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 13109
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v32

    iget v8, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v44, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v45, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v46, v0

    move/from16 v0, v44

    move/from16 v1, v45

    move/from16 v2, v46

    # invokes: Landroid/webkitsec/WebViewClassic;->viewInvalidate(IIII)V
    invoke-static {v3, v8, v0, v1, v2}, Landroid/webkitsec/WebViewClassic;->access$7800(Landroid/webkitsec/WebViewClassic;IIII)V

    goto/16 :goto_0

    .line 13114
    .end local v32    # "r":Landroid/graphics/Rect;
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$100(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    if-ne v3, v8, :cond_0

    .line 13115
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/widget/ArrayAdapter;

    .line 13116
    .local v9, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$1000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/webkitsec/AutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 13123
    .end local v9    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mGotCenterDown:Z
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$7902(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 13124
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mTrackballDown:Z
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$8002(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 13126
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v8, 0x72

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 13129
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x1

    # setter for: Landroid/webkitsec/WebViewClassic;->mDPADCenterLongPress:Z
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$8102(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 13131
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebView;->performLongClick()Z

    goto/16 :goto_0

    .line 13135
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    instance-of v3, v3, Landroid/webkitsec/HtmlComposerView;

    if-nez v3, :cond_0

    .line 13136
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->showSelectActionWindow()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$8200(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13141
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->hideSelectActionWindow()V

    goto/16 :goto_0

    .line 13145
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mInputDispatcher:Landroid/webkitsec/WebViewInputDispatcher;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$7100(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewInputDispatcher;

    move-result-object v8

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_b

    const/4 v3, 0x1

    :goto_3
    invoke-virtual {v8, v3}, Landroid/webkitsec/WebViewInputDispatcher;->setWebKitWantsTouchEvents(Z)V

    goto/16 :goto_0

    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    .line 13149
    :sswitch_15
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_c

    .line 13150
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$700(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13153
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v3

    instance-of v3, v3, Landroid/webkitsec/HtmlComposerView;

    if-eqz v3, :cond_d

    .line 13154
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v19

    check-cast v19, Landroid/webkitsec/HtmlComposerView;

    .line 13155
    .local v19, "htmlcomposer":Landroid/webkitsec/HtmlComposerView;
    move-object/from16 v0, v19

    iget-boolean v3, v0, Landroid/webkitsec/HtmlComposerView;->isImageSelected:Z

    if-nez v3, :cond_0

    .line 13156
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x0

    # invokes: Landroid/webkitsec/WebViewClassic;->displaySoftKeyboard(Z)V
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$8300(Landroid/webkitsec/WebViewClassic;Z)V

    goto/16 :goto_0

    .line 13158
    .end local v19    # "htmlcomposer":Landroid/webkitsec/HtmlComposerView;
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mBlockShowSoftInput:Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$8400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 13159
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x0

    # invokes: Landroid/webkitsec/WebViewClassic;->displaySoftKeyboard(Z)V
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$8300(Landroid/webkitsec/WebViewClassic;Z)V

    goto/16 :goto_0

    .line 13166
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x2

    # setter for: Landroid/webkitsec/WebViewClassic;->mHeldMotionless:I
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$8502(Landroid/webkitsec/WebViewClassic;I)I

    .line 13167
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 13171
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v8

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/16 v44, 0x1

    move/from16 v0, v44

    if-ne v3, v0, :cond_e

    const/4 v3, 0x1

    :goto_4
    invoke-virtual {v8, v3}, Landroid/view/View;->setKeepScreenOn(Z)V

    goto/16 :goto_0

    :cond_e
    const/4 v3, 0x0

    goto :goto_4

    .line 13187
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$8600(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/HTML5VideoViewProxy;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 13188
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mHTML5VideoViewProxy:Landroid/webkitsec/HTML5VideoViewProxy;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$8600(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/HTML5VideoViewProxy;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/HTML5VideoViewProxy;->exitFullScreenVideo()V

    goto/16 :goto_0

    .line 13193
    :sswitch_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/view/View;

    .line 13194
    .local v37, "view":Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    .line 13195
    .local v28, "orientation":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v27, v0

    .line 13197
    .local v27, "npp":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->inFullScreenMode()Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$8700(Landroid/webkitsec/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 13198
    const-string/jumbo v3, "webview"

    const-string v8, "Should not have another full screen."

    invoke-static {v3, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13199
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->dismissFullScreenMode()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$8800(Landroid/webkitsec/WebViewClassic;)V

    .line 13201
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    new-instance v8, Landroid/webkitsec/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    move/from16 v1, v28

    move/from16 v2, v27

    invoke-direct {v8, v0, v1, v2}, Landroid/webkitsec/PluginFullScreenHolder;-><init>(Landroid/webkitsec/WebViewClassic;II)V

    iput-object v8, v3, Landroid/webkitsec/WebViewClassic;->mFullScreenHolder:Landroid/webkitsec/PluginFullScreenHolder;

    .line 13202
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mFullScreenHolder:Landroid/webkitsec/PluginFullScreenHolder;

    move-object/from16 v0, v37

    invoke-virtual {v3, v0}, Landroid/webkitsec/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 13203
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mFullScreenHolder:Landroid/webkitsec/PluginFullScreenHolder;

    invoke-virtual {v3}, Landroid/webkitsec/PluginFullScreenHolder;->show()V

    .line 13204
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    goto/16 :goto_0

    .line 13209
    .end local v27    # "npp":I
    .end local v28    # "orientation":I
    .end local v37    # "view":Landroid/view/View;
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->dismissFullScreenMode()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$8800(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13213
    :sswitch_1b
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/webkitsec/WebViewCore$ShowRectData;

    .line 13214
    .local v11, "data":Landroid/webkitsec/WebViewCore$ShowRectData;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget v8, v11, Landroid/webkitsec/WebViewCore$ShowRectData;->mLeft:I

    invoke-virtual {v3, v8}, Landroid/webkitsec/WebViewClassic;->contentToViewX(I)I

    move-result v22

    .line 13215
    .local v22, "left":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget v8, v11, Landroid/webkitsec/WebViewCore$ShowRectData;->mWidth:I

    invoke-virtual {v3, v8}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v41

    .line 13216
    .local v41, "width":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget v8, v11, Landroid/webkitsec/WebViewCore$ShowRectData;->mContentWidth:I

    invoke-virtual {v3, v8}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v26

    .line 13217
    .local v26, "maxWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getViewWidth()I

    move-result v40

    .line 13218
    .local v40, "viewWidth":I
    move/from16 v0, v22

    int-to-float v3, v0

    iget v8, v11, Landroid/webkitsec/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move/from16 v0, v41

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v8, v8, v44

    add-float/2addr v3, v8

    iget v8, v11, Landroid/webkitsec/WebViewCore$ShowRectData;->mXPercentInView:F

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v8, v8, v44

    sub-float/2addr v3, v8

    float-to-int v0, v3

    move/from16 v42, v0

    .line 13229
    .local v42, "x":I
    const/4 v3, 0x0

    add-int v8, v42, v40

    move/from16 v0, v26

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v8, v8, v40

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v42

    .line 13231
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget v8, v11, Landroid/webkitsec/WebViewCore$ShowRectData;->mTop:I

    invoke-virtual {v3, v8}, Landroid/webkitsec/WebViewClassic;->contentToViewY(I)I

    move-result v35

    .line 13232
    .local v35, "top":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget v8, v11, Landroid/webkitsec/WebViewCore$ShowRectData;->mHeight:I

    invoke-virtual {v3, v8}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v17

    .line 13233
    .local v17, "height":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget v8, v11, Landroid/webkitsec/WebViewCore$ShowRectData;->mContentHeight:I

    invoke-virtual {v3, v8}, Landroid/webkitsec/WebViewClassic;->contentToViewDimension(I)I

    move-result v25

    .line 13234
    .local v25, "maxHeight":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getViewHeight()I

    move-result v38

    .line 13235
    .local v38, "viewHeight":I
    move/from16 v0, v35

    int-to-float v3, v0

    iget v8, v11, Landroid/webkitsec/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v8, v8, v44

    add-float/2addr v3, v8

    iget v8, v11, Landroid/webkitsec/WebViewCore$ShowRectData;->mYPercentInView:F

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v44, v0

    mul-float v8, v8, v44

    sub-float/2addr v3, v8

    float-to-int v0, v3

    move/from16 v43, v0

    .line 13246
    .local v43, "y":I
    const/4 v3, 0x0

    add-int v8, v43, v38

    move/from16 v0, v25

    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    sub-int v8, v8, v38

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 13250
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->getVisibleTitleHeightImpl()I
    invoke-static {v8}, Landroid/webkitsec/WebViewClassic;->access$8900(Landroid/webkitsec/WebViewClassic;)I

    move-result v8

    sub-int v8, v43, v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v43

    .line 13251
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v3

    move/from16 v0, v42

    move/from16 v1, v43

    invoke-virtual {v3, v0, v1}, Landroid/view/View;->scrollTo(II)V

    goto/16 :goto_0

    .line 13256
    .end local v11    # "data":Landroid/webkitsec/WebViewCore$ShowRectData;
    .end local v17    # "height":I
    .end local v22    # "left":I
    .end local v25    # "maxHeight":I
    .end local v26    # "maxWidth":I
    .end local v35    # "top":I
    .end local v38    # "viewHeight":I
    .end local v40    # "viewWidth":I
    .end local v41    # "width":I
    .end local v42    # "x":I
    .end local v43    # "y":I
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/webkitsec/WebViewClassic;->centerFitRect(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 13260
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    # setter for: Landroid/webkitsec/WebViewClassic;->mHorizontalScrollBarMode:I
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$9002(Landroid/webkitsec/WebViewClassic;I)I

    .line 13261
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    # setter for: Landroid/webkitsec/WebViewClassic;->mVerticalScrollBarMode:I
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$9102(Landroid/webkitsec/WebViewClassic;I)I

    goto/16 :goto_0

    .line 13275
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v3, v3, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_10

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_10

    .line 13276
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$700(Landroid/webkitsec/WebViewClassic;)V

    .line 13279
    :cond_10
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v44, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mFieldPointer:I
    invoke-static/range {v44 .. v44}, Landroid/webkitsec/WebViewClassic;->access$100(Landroid/webkitsec/WebViewClassic;)I

    move-result v44

    move/from16 v0, v44

    if-ne v3, v0, :cond_14

    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, v8, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    .line 13281
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v3, v3, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-nez v3, :cond_11

    .line 13282
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mFieldPointer:I
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$102(Landroid/webkitsec/WebViewClassic;I)I

    .line 13284
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$1000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v3

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v3, v3, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-nez v3, :cond_12

    .line 13285
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$1000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/AutoCompletePopup;->clearAdapter()V

    .line 13288
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$9200(Landroid/webkitsec/WebViewClassic;)Z

    move-result v3

    const/4 v8, 0x1

    if-ne v3, v8, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectFocusMoved:Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$9400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v3

    const/4 v8, 0x1

    if-eq v3, v8, :cond_13

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectFieldPointer:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$9500(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    if-eqz v3, :cond_13

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectFieldPointer:I
    invoke-static {v8}, Landroid/webkitsec/WebViewClassic;->access$9500(Landroid/webkitsec/WebViewClassic;)I

    move-result v8

    if-eq v3, v8, :cond_13

    .line 13291
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebSelectDialog:Landroid/webkitsec/WebSelectDialog;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$9300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebSelectDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSelectDialog;->dismiss()V

    .line 13292
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->bWebSelectDialogIsUp:Z
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$9202(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 13293
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mSelectFieldPointer:I
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$9502(Landroid/webkitsec/WebViewClassic;I)I

    .line 13298
    :cond_13
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Landroid/webkitsec/WebViewCore$WebKitHitTest;

    .line 13299
    .local v18, "hit":Landroid/webkitsec/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v18

    # setter for: Landroid/webkitsec/WebViewClassic;->mFocusedNode:Landroid/webkitsec/WebViewCore$WebKitHitTest;
    invoke-static {v3, v0}, Landroid/webkitsec/WebViewClassic;->access$9602(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$WebKitHitTest;)Landroid/webkitsec/WebViewCore$WebKitHitTest;

    .line 13300
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v18

    # invokes: Landroid/webkitsec/WebViewClassic;->setTouchHighlightRects(Landroid/webkitsec/WebViewCore$WebKitHitTest;)V
    invoke-static {v3, v0}, Landroid/webkitsec/WebViewClassic;->access$9700(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$WebKitHitTest;)V

    .line 13301
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v18

    # invokes: Landroid/webkitsec/WebViewClassic;->setHitTestResult(Landroid/webkitsec/WebViewCore$WebKitHitTest;)V
    invoke-static {v3, v0}, Landroid/webkitsec/WebViewClassic;->access$9800(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$WebKitHitTest;)V

    goto/16 :goto_0

    .line 13279
    .end local v18    # "hit":Landroid/webkitsec/WebViewCore$WebKitHitTest;
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 13309
    :sswitch_20
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;

    .line 13310
    .local v34, "saveMessage":Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkitsec/ValueCallback;

    if-eqz v3, :cond_0

    .line 13311
    move-object/from16 v0, v34

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;->mCallback:Landroid/webkitsec/ValueCallback;

    move-object/from16 v0, v34

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    invoke-interface {v3, v8}, Landroid/webkitsec/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 13316
    .end local v34    # "saveMessage":Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkitsec/WebViewCore$AutoFillData;

    # setter for: Landroid/webkitsec/WebViewClassic;->mAutoFillData:Landroid/webkitsec/WebViewCore$AutoFillData;
    invoke-static {v8, v3}, Landroid/webkitsec/WebViewClassic;->access$4902(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$AutoFillData;)Landroid/webkitsec/WebViewCore$AutoFillData;

    .line 13317
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_0

    .line 13318
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoFillData:Landroid/webkitsec/WebViewCore$AutoFillData;
    invoke-static {v8}, Landroid/webkitsec/WebViewClassic;->access$4900(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$AutoFillData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkitsec/WebViewCore$AutoFillData;->getQueryId()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setAutoFillable(I)V

    .line 13319
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$1000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoFillData:Landroid/webkitsec/WebViewCore$AutoFillData;
    invoke-static {v8}, Landroid/webkitsec/WebViewClassic;->access$4900(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$AutoFillData;

    move-result-object v8

    invoke-virtual {v8}, Landroid/webkitsec/WebViewCore$AutoFillData;->getQueryId()I

    move-result v8

    invoke-virtual {v3, v8}, Landroid/webkitsec/AutoCompletePopup;->setAutoFillQueryId(I)V

    goto/16 :goto_0

    .line 13324
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$1000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 13325
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 13326
    .local v30, "pastEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mAutoCompletePopup:Landroid/webkitsec/AutoCompletePopup;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$1000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/AutoCompletePopup;

    move-result-object v3

    new-instance v8, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v44, v0

    # getter for: Landroid/webkitsec/WebViewClassic;->mContext:Landroid/content/Context;
    invoke-static/range {v44 .. v44}, Landroid/webkitsec/WebViewClassic;->access$1300(Landroid/webkitsec/WebViewClassic;)Landroid/content/Context;

    move-result-object v44

    const v45, 0x1090134

    move-object/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v30

    invoke-direct {v8, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v3, v8}, Landroid/webkitsec/AutoCompletePopup;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 13334
    .end local v30    # "pastEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewClassic;->copyToClipboard(Ljava/lang/String;)V
    invoke-static {v8, v3}, Landroid/webkitsec/WebViewClassic;->access$9900(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 13338
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_0

    .line 13343
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkitsec/WebViewCore$TextFieldInitData;

    .line 13344
    .local v21, "initData":Landroid/webkitsec/WebViewCore$TextFieldInitData;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x0

    # setter for: Landroid/webkitsec/WebViewClassic;->mTextGeneration:I
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$7402(Landroid/webkitsec/WebViewClassic;I)I

    .line 13347
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFieldPointer:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$100(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, v21

    iget v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mFieldPointer:I

    if-eq v3, v8, :cond_15

    .line 13348
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x1

    # setter for: Landroid/webkitsec/WebViewClassic;->mIsNewInputField:Z
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$1102(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 13354
    :cond_15
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v21

    iget v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mFieldPointer:I

    # setter for: Landroid/webkitsec/WebViewClassic;->mFieldPointer:I
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$102(Landroid/webkitsec/WebViewClassic;I)I

    .line 13356
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    iput-boolean v8, v3, Landroid/webkitsec/WebViewClassic;->mIsTextFieldNext:Z

    .line 13357
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSelectFieldNext:Z

    iput-boolean v8, v3, Landroid/webkitsec/WebViewClassic;->mIsSelectFieldNext:Z

    .line 13358
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    iput-boolean v8, v3, Landroid/webkitsec/WebViewClassic;->mIsTextFieldPrev:Z

    .line 13359
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSelectFieldPrev:Z

    iput-boolean v8, v3, Landroid/webkitsec/WebViewClassic;->mIsSelectFieldPrev:Z

    .line 13361
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->initEditorInfo(Landroid/webkitsec/WebViewCore$TextFieldInitData;)V

    .line 13362
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mText:Ljava/lang/String;

    invoke-virtual {v3, v8}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;)V

    .line 13363
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13364
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v21

    iget v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mNodeLayerId:I

    iput v8, v3, Landroid/webkitsec/WebViewClassic;->mEditTextLayerId:I

    .line 13365
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mNativeClass:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$6900(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget v8, v8, Landroid/webkitsec/WebViewClassic;->mEditTextLayerId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    # invokes: Landroid/webkitsec/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V
    invoke-static {v3, v8, v0}, Landroid/webkitsec/WebViewClassic;->access$10000(IILandroid/graphics/Rect;)V

    .line 13367
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mClientRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13368
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->relocateAutoCompletePopup()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10100(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13374
    .end local v21    # "initData":Landroid/webkitsec/WebViewCore$TextFieldInitData;
    :sswitch_25
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkitsec/WebViewCore$TextFieldInitData;

    .line 13375
    .restart local v21    # "initData":Landroid/webkitsec/WebViewCore$TextFieldInitData;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v21

    iget v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mFieldPointer:I

    # setter for: Landroid/webkitsec/WebViewClassic;->mSelectFieldPointer:I
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$9502(Landroid/webkitsec/WebViewClassic;I)I

    .line 13376
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldNext:Z

    iput-boolean v8, v3, Landroid/webkitsec/WebViewClassic;->mIsTextFieldNext:Z

    .line 13377
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSelectFieldNext:Z

    iput-boolean v8, v3, Landroid/webkitsec/WebViewClassic;->mIsSelectFieldNext:Z

    .line 13378
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsTextFieldPrev:Z

    iput-boolean v8, v3, Landroid/webkitsec/WebViewClassic;->mIsTextFieldPrev:Z

    .line 13379
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v21

    iget-boolean v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mIsSelectFieldPrev:Z

    iput-boolean v8, v3, Landroid/webkitsec/WebViewClassic;->mIsSelectFieldPrev:Z

    .line 13380
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mSelectContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v21

    iget-object v8, v0, Landroid/webkitsec/WebViewCore$TextFieldInitData;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 13385
    .end local v21    # "initData":Landroid/webkitsec/WebViewCore$TextFieldInitData;
    :sswitch_26
    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 13386
    .restart local v6    # "text":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    .line 13387
    .local v4, "start":I
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    .line 13388
    .local v5, "end":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    add-int v7, v4, v3

    .line 13389
    .local v7, "cursorPosition":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move v8, v7

    invoke-virtual/range {v3 .. v8}, Landroid/webkitsec/WebViewClassic;->replaceTextfieldText(IILjava/lang/String;II)V

    .line 13391
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    .line 13396
    .end local v4    # "start":I
    .end local v5    # "end":I
    .end local v6    # "text":Ljava/lang/String;
    .end local v7    # "cursorPosition":I
    :sswitch_27
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/webkitsec/WebViewCore$FindAllRequest;

    .line 13397
    .local v33, "request":Landroid/webkitsec/WebViewCore$FindAllRequest;
    if-nez v33, :cond_16

    .line 13398
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10200(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/FindActionModeCallback;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 13399
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10200(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/FindActionModeCallback;

    move-result-object v3

    const/4 v8, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x1

    move/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkitsec/FindActionModeCallback;->updateMatchCount(IIZ)V

    goto/16 :goto_0

    .line 13401
    :cond_16
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$FindAllRequest;

    move-result-object v3

    move-object/from16 v0, v33

    if-ne v0, v3, :cond_0

    .line 13403
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFindRequest:Landroid/webkitsec/WebViewCore$FindAllRequest;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10300(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore$FindAllRequest;

    move-result-object v8

    monitor-enter v8

    .line 13404
    :try_start_0
    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkitsec/WebViewCore$FindAllRequest;->mMatchCount:I

    move/from16 v23, v0

    .line 13405
    .local v23, "matchCount":I
    move-object/from16 v0, v33

    iget v0, v0, Landroid/webkitsec/WebViewCore$FindAllRequest;->mMatchIndex:I

    move/from16 v24, v0

    .line 13406
    .local v24, "matchIndex":I
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13407
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10200(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/FindActionModeCallback;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 13408
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFindCallback:Landroid/webkitsec/FindActionModeCallback;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10200(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/FindActionModeCallback;

    move-result-object v3

    const/4 v8, 0x0

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v3, v0, v1, v8}, Landroid/webkitsec/FindActionModeCallback;->updateMatchCount(IIZ)V

    .line 13410
    :cond_17
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFindListener:Landroid/webkitsec/WebView$FindListener;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10400(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView$FindListener;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 13411
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFindListener:Landroid/webkitsec/WebView$FindListener;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10400(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView$FindListener;

    move-result-object v3

    const/4 v8, 0x1

    move/from16 v0, v24

    move/from16 v1, v23

    invoke-interface {v3, v0, v1, v8}, Landroid/webkitsec/WebView$FindListener;->onFindResultReceived(IIZ)V

    goto/16 :goto_0

    .line 13406
    .end local v23    # "matchCount":I
    .end local v24    # "matchIndex":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 13418
    .end local v33    # "request":Landroid/webkitsec/WebViewCore$FindAllRequest;
    :sswitch_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/graphics/Rect;

    .line 13422
    .restart local v32    # "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mNativeClass:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$6900(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 13423
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mNativeClass:I
    invoke-static {v8}, Landroid/webkitsec/WebViewClassic;->access$6900(Landroid/webkitsec/WebViewClassic;)I

    move-result v8

    move-object/from16 v0, v32

    # invokes: Landroid/webkitsec/WebViewClassic;->nativeScrollRectOnScreen(ILandroid/graphics/Rect;)V
    invoke-static {v3, v8, v0}, Landroid/webkitsec/WebViewClassic;->access$10500(Landroid/webkitsec/WebViewClassic;ILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 13428
    .end local v32    # "r":Landroid/graphics/Rect;
    :sswitch_29
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    const/4 v8, 0x1

    if-ne v3, v8, :cond_18

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10600(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    if-nez v3, :cond_18

    .line 13429
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebView:Landroid/webkitsec/WebView;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$000(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebView;

    move-result-object v3

    const/16 v8, 0x16

    invoke-virtual {v3, v8}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 13430
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x2

    # setter for: Landroid/webkitsec/WebViewClassic;->mSpenTextSelectionMode:I
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$10602(Landroid/webkitsec/WebViewClassic;I)I

    .line 13431
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-nez v3, :cond_0

    .line 13432
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->setupWebkitSelect()Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10700(Landroid/webkitsec/WebViewClassic;)Z

    goto/16 :goto_0

    .line 13435
    :cond_18
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    .line 13440
    :sswitch_2a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10800(Landroid/webkitsec/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13441
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->selectionDone()V

    goto/16 :goto_0

    .line 13446
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/16 v8, 0xdf

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    const/16 v45, 0x0

    const/16 v46, 0x0

    move/from16 v0, v44

    move/from16 v1, v45

    move-object/from16 v2, v46

    invoke-virtual {v3, v8, v0, v1, v2}, Landroid/webkitsec/WebViewClassic;->sendBatchableInputMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0

    .line 13450
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->relocateAutoCompletePopup()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10100(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13454
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mWebViewCore:Landroid/webkitsec/WebViewCore;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$800(Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewCore;

    move-result-object v3

    const/16 v8, 0xc0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v44, v0

    const/16 v45, 0x0

    move/from16 v0, v44

    move/from16 v1, v45

    invoke-virtual {v3, v8, v0, v1}, Landroid/webkitsec/WebViewCore;->sendMessage(III)V

    goto/16 :goto_0

    .line 13459
    :sswitch_2e
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mFieldPointer:I
    invoke-static {v8}, Landroid/webkitsec/WebViewClassic;->access$100(Landroid/webkitsec/WebViewClassic;)I

    move-result v8

    if-ne v3, v8, :cond_0

    .line 13460
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v8, v3, Landroid/webkitsec/WebViewClassic;->mEditTextContent:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 13465
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectingText:Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10900(Landroid/webkitsec/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-boolean v3, v3, Landroid/webkitsec/WebViewClassic;->mIsEditingText:Z

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10800(Landroid/webkitsec/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13466
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->setupWebkitSelect()Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10700(Landroid/webkitsec/WebViewClassic;)Z

    .line 13467
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->resetCaretTimer()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$11000(Landroid/webkitsec/WebViewClassic;)V

    .line 13468
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->showPasteWindow()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$11100(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13473
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v8, v3, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 13474
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mNativeClass:I
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$6900(Landroid/webkitsec/WebViewClassic;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget v8, v8, Landroid/webkitsec/WebViewClassic;->mEditTextLayerId:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    # invokes: Landroid/webkitsec/WebViewClassic;->nativeMapLayerRect(IILandroid/graphics/Rect;)V
    invoke-static {v3, v8, v0}, Landroid/webkitsec/WebViewClassic;->access$10000(IILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 13479
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->scrollEditWithCursor()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$11200(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13482
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->scrollDraggedSelectionHandleIntoView()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$11300(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13491
    :sswitch_33
    const-string/jumbo v3, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "HandleMessage : UPDATE_SELECTION_MSG_ID mCopyInfo "

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    iget-object v0, v0, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    move-object/from16 v44, v0

    move-object/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13492
    const-string/jumbo v8, "webview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "HandleMessage : UPDATE_SELECTION_MSG_ID "

    move-object/from16 v0, v44

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    move-object/from16 v0, v44

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13493
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v0, v3, Landroid/webkitsec/WebViewClassic;->mCopyInfo:Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    move-object/from16 v31, v0

    .line 13494
    .local v31, "prevCopyInfo":Landroid/webkitsec/WebViewCore$SelectionCopiedData;
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    .line 13497
    .local v10, "curCopyInfo":Landroid/webkitsec/WebViewCore$SelectionCopiedData;
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    # invokes: Landroid/webkitsec/WebViewClassic;->updateSelectionInfo(Landroid/webkitsec/WebViewCore$SelectionCopiedData;)V
    invoke-static {v8, v3}, Landroid/webkitsec/WebViewClassic;->access$11400(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)V

    .line 13500
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v31

    # invokes: Landroid/webkitsec/WebViewClassic;->isSelectionChanged(Landroid/webkitsec/WebViewCore$SelectionCopiedData;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)Z
    invoke-static {v8, v0, v10}, Landroid/webkitsec/WebViewClassic;->access$11500(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$SelectionCopiedData;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)Z

    move-result v8

    if-ne v3, v8, :cond_19

    .line 13501
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->notifySelectionChanged()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$11600(Landroid/webkitsec/WebViewClassic;)V

    .line 13504
    :cond_19
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, v31

    # invokes: Landroid/webkitsec/WebViewClassic;->isWebViewSelectionChanged(Landroid/webkitsec/WebViewCore$SelectionCopiedData;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)Z
    invoke-static {v8, v0, v10}, Landroid/webkitsec/WebViewClassic;->access$11700(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$SelectionCopiedData;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)Z

    move-result v8

    if-ne v3, v8, :cond_0

    .line 13505
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x1

    # setter for: Landroid/webkitsec/WebViewClassic;->mIsSelectionChanged:Z
    invoke-static {v3, v8}, Landroid/webkitsec/WebViewClassic;->access$1802(Landroid/webkitsec/WebViewClassic;Z)Z

    goto/16 :goto_0

    .line 13509
    .end local v10    # "curCopyInfo":Landroid/webkitsec/WebViewCore$SelectionCopiedData;
    .end local v31    # "prevCopyInfo":Landroid/webkitsec/WebViewCore$SelectionCopiedData;
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/webkitsec/WebViewCore$SelectionCopiedData;

    # invokes: Landroid/webkitsec/WebViewClassic;->updateSelectionInfo(Landroid/webkitsec/WebViewCore$SelectionCopiedData;)V
    invoke-static {v8, v3}, Landroid/webkitsec/WebViewClassic;->access$11400(Landroid/webkitsec/WebViewClassic;Landroid/webkitsec/WebViewCore$SelectionCopiedData;)V

    .line 13510
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v3}, Landroid/webkitsec/WebViewClassic;->cutSelectionSec()V

    goto/16 :goto_0

    .line 13516
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->updateImageSelectedRect()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$11800(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13521
    :sswitch_36
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->displayColorPicker()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$11900(Landroid/webkitsec/WebViewClassic;)V

    goto/16 :goto_0

    .line 13527
    :sswitch_37
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    move-object/from16 v36, v3

    check-cast v36, [Ljava/lang/String;

    .line 13528
    .local v36, "type":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    const/4 v8, 0x0

    aget-object v8, v36, v8

    const/16 v44, 0x1

    aget-object v44, v36, v44

    move-object/from16 v0, v44

    # invokes: Landroid/webkitsec/WebViewClassic;->displayDateTimePickers(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v8, v0}, Landroid/webkitsec/WebViewClassic;->access$12000(Landroid/webkitsec/WebViewClassic;Ljava/lang/String;Ljava/lang/String;)V

    .line 13531
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    if-eqz v3, :cond_0

    .line 13532
    const/4 v3, 0x1

    aget-object v6, v36, v3

    .line 13533
    .restart local v6    # "text":Ljava/lang/String;
    if-nez v6, :cond_1a

    .line 13534
    const-string v6, ""

    .line 13536
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mInputConnection:Landroid/webkitsec/WebViewClassic$WebViewInputConnection;

    invoke-virtual {v3, v6}, Landroid/webkitsec/WebViewClassic$WebViewInputConnection;->setTextAndKeepSelection(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 13544
    .end local v6    # "text":Ljava/lang/String;
    .end local v36    # "type":[Ljava/lang/String;
    :sswitch_38
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    iget-object v3, v3, Landroid/webkitsec/WebViewClassic;->mMagnifier:Landroid/webkitsec/WebMagnifier;

    invoke-virtual {v3}, Landroid/webkitsec/WebMagnifier;->move()V

    goto/16 :goto_0

    .line 12954
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x5 -> :sswitch_4
        0x6 -> :sswitch_10
        0x8 -> :sswitch_16
        0xb -> :sswitch_2
        0x65 -> :sswitch_3
        0x69 -> :sswitch_7
        0x6b -> :sswitch_8
        0x6c -> :sswitch_9
        0x6d -> :sswitch_5
        0x6e -> :sswitch_c
        0x6f -> :sswitch_d
        0x70 -> :sswitch_a
        0x71 -> :sswitch_1b
        0x72 -> :sswitch_11
        0x74 -> :sswitch_14
        0x75 -> :sswitch_f
        0x76 -> :sswitch_15
        0x78 -> :sswitch_19
        0x79 -> :sswitch_1a
        0x7e -> :sswitch_27
        0x7f -> :sswitch_1c
        0x81 -> :sswitch_1d
        0x82 -> :sswitch_1f
        0x83 -> :sswitch_20
        0x84 -> :sswitch_21
        0x85 -> :sswitch_22
        0x86 -> :sswitch_17
        0x87 -> :sswitch_6
        0x88 -> :sswitch_18
        0x89 -> :sswitch_23
        0x8a -> :sswitch_24
        0x8b -> :sswitch_26
        0x8c -> :sswitch_2a
        0x8d -> :sswitch_2b
        0x8e -> :sswitch_2c
        0x8f -> :sswitch_1e
        0x90 -> :sswitch_2d
        0x91 -> :sswitch_31
        0x92 -> :sswitch_2e
        0x93 -> :sswitch_2f
        0x94 -> :sswitch_30
        0x95 -> :sswitch_32
        0x9b -> :sswitch_33
        0x9c -> :sswitch_36
        0x9d -> :sswitch_34
        0x9e -> :sswitch_37
        0xa0 -> :sswitch_35
        0xa2 -> :sswitch_29
        0xa5 -> :sswitch_38
        0xaa -> :sswitch_25
        0xb4 -> :sswitch_28
        0xb5 -> :sswitch_b
        0xb6 -> :sswitch_e
        0xb9 -> :sswitch_12
        0xba -> :sswitch_13
    .end sparse-switch
.end method

.method public hideKeyboradIfUneditable()V
    .locals 1

    .prologue
    .line 13623
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->focusCandidateIsEditableText()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getWebView()Landroid/webkitsec/WebView;

    move-result-object v0

    instance-of v0, v0, Landroid/webkitsec/HtmlComposerView;

    if-nez v0, :cond_0

    .line 13624
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->hideSoftKeyboard()V
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$700(Landroid/webkitsec/WebViewClassic;)V

    .line 13626
    :cond_0
    return-void
.end method

.method public isSelectingText()Z
    .locals 1

    .prologue
    .line 13630
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectingText:Z
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$10900(Landroid/webkitsec/WebViewClassic;)Z

    move-result v0

    return v0
.end method

.method public shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 13577
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectingText:Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10900(Landroid/webkitsec/WebViewClassic;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 13592
    :goto_0
    return v0

    .line 13580
    :cond_0
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # invokes: Landroid/webkitsec/WebViewClassic;->ensureSelectionHandles()V
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$1500(Landroid/webkitsec/WebViewClassic;)V

    .line 13581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getTitleHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 13582
    .local v2, "y":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v4}, Landroid/webkitsec/WebViewClassic;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 13584
    .local v1, "x":I
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mIsCaretSelection:Z
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$10800(Landroid/webkitsec/WebViewClassic;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13585
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectHandleCenter:Landroid/graphics/drawable/Drawable;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$1600(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    .local v0, "isPressingHandle":Z
    goto :goto_0

    .line 13588
    .end local v0    # "isPressingHandle":Z
    :cond_1
    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectHandleBaseBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$12200(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mSelectHandleExtentBounds:Landroid/graphics/Rect;
    invoke-static {v3}, Landroid/webkitsec/WebViewClassic;->access$12300(Landroid/webkitsec/WebViewClassic;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const/4 v0, 0x1

    .restart local v0    # "isPressingHandle":Z
    :cond_3
    goto :goto_0
.end method

.method public showTapHighlight(Z)V
    .locals 1
    .param p1, "show"    # Z

    .prologue
    .line 13597
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # getter for: Landroid/webkitsec/WebViewClassic;->mShowTapHighlight:Z
    invoke-static {v0}, Landroid/webkitsec/WebViewClassic;->access$12400(Landroid/webkitsec/WebViewClassic;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 13598
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    # setter for: Landroid/webkitsec/WebViewClassic;->mShowTapHighlight:Z
    invoke-static {v0, p1}, Landroid/webkitsec/WebViewClassic;->access$12402(Landroid/webkitsec/WebViewClassic;Z)Z

    .line 13599
    iget-object v0, p0, Landroid/webkitsec/WebViewClassic$PrivateHandler;->this$0:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 13601
    :cond_0
    return-void
.end method
