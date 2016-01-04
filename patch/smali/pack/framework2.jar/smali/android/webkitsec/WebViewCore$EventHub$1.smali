.class Landroid/webkitsec/WebViewCore$EventHub$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkitsec/WebViewCore$EventHub;->transferMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/webkitsec/WebViewCore$EventHub;


# direct methods
.method constructor <init>(Landroid/webkitsec/WebViewCore$EventHub;)V
    .locals 0

    .prologue
    .line 1839
    iput-object p1, p0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 95
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1851
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1868
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v2

    if-nez v2, :cond_1

    .line 3020
    :cond_0
    :goto_0
    return-void

    .line 1853
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mTid:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore$EventHub;->access$1200(Landroid/webkitsec/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v4

    # setter for: Landroid/webkitsec/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore$EventHub;->access$1102(Landroid/webkitsec/WebViewCore$EventHub;I)I

    .line 1854
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mTid:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$1200(Landroid/webkitsec/WebViewCore$EventHub;)I

    move-result v2

    const/16 v4, 0xa

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1856
    invoke-static {}, Landroid/webkitsec/WebViewCore;->pauseTimers()V

    .line 1857
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1858
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCloseIdleConnections(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$1300(Landroid/webkitsec/WebViewCore;I)V

    goto :goto_0

    .line 1863
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mTid:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$1200(Landroid/webkitsec/WebViewCore$EventHub;)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mSavedPriority:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore$EventHub;->access$1100(Landroid/webkitsec/WebViewCore$EventHub;)I

    move-result v4

    invoke-static {v2, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 1864
    invoke-static {}, Landroid/webkitsec/WebViewCore;->resumeTimers()V

    goto :goto_0

    .line 1875
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    # getter for: Landroid/webkitsec/WebViewCore$EventHub;->mDestroying:Z
    invoke-static {v2}, Landroid/webkitsec/WebViewCore$EventHub;->access$300(Landroid/webkitsec/WebViewCore$EventHub;)Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    const/16 v4, 0xc8

    if-ne v2, v4, :cond_0

    .line 1883
    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 1912
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeRevealSelection(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$1800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 1885
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # invokes: Landroid/webkitsec/WebViewCore;->webkitDraw()V
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1500(Landroid/webkitsec/WebViewCore;)V

    goto/16 :goto_0

    .line 1891
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    monitor-enter v4

    .line 1900
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->destroy()V

    .line 1901
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v5, 0x0

    # setter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2, v5}, Landroid/webkitsec/WebViewCore;->access$1602(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/BrowserFrame;)Landroid/webkitsec/BrowserFrame;

    .line 1902
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mSettings:Landroid/webkitsec/WebSettingsClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1700(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->onDestroyed()V

    .line 1903
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v5, 0x0

    # setter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2, v5}, Landroid/webkitsec/WebViewCore;->access$402(Landroid/webkitsec/WebViewCore;I)I

    .line 1905
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    invoke-static {v2}, Landroid/webkitsec/WebCoreThreadWatchdog;->unregisterWebView(Landroid/webkitsec/WebViewClassic;)V

    .line 1907
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v5, 0x0

    # setter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2, v5}, Landroid/webkitsec/WebViewCore;->access$1402(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/WebViewClassic;)Landroid/webkitsec/WebViewClassic;

    .line 1908
    monitor-exit v4

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1917
    :sswitch_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v2, :cond_3

    .line 1918
    const/16 v93, 0x0

    .line 1925
    .local v93, "xPercent":F
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v93

    # invokes: Landroid/webkitsec/WebViewCore;->nativeScrollFocusedTextInput(IFI)V
    invoke-static {v2, v4, v0, v5}, Landroid/webkitsec/WebViewCore;->access$1900(Landroid/webkitsec/WebViewCore;IFI)V

    .line 1928
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewCore;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getAdvancedCopyPasteFeature()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1929
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mEventHub:Landroid/webkitsec/WebViewCore$EventHub;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$2000(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewCore$EventHub;

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x2ce

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    # invokes: Landroid/webkitsec/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore$EventHub;->access$2100(Landroid/webkitsec/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1920
    .end local v93    # "xPercent":F
    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v93

    .restart local v93    # "xPercent":F
    goto :goto_1

    .line 1935
    .end local v93    # "xPercent":F
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeupdateTextSelection(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$2200(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 1941
    :sswitch_5
    invoke-static {}, Landroid/webkitsec/CookieManagerClassic;->getInstance()Landroid/webkitsec/CookieManagerClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/CookieManagerClassic;->waitForCookieOperationsToComplete()V

    .line 1942
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/webkitsec/WebViewCore$GetUrlData;

    .line 1943
    .local v71, "param":Landroid/webkitsec/WebViewCore$GetUrlData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v71

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v71

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    # invokes: Landroid/webkitsec/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$2300(Landroid/webkitsec/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 1948
    .end local v71    # "param":Landroid/webkitsec/WebViewCore$GetUrlData;
    :sswitch_6
    invoke-static {}, Landroid/webkitsec/CookieManagerClassic;->getInstance()Landroid/webkitsec/CookieManagerClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/CookieManagerClassic;->waitForCookieOperationsToComplete()V

    .line 1949
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v71, v0

    check-cast v71, Landroid/webkitsec/WebViewCore$PostUrlData;

    .line 1950
    .local v71, "param":Landroid/webkitsec/WebViewCore$PostUrlData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v71

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    move-object/from16 v0, v71

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$PostUrlData;->mPostData:[B

    invoke-virtual {v2, v4, v5}, Landroid/webkitsec/BrowserFrame;->postUrl(Ljava/lang/String;[B)V

    goto/16 :goto_0

    .line 1954
    .end local v71    # "param":Landroid/webkitsec/WebViewCore$PostUrlData;
    :sswitch_7
    invoke-static {}, Landroid/webkitsec/CookieManagerClassic;->getInstance()Landroid/webkitsec/CookieManagerClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/CookieManagerClassic;->waitForCookieOperationsToComplete()V

    .line 1955
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v63, v0

    check-cast v63, Landroid/webkitsec/WebViewCore$BaseUrlData;

    .line 1956
    .local v63, "loadParams":Landroid/webkitsec/WebViewCore$BaseUrlData;
    move-object/from16 v0, v63

    iget-object v3, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 1957
    .local v3, "baseUrl":Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 1958
    const/16 v2, 0x3a

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v54

    .line 1959
    .local v54, "i":I
    if-lez v54, :cond_4

    .line 1967
    const/4 v2, 0x0

    move/from16 v0, v54

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v86

    .line 1968
    .local v86, "scheme":Ljava/lang/String;
    const-string v2, "http"

    move-object/from16 v0, v86

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "ftp"

    move-object/from16 v0, v86

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "about"

    move-object/from16 v0, v86

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "javascript"

    move-object/from16 v0, v86

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1972
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v86

    # invokes: Landroid/webkitsec/WebViewCore;->nativeRegisterURLSchemeAsLocal(ILjava/lang/String;)V
    invoke-static {v2, v4, v0}, Landroid/webkitsec/WebViewCore;->access$2400(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V

    .line 1977
    .end local v54    # "i":I
    .end local v86    # "scheme":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v63

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    move-object/from16 v0, v63

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    move-object/from16 v0, v63

    iget-object v6, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    move-object/from16 v0, v63

    iget-object v7, v0, Landroid/webkitsec/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/webkitsec/BrowserFrame;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeContentInvalidateAll(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$2500(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 1990
    .end local v3    # "baseUrl":Ljava/lang/String;
    .end local v63    # "loadParams":Landroid/webkitsec/WebViewCore$BaseUrlData;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->committed()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->firstLayoutDone()Z

    move-result v2

    if-nez v2, :cond_5

    .line 1992
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->didFirstLayout()V

    .line 1995
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewCore;->stopLoading()V

    goto/16 :goto_0

    .line 1999
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/webkitsec/BrowserFrame;->reload(Z)V

    goto/16 :goto_0

    .line 2003
    :sswitch_a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    # invokes: Landroid/webkitsec/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V
    invoke-static {v4, v2, v5, v7}, Landroid/webkitsec/WebViewCore;->access$2600(Landroid/webkitsec/WebViewCore;Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_0

    .line 2007
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/KeyEvent;

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->key(Landroid/view/KeyEvent;IZ)V
    invoke-static {v4, v2, v5, v7}, Landroid/webkitsec/WebViewCore;->access$2600(Landroid/webkitsec/WebViewCore;Landroid/view/KeyEvent;IZ)V

    goto/16 :goto_0

    .line 2011
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->keyPress(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$2700(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2015
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/webkitsec/WebViewClassic$ViewSizeData;

    # invokes: Landroid/webkitsec/WebViewCore;->viewSizeChanged(Landroid/webkitsec/WebViewClassic$ViewSizeData;)V
    invoke-static {v4, v2}, Landroid/webkitsec/WebViewCore;->access$2800(Landroid/webkitsec/WebViewCore;Landroid/webkitsec/WebViewClassic$ViewSizeData;)V

    goto/16 :goto_0

    .line 2021
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v73, v0

    check-cast v73, Landroid/graphics/Point;

    .line 2022
    .local v73, "pt":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_6

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, v73

    iget v7, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v73

    iget v10, v0, Landroid/graphics/Point;->y:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetScrollOffset(IZII)V
    invoke-static {v4, v5, v2, v7, v10}, Landroid/webkitsec/WebViewCore;->access$2900(Landroid/webkitsec/WebViewCore;IZII)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 2029
    .end local v73    # "pt":Landroid/graphics/Point;
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectedText(I)Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$3000(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;

    move-result-object v89

    .line 2030
    .local v89, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    move-object/from16 v0, v89

    invoke-virtual {v2, v0}, Landroid/webkitsec/WebViewClassic;->setSelectedText(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2036
    .end local v89    # "str":Ljava/lang/String;
    :sswitch_10
    new-instance v56, Landroid/graphics/Rect;

    invoke-direct/range {v56 .. v56}, Landroid/graphics/Rect;-><init>()V

    .line 2037
    .local v56, "inputTextBounds":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v56

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetInputTextBounds(ILandroid/graphics/Rect;)V
    invoke-static {v2, v4, v0}, Landroid/webkitsec/WebViewCore;->access$3100(Landroid/webkitsec/WebViewCore;ILandroid/graphics/Rect;)V

    .line 2038
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mEditTextContentBounds:Landroid/graphics/Rect;

    move-object/from16 v0, v56

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2043
    .end local v56    # "inputTextBounds":Landroid/graphics/Rect;
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCheckSpellingOfWordAtPosition(III)Z
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$3200(Landroid/webkitsec/WebViewCore;III)Z

    move-result v61

    .line 2044
    .local v61, "isWordMisspelled":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    move/from16 v0, v61

    invoke-virtual {v2, v0}, Landroid/webkitsec/WebViewClassic;->setSpellCheckResult(Z)V

    goto/16 :goto_0

    .line 2047
    .end local v61    # "isWordMisspelled":Z
    :sswitch_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v91, v0

    check-cast v91, Ljava/lang/String;

    .line 2048
    .local v91, "word":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v91

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUnmarkWord(ILjava/lang/String;)V
    invoke-static {v2, v4, v0}, Landroid/webkitsec/WebViewCore;->access$3300(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2052
    .end local v91    # "word":Ljava/lang/String;
    :sswitch_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v74, v0

    check-cast v74, Landroid/graphics/Rect;

    .line 2053
    .local v74, "r":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, v74

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v74

    iget v7, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v74 .. v74}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v74 .. v74}, Landroid/graphics/Rect;->height()I

    move-result v9

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetGlobalBounds(IIIII)V
    invoke-static/range {v4 .. v9}, Landroid/webkitsec/WebViewCore;->access$3400(Landroid/webkitsec/WebViewCore;IIIII)V

    goto/16 :goto_0

    .line 2060
    .end local v74    # "r":Landroid/graphics/Rect;
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->committed()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v4, -0x1

    if-ne v2, v4, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->loadType()I

    move-result v2

    if-nez v2, :cond_7

    .line 2063
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/webkitsec/BrowserFrame;->reload(Z)V

    goto/16 :goto_0

    .line 2065
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v4}, Landroid/webkitsec/BrowserFrame;->goBackOrForward(I)V

    .line 2067
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeRecalcWidthAndForceLayout(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$3500(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2073
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewCore;->stopLoading()V

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->restoreState(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$3600(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2079
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativePause(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$3700(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2083
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeResume(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$3800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2087
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->clearCache(Z)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$3900(Landroid/webkitsec/WebViewCore;Z)V

    .line 2088
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeFreeMemory(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4000(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2093
    :sswitch_19
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELKEY_SIML_FOR_COUNT "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2094
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSimulateDelKeyForCount(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$4100(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_0

    .line 2099
    :sswitch_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2100
    .local v28, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    invoke-virtual/range {v28 .. v28}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v72

    .line 2101
    .local v72, "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v72, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v40

    .line 2102
    .local v40, "count":I
    const/4 v2, 0x1

    aget-object v2, v72, v2

    check-cast v2, Landroid/webkitsec/HtmlComposerView$CursorDirection;

    sget-object v4, Landroid/webkitsec/HtmlComposerView$CursorDirection;->BACKWARD:Landroid/webkitsec/HtmlComposerView$CursorDirection;

    if-ne v2, v4, :cond_8

    const/16 v57, 0x1

    .line 2103
    .local v57, "isBefore":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move/from16 v0, v40

    move/from16 v1, v57

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetTextAroundCursor(IIZ)Ljava/lang/String;
    invoke-static {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->access$4200(Landroid/webkitsec/WebViewCore;IIZ)Ljava/lang/String;

    move-result-object v89

    .line 2105
    .restart local v89    # "str":Ljava/lang/String;
    monitor-enter v28

    .line 2107
    :try_start_1
    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2108
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2110
    monitor-exit v28

    goto/16 :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 2102
    .end local v57    # "isBefore":Z
    .end local v89    # "str":Ljava/lang/String;
    :cond_8
    const/16 v57, 0x0

    goto :goto_3

    .line 2117
    .end local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v40    # "count":I
    .end local v72    # "params":[Ljava/lang/Object;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeDeleteSurroundingText(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$4300(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_0

    .line 2122
    :sswitch_1c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2126
    .local v23, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectionOffset(I)Landroid/graphics/Point;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4400(Landroid/webkitsec/WebViewCore;I)Landroid/graphics/Point;

    move-result-object v84

    .line 2128
    .local v84, "result":Landroid/graphics/Point;
    monitor-enter v23

    .line 2130
    :try_start_2
    move-object/from16 v0, v23

    move-object/from16 v1, v84

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2131
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notify()V

    .line 2133
    monitor-exit v23

    goto/16 :goto_0

    :catchall_2
    move-exception v2

    monitor-exit v23
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v2

    .line 2138
    .end local v23    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    .end local v84    # "result":Landroid/graphics/Point;
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectionOffsetImage(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4500(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2144
    :sswitch_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2145
    .restart local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetBodyText(I)Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4600(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;

    move-result-object v89

    .line 2147
    .restart local v89    # "str":Ljava/lang/String;
    monitor-enter v28

    .line 2149
    :try_start_3
    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2150
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2152
    monitor-exit v28

    goto/16 :goto_0

    :catchall_3
    move-exception v2

    monitor-exit v28
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v2

    .line 2158
    .end local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v89    # "str":Ljava/lang/String;
    :sswitch_1f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2159
    .restart local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetBodyHTML(I)Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4700(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;

    move-result-object v89

    .line 2161
    .restart local v89    # "str":Ljava/lang/String;
    monitor-enter v28

    .line 2163
    :try_start_4
    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2164
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2166
    monitor-exit v28

    goto/16 :goto_0

    :catchall_4
    move-exception v2

    monitor-exit v28
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v2

    .line 2171
    .end local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v89    # "str":Ljava/lang/String;
    :sswitch_20
    const/16 v58, 0x0

    .line 2172
    .local v58, "isBodyEmpty":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2173
    .local v26, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetBodyEmpty(I)Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4800(Landroid/webkitsec/WebViewCore;I)Z

    move-result v58

    .line 2175
    monitor-enter v26

    .line 2177
    :try_start_5
    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2178
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 2180
    monitor-exit v26

    goto/16 :goto_0

    :catchall_5
    move-exception v2

    monitor-exit v26
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v2

    .line 2185
    .end local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v58    # "isBodyEmpty":Z
    :sswitch_21
    const/16 v88, -0x1

    .line 2186
    .local v88, "selectedType":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2187
    .local v27, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeContentSelectionType(I)I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$4900(Landroid/webkitsec/WebViewCore;I)I

    move-result v88

    .line 2189
    monitor-enter v27

    .line 2191
    :try_start_6
    invoke-static/range {v88 .. v88}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2192
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2194
    monitor-exit v27

    goto/16 :goto_0

    :catchall_6
    move-exception v2

    monitor-exit v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    throw v2

    .line 2201
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v88    # "selectedType":I
    :sswitch_22
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2202
    .local v24, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v72

    .line 2203
    .restart local v72    # "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v49, v72, v2

    check-cast v49, Ljava/lang/Boolean;

    .line 2204
    .local v49, "giveContentRect":Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    invoke-virtual/range {v49 .. v49}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetCursorRect(IZ)Landroid/graphics/Rect;
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$5000(Landroid/webkitsec/WebViewCore;IZ)Landroid/graphics/Rect;

    move-result-object v41

    .line 2206
    .local v41, "cursurRect":Landroid/graphics/Rect;
    monitor-enter v24

    .line 2208
    :try_start_7
    move-object/from16 v0, v24

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2209
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 2211
    monitor-exit v24

    goto/16 :goto_0

    :catchall_7
    move-exception v2

    monitor-exit v24
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    throw v2

    .line 2218
    .end local v24    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    .end local v41    # "cursurRect":Landroid/graphics/Rect;
    .end local v49    # "giveContentRect":Ljava/lang/Boolean;
    .end local v72    # "params":[Ljava/lang/Object;
    :sswitch_23
    const/16 v59, 0x0

    .line 2219
    .local v59, "isCommandSuces":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/webkitsec/WebViewClassic$CmdVal;

    .line 2220
    .local v37, "cmdVal":Landroid/webkitsec/WebViewClassic$CmdVal;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v37

    iget-object v5, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    move-object/from16 v0, v37

    iget-object v7, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->value:Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->nativeExecCommand(ILjava/lang/String;Ljava/lang/String;)Z
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$5100(Landroid/webkitsec/WebViewCore;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v59

    .line 2222
    move-object/from16 v0, v37

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    const-string v4, "Copy"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, v37

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    const-string v4, "Cut"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, v37

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    const-string v4, "Delete"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, v37

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    const-string v4, "DeleteForward"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, v37

    iget-object v2, v0, Landroid/webkitsec/WebViewClassic$CmdVal;->command:Ljava/lang/String;

    const-string v4, "MoveToEndOfLine"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2227
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUpdateTextSelectionStartAndEnd(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5200(Landroid/webkitsec/WebViewCore;I)V

    .line 2230
    :cond_a
    monitor-enter v37

    .line 2232
    :try_start_8
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->notify()V

    .line 2234
    monitor-exit v37

    goto/16 :goto_0

    :catchall_8
    move-exception v2

    monitor-exit v37
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    throw v2

    .line 2239
    .end local v37    # "cmdVal":Landroid/webkitsec/WebViewClassic$CmdVal;
    .end local v59    # "isCommandSuces":Z
    :sswitch_24
    const/16 v32, 0x0

    .line 2240
    .local v32, "canUndo":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2241
    .restart local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCanUndo(I)Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5300(Landroid/webkitsec/WebViewCore;I)Z

    move-result v32

    .line 2242
    monitor-enter v26

    .line 2244
    :try_start_9
    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2245
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 2247
    monitor-exit v26

    goto/16 :goto_0

    :catchall_9
    move-exception v2

    monitor-exit v26
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    throw v2

    .line 2253
    .end local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v32    # "canUndo":Z
    :sswitch_25
    const/16 v31, 0x0

    .line 2254
    .local v31, "canRedo":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2255
    .restart local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCanRedo(I)Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5400(Landroid/webkitsec/WebViewCore;I)Z

    move-result v31

    .line 2256
    monitor-enter v26

    .line 2258
    :try_start_a
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2259
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 2261
    monitor-exit v26

    goto/16 :goto_0

    :catchall_a
    move-exception v2

    monitor-exit v26
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    throw v2

    .line 2266
    .end local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v31    # "canRedo":Z
    :sswitch_26
    const/16 v60, 0x0

    .line 2267
    .local v60, "isOutside":Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2268
    .local v22, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Landroid/graphics/Rect;Ljava/lang/Boolean;>;"
    new-instance v80, Landroid/graphics/Rect;

    invoke-direct/range {v80 .. v80}, Landroid/graphics/Rect;-><init>()V

    .line 2269
    .local v80, "rect3":Landroid/graphics/Rect;
    invoke-virtual/range {v22 .. v22}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v72

    .line 2271
    .restart local v72    # "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v72, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v92

    .line 2272
    .local v92, "x":I
    const/4 v2, 0x1

    aget-object v2, v72, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v94

    .line 2274
    .local v94, "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move/from16 v0, v92

    move/from16 v1, v94

    # invokes: Landroid/webkitsec/WebViewCore;->nativeisTouchedOutside(III)Z
    invoke-static {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->access$5500(Landroid/webkitsec/WebViewCore;III)Z

    move-result v60

    .line 2275
    monitor-enter v22

    .line 2277
    :try_start_b
    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2278
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->notify()V

    .line 2280
    monitor-exit v22

    goto/16 :goto_0

    :catchall_b
    move-exception v2

    monitor-exit v22
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    throw v2

    .line 2285
    .end local v22    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Landroid/graphics/Rect;Ljava/lang/Boolean;>;"
    .end local v60    # "isOutside":Z
    .end local v72    # "params":[Ljava/lang/Object;
    .end local v80    # "rect3":Landroid/graphics/Rect;
    .end local v92    # "x":I
    .end local v94    # "y":I
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUndoRedoStateReset(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5600(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2289
    :sswitch_28
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v90, v0

    check-cast v90, Ljava/lang/String;

    .line 2290
    .local v90, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v90

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCopyAndSaveImage(ILjava/lang/String;)Z
    invoke-static {v2, v4, v0}, Landroid/webkitsec/WebViewCore;->access$5700(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)Z

    goto/16 :goto_0

    .line 2297
    .end local v90    # "url":Ljava/lang/String;
    :sswitch_29
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2301
    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v25, v0

    check-cast v25, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2302
    .local v25, "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/webkitsec/WebHTMLMarkupData;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetFullMarkupData(I)Landroid/webkitsec/WebHTMLMarkupData;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5900(Landroid/webkitsec/WebViewCore;I)Landroid/webkitsec/WebHTMLMarkupData;

    move-result-object v89

    .line 2304
    .local v89, "str":Landroid/webkitsec/WebHTMLMarkupData;
    monitor-enter v25

    .line 2306
    :try_start_c
    move-object/from16 v0, v25

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2307
    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notify()V

    .line 2309
    monitor-exit v25

    goto/16 :goto_0

    :catchall_c
    move-exception v2

    monitor-exit v25
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    throw v2

    .line 2314
    .end local v25    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/webkitsec/WebHTMLMarkupData;>;"
    .end local v89    # "str":Landroid/webkitsec/WebHTMLMarkupData;
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_b

    const/4 v2, 0x1

    :goto_4
    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetEditable(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$6000(Landroid/webkitsec/WebViewCore;IZ)V

    goto/16 :goto_0

    :cond_b
    const/4 v2, 0x0

    goto :goto_4

    .line 2318
    :sswitch_2c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Landroid/graphics/Point;

    .line 2319
    .local v76, "recTwoIntObj":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v76

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v76

    iget v7, v0, Landroid/graphics/Point;->y:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetSelectionEditable(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$6100(Landroid/webkitsec/WebViewCore;III)V

    .line 2320
    monitor-enter v76

    .line 2322
    :try_start_d
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notify()V

    .line 2324
    monitor-exit v76

    goto/16 :goto_0

    :catchall_d
    move-exception v2

    monitor-exit v76
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_d

    throw v2

    .line 2331
    .end local v76    # "recTwoIntObj":Landroid/graphics/Point;
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeMoveSingleCursorHandler(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$6200(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_0

    .line 2336
    :sswitch_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v76, v0

    check-cast v76, Landroid/graphics/Point;

    .line 2337
    .restart local v76    # "recTwoIntObj":Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v76

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v76

    iget v7, v0, Landroid/graphics/Point;->y:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetComposingRegion(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$6300(Landroid/webkitsec/WebViewCore;III)V

    .line 2338
    monitor-enter v76

    .line 2340
    :try_start_e
    invoke-virtual/range {v76 .. v76}, Ljava/lang/Object;->notify()V

    .line 2342
    monitor-exit v76

    goto/16 :goto_0

    :catchall_e
    move-exception v2

    monitor-exit v76
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    throw v2

    .line 2346
    .end local v76    # "recTwoIntObj":Landroid/graphics/Point;
    :sswitch_2f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v46

    .line 2347
    .local v46, "factor":F
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move/from16 v0, v46

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetPageZoom(IF)V
    invoke-static {v2, v4, v0}, Landroid/webkitsec/WebViewCore;->access$6400(Landroid/webkitsec/WebViewCore;IF)V

    goto/16 :goto_0

    .line 2351
    .end local v46    # "factor":F
    :sswitch_30
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetSelectionNone(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$6500(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2355
    :sswitch_31
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2356
    .restart local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    const/16 v84, 0x0

    .line 2357
    .local v84, "result":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectionNone(I)Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$6600(Landroid/webkitsec/WebViewCore;I)Z

    move-result v84

    .line 2359
    monitor-enter v26

    .line 2360
    :try_start_f
    invoke-static/range {v84 .. v84}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2361
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->notify()V

    .line 2362
    monitor-exit v26

    goto/16 :goto_0

    :catchall_f
    move-exception v2

    monitor-exit v26
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_f

    throw v2

    .line 2370
    .end local v26    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    .end local v84    # "result":Z
    :sswitch_32
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetComposingSelectionNone(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$6700(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2374
    :sswitch_33
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeRestorePreviousSelectionController(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$6800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2379
    :sswitch_34
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSaveSelectionController(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$6900(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2383
    :sswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUpdateIMSelection(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$7000(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_0

    .line 2387
    :sswitch_36
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2388
    .restart local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v84, -0x1

    .line 2389
    .local v84, "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCheckSelectionAtBoundry(I)I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$7100(Landroid/webkitsec/WebViewCore;I)I

    move-result v84

    .line 2391
    monitor-enter v27

    .line 2393
    :try_start_10
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2394
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2396
    monitor-exit v27

    goto/16 :goto_0

    :catchall_10
    move-exception v2

    monitor-exit v27
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_10

    throw v2

    .line 2401
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v84    # "result":I
    :sswitch_37
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v44, v0

    check-cast v44, Landroid/webkitsec/WebViewCore$EditableParams;

    .line 2402
    .local v44, "editableParams":Landroid/webkitsec/WebViewCore$EditableParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, v44

    iget-object v6, v0, Landroid/webkitsec/WebViewCore$EditableParams;->content:Ljava/lang/String;

    move-object/from16 v0, v44

    iget v7, v0, Landroid/webkitsec/WebViewCore$EditableParams;->newCursorPosition:I

    move-object/from16 v0, v44

    iget-boolean v8, v0, Landroid/webkitsec/WebViewCore$EditableParams;->composing:Z

    move-object/from16 v0, v44

    iget-object v9, v0, Landroid/webkitsec/WebViewCore$EditableParams;->spanData:Ljava/util/Vector;

    # invokes: Landroid/webkitsec/WebViewCore;->nativeInsertContent(ILjava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;
    invoke-static/range {v4 .. v9}, Landroid/webkitsec/WebViewCore;->access$7200(Landroid/webkitsec/WebViewCore;ILjava/lang/String;IZLjava/util/Vector;)Landroid/graphics/Point;

    move-result-object v84

    .line 2403
    .local v84, "result":Landroid/graphics/Point;
    monitor-enter v44

    .line 2404
    :try_start_11
    move-object/from16 v0, v84

    iget v2, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/webkitsec/WebViewCore$EditableParams;->startOffset:I

    .line 2405
    move-object/from16 v0, v84

    iget v2, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v44

    iput v2, v0, Landroid/webkitsec/WebViewCore$EditableParams;->endOffset:I

    .line 2406
    invoke-virtual/range {v44 .. v44}, Ljava/lang/Object;->notify()V

    .line 2407
    monitor-exit v44

    goto/16 :goto_0

    :catchall_11
    move-exception v2

    monitor-exit v44
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_11

    throw v2

    .line 2412
    .end local v44    # "editableParams":Landroid/webkitsec/WebViewCore$EditableParams;
    .end local v84    # "result":Landroid/graphics/Point;
    :sswitch_38
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCheckSelectedClosestWord(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$7300(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2417
    :sswitch_39
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2418
    .restart local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v84, 0x0

    .line 2419
    .local v84, "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetStateInRichlyEditableText(I)I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$7400(Landroid/webkitsec/WebViewCore;I)I

    move-result v84

    .line 2421
    monitor-enter v27

    .line 2422
    :try_start_12
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2423
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2424
    monitor-exit v27

    goto/16 :goto_0

    :catchall_12
    move-exception v2

    monitor-exit v27
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_12

    throw v2

    .line 2429
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v84    # "result":I
    :sswitch_3a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Ljava/lang/String;

    .line 2430
    .local v38, "command":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v38

    # invokes: Landroid/webkitsec/WebViewCore;->nativeinsertImageContent(ILjava/lang/String;)V
    invoke-static {v2, v4, v0}, Landroid/webkitsec/WebViewCore;->access$7500(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2435
    .end local v38    # "command":Ljava/lang/String;
    :sswitch_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeresizeImage(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$7600(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_0

    .line 2441
    :sswitch_3c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2442
    .restart local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v47, 0x0

    .line 2443
    .local v47, "fontSize":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativegetCurrentFontSize(I)I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$7700(Landroid/webkitsec/WebViewCore;I)I

    move-result v47

    .line 2444
    monitor-enter v27

    .line 2445
    :try_start_13
    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2446
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2447
    monitor-exit v27

    goto/16 :goto_0

    :catchall_13
    move-exception v2

    monitor-exit v27
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    throw v2

    .line 2452
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v47    # "fontSize":I
    :sswitch_3d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2453
    .restart local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v48, 0x0

    .line 2454
    .local v48, "fontValue":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativegetCurrentFontValue(I)I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$7800(Landroid/webkitsec/WebViewCore;I)I

    move-result v48

    .line 2455
    monitor-enter v27

    .line 2456
    :try_start_14
    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2457
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2458
    monitor-exit v27

    goto/16 :goto_0

    :catchall_14
    move-exception v2

    monitor-exit v27
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_14

    throw v2

    .line 2462
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v48    # "fontValue":I
    :sswitch_3e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2463
    .restart local v24    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    new-instance v80, Landroid/graphics/Rect;

    invoke-direct/range {v80 .. v80}, Landroid/graphics/Rect;-><init>()V

    .line 2464
    .restart local v80    # "rect3":Landroid/graphics/Rect;
    invoke-virtual/range {v24 .. v24}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->getParams()[Ljava/lang/Object;

    move-result-object v72

    .line 2465
    .restart local v72    # "params":[Ljava/lang/Object;
    const/4 v2, 0x0

    aget-object v2, v72, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v92

    .line 2466
    .restart local v92    # "x":I
    const/4 v2, 0x1

    aget-object v2, v72, v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v94

    .line 2467
    .restart local v94    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move/from16 v0, v92

    move/from16 v1, v94

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetImageSize(III)Landroid/graphics/Rect;
    invoke-static {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->access$7900(Landroid/webkitsec/WebViewCore;III)Landroid/graphics/Rect;

    move-result-object v80

    .line 2468
    monitor-enter v24

    .line 2470
    :try_start_15
    move-object/from16 v0, v24

    move-object/from16 v1, v80

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2471
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 2473
    monitor-exit v24

    goto/16 :goto_0

    :catchall_15
    move-exception v2

    monitor-exit v24
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_15

    throw v2

    .line 2477
    .end local v24    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    .end local v72    # "params":[Ljava/lang/Object;
    .end local v80    # "rect3":Landroid/graphics/Rect;
    .end local v92    # "x":I
    .end local v94    # "y":I
    :sswitch_3f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2478
    .restart local v24    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    new-instance v79, Landroid/graphics/Rect;

    invoke-direct/range {v79 .. v79}, Landroid/graphics/Rect;-><init>()V

    .line 2479
    .local v79, "rect2":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectedImageRect(I)Landroid/graphics/Rect;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$8000(Landroid/webkitsec/WebViewCore;I)Landroid/graphics/Rect;

    move-result-object v79

    .line 2480
    monitor-enter v24

    .line 2482
    :try_start_16
    move-object/from16 v0, v24

    move-object/from16 v1, v79

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2483
    invoke-virtual/range {v24 .. v24}, Ljava/lang/Object;->notify()V

    .line 2485
    monitor-exit v24

    goto/16 :goto_0

    :catchall_16
    move-exception v2

    monitor-exit v24
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_16

    throw v2

    .line 2489
    .end local v24    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    .end local v79    # "rect2":Landroid/graphics/Rect;
    :sswitch_40
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # invokes: Landroid/webkitsec/WebViewCore;->webkitActionBarDraw()V
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$8100(Landroid/webkitsec/WebViewCore;)V

    goto/16 :goto_0

    .line 2494
    :sswitch_41
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2495
    .restart local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v84, -0x1

    .line 2496
    .restart local v84    # "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCheckEndOfWordAtPosition(III)I
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$8200(Landroid/webkitsec/WebViewCore;III)I

    move-result v84

    .line 2498
    monitor-enter v27

    .line 2499
    :try_start_17
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2500
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2501
    monitor-exit v27

    goto/16 :goto_0

    :catchall_17
    move-exception v2

    monitor-exit v27
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_17

    throw v2

    .line 2507
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v84    # "result":I
    :sswitch_42
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2508
    .restart local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectedImageUri(I)Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$8300(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;

    move-result-object v89

    .line 2510
    .local v89, "str":Ljava/lang/String;
    monitor-enter v28

    .line 2511
    :try_start_18
    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2512
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2513
    monitor-exit v28

    goto/16 :goto_0

    :catchall_18
    move-exception v2

    monitor-exit v28
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_18

    throw v2

    .line 2519
    .end local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v89    # "str":Ljava/lang/String;
    :sswitch_43
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v78, v0

    check-cast v78, Landroid/graphics/Rect;

    .line 2520
    .local v78, "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, v78

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v78

    iget v7, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v78

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v78

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSelectBWStartAndEnd(IIIII)V
    invoke-static/range {v4 .. v9}, Landroid/webkitsec/WebViewCore;->access$8400(Landroid/webkitsec/WebViewCore;IIIII)V

    goto/16 :goto_0

    .line 2526
    .end local v78    # "rect":Landroid/graphics/Rect;
    :sswitch_44
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetCursorFromRangeSelectionController(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$8500(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2531
    :sswitch_45
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v27, v0

    check-cast v27, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2532
    .restart local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    const/16 v84, -0x1

    .line 2533
    .restart local v84    # "result":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeIsAtBoundary(III)I
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$8600(Landroid/webkitsec/WebViewCore;III)I

    move-result v84

    .line 2535
    monitor-enter v27

    .line 2536
    :try_start_19
    invoke-static/range {v84 .. v84}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2537
    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notify()V

    .line 2538
    monitor-exit v27

    goto/16 :goto_0

    :catchall_19
    move-exception v2

    monitor-exit v27
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_19

    throw v2

    .line 2544
    .end local v27    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    .end local v84    # "result":I
    :sswitch_46
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeDropTheDraggedText(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$8700(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_0

    .line 2550
    :sswitch_47
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeResetSelectionController(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$8800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2554
    :sswitch_48
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkitsec/HtmlComposerView$ResultTransport;

    .line 2555
    .restart local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetSelectedHTMLText(I)Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$8900(Landroid/webkitsec/WebViewCore;I)Ljava/lang/String;

    move-result-object v89

    .line 2557
    .restart local v89    # "str":Ljava/lang/String;
    monitor-enter v28

    .line 2558
    :try_start_1a
    move-object/from16 v0, v28

    move-object/from16 v1, v89

    invoke-virtual {v0, v1}, Landroid/webkitsec/HtmlComposerView$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 2559
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Object;->notify()V

    .line 2560
    monitor-exit v28

    goto/16 :goto_0

    :catchall_1a
    move-exception v2

    monitor-exit v28
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1a

    throw v2

    .line 2565
    .end local v28    # "arg":Landroid/webkitsec/HtmlComposerView$ResultTransport;, "Landroid/webkitsec/HtmlComposerView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    .end local v89    # "str":Ljava/lang/String;
    :sswitch_49
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v2, :cond_c

    .line 2566
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2569
    :cond_c
    sget-object v4, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_d

    const/4 v2, 0x1

    :goto_5
    invoke-virtual {v4, v2}, Landroid/webkitsec/JWebCoreJavaBridge;->setNetworkOnLine(Z)V

    goto/16 :goto_0

    :cond_d
    const/4 v2, 0x0

    goto :goto_5

    .line 2574
    :sswitch_4a
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v2, :cond_e

    .line 2575
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2578
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v64, v0

    check-cast v64, Ljava/util/Map;

    .line 2579
    .local v64, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v5, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    const-string/jumbo v2, "type"

    move-object/from16 v0, v64

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string/jumbo v4, "subtype"

    move-object/from16 v0, v64

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v2, v4}, Landroid/webkitsec/JWebCoreJavaBridge;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2584
    .end local v64    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :sswitch_4b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v5, 0x1

    if-ne v2, v5, :cond_f

    const/4 v2, 0x1

    :goto_6
    # invokes: Landroid/webkitsec/WebViewCore;->clearCache(Z)V
    invoke-static {v4, v2}, Landroid/webkitsec/WebViewCore;->access$3900(Landroid/webkitsec/WebViewCore;Z)V

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x0

    goto :goto_6

    .line 2588
    :sswitch_4c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$9000(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/CallbackProxy;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/CallbackProxy;->getBackForwardList()Landroid/webkitsec/WebBackForwardListClassic;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v4

    iget v4, v4, Landroid/webkitsec/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v2, v4}, Landroid/webkitsec/WebBackForwardListClassic;->close(I)V

    goto/16 :goto_0

    .line 2593
    :sswitch_4d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v81, v0

    check-cast v81, Landroid/webkitsec/WebViewCore$ReplaceTextData;

    .line 2594
    .local v81, "rep":Landroid/webkitsec/WebViewCore$ReplaceTextData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    move-object/from16 v0, v81

    iget-object v8, v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    move-object/from16 v0, v81

    iget v9, v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;->mNewStart:I

    move-object/from16 v0, v81

    iget v10, v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;->mNewEnd:I

    move-object/from16 v0, v81

    iget v11, v0, Landroid/webkitsec/WebViewCore$ReplaceTextData;->mTextGeneration:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeReplaceTextfieldText(IIILjava/lang/String;III)V
    invoke-static/range {v4 .. v11}, Landroid/webkitsec/WebViewCore;->access$9100(Landroid/webkitsec/WebViewCore;IIILjava/lang/String;III)V

    goto/16 :goto_0

    .line 2600
    .end local v81    # "rep":Landroid/webkitsec/WebViewCore$ReplaceTextData;
    :sswitch_4e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/WebViewCore$JSKeyData;

    .line 2601
    .local v62, "jsData":Landroid/webkitsec/WebViewCore$JSKeyData;
    move-object/from16 v0, v62

    iget-object v0, v0, Landroid/webkitsec/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    move-object/from16 v45, v0

    .line 2602
    .local v45, "evt":Landroid/view/KeyEvent;
    invoke-virtual/range {v45 .. v45}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v8

    .line 2603
    .local v8, "keyCode":I
    invoke-virtual/range {v45 .. v45}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v9

    .line 2604
    .local v9, "keyValue":I
    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->arg1:I

    .line 2605
    .local v6, "generation":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, v62

    iget-object v7, v0, Landroid/webkitsec/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    invoke-virtual/range {v45 .. v45}, Landroid/view/KeyEvent;->isDown()Z

    move-result v10

    invoke-virtual/range {v45 .. v45}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v11

    invoke-virtual/range {v45 .. v45}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v12

    invoke-virtual/range {v45 .. v45}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v13

    # invokes: Landroid/webkitsec/WebViewCore;->passToJs(IILjava/lang/String;IIZZZZ)V
    invoke-static/range {v4 .. v13}, Landroid/webkitsec/WebViewCore;->access$9200(Landroid/webkitsec/WebViewCore;IILjava/lang/String;IIZZZZ)V

    goto/16 :goto_0

    .line 2616
    .end local v6    # "generation":I
    .end local v8    # "keyCode":I
    .end local v9    # "keyValue":I
    .end local v45    # "evt":Landroid/view/KeyEvent;
    .end local v62    # "jsData":Landroid/webkitsec/WebViewCore$JSKeyData;
    :sswitch_4f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSaveDocumentState(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$9300(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2623
    :sswitch_50
    invoke-static {}, Landroid/webkitsec/SslCertLookupTable;->getInstance()Landroid/webkitsec/SslCertLookupTable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/SslCertLookupTable;->clear()V

    .line 2624
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCloseIdleConnections(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$1300(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2628
    :sswitch_51
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_10

    const/4 v2, 0x1

    :goto_7
    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetFocusControllerActive(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$9400(Landroid/webkitsec/WebViewCore;IZ)V

    goto/16 :goto_0

    :cond_10
    const/4 v2, 0x0

    goto :goto_7

    .line 2632
    :sswitch_52
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/WebViewCore$JSInterfaceData;

    .line 2633
    .local v62, "jsData":Landroid/webkitsec/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    move-object/from16 v0, v62

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v0, v62

    iget-boolean v7, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mRequireAnnotation:Z

    invoke-virtual {v2, v4, v5, v7}, Landroid/webkitsec/BrowserFrame;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2638
    .end local v62    # "jsData":Landroid/webkitsec/WebViewCore$JSInterfaceData;
    :sswitch_53
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v62, v0

    check-cast v62, Landroid/webkitsec/WebViewCore$JSInterfaceData;

    .line 2639
    .restart local v62    # "jsData":Landroid/webkitsec/WebViewCore$JSInterfaceData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    move-object/from16 v0, v62

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/webkitsec/BrowserFrame;->removeJavascriptInterface(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2644
    .end local v62    # "jsData":Landroid/webkitsec/WebViewCore$JSInterfaceData;
    :sswitch_54
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkitsec/BrowserFrame;->externalRepresentation(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2649
    :sswitch_55
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v4, v2}, Landroid/webkitsec/BrowserFrame;->documentAsText(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2653
    :sswitch_56
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeMoveMouse(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$9500(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_0

    .line 2657
    :sswitch_57
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg2:I

    const/4 v7, 0x1

    const/4 v10, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->performHitTest(IIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;
    invoke-static {v2, v4, v5, v7, v10}, Landroid/webkitsec/WebViewCore;->access$9600(Landroid/webkitsec/WebViewCore;IIIZ)Landroid/webkitsec/WebViewCore$WebKitHitTest;

    move-result-object v52

    .line 2658
    .local v52, "hit":Landroid/webkitsec/WebViewCore$WebKitHitTest;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v53, v0

    check-cast v53, Landroid/os/Message;

    .line 2659
    .local v53, "hrefMsg":Landroid/os/Message;
    invoke-virtual/range {v53 .. v53}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v42

    .line 2660
    .local v42, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    move-object/from16 v0, v52

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mLinkUrl:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2661
    const-string/jumbo v2, "title"

    move-object/from16 v0, v52

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mAnchorText:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2662
    const-string/jumbo v2, "src"

    move-object/from16 v0, v52

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$WebKitHitTest;->mImageUrl:Ljava/lang/String;

    move-object/from16 v0, v42

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    invoke-virtual/range {v53 .. v53}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2668
    .end local v42    # "data":Landroid/os/Bundle;
    .end local v52    # "hit":Landroid/webkitsec/WebViewCore$WebKitHitTest;
    .end local v53    # "hrefMsg":Landroid/os/Message;
    :sswitch_58
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Landroid/os/Message;

    .line 2669
    .local v55, "imageResult":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/BrowserFrame;->documentHasImages()Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, v55

    iput v2, v0, Landroid/os/Message;->arg1:I

    .line 2671
    invoke-virtual/range {v55 .. v55}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2669
    :cond_11
    const/4 v2, 0x0

    goto :goto_8

    .line 2675
    .end local v55    # "imageResult":Landroid/os/Message;
    :sswitch_59
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Landroid/webkitsec/WebViewCore$TextSelectionData;

    .line 2677
    .local v43, "deleteSelectionData":Landroid/webkitsec/WebViewCore$TextSelectionData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v43

    iget v5, v0, Landroid/webkitsec/WebViewCore$TextSelectionData;->mStart:I

    move-object/from16 v0, v43

    iget v7, v0, Landroid/webkitsec/WebViewCore$TextSelectionData;->mEnd:I

    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeDeleteSelection(IIII)V
    invoke-static {v2, v4, v5, v7, v10}, Landroid/webkitsec/WebViewCore;->access$9700(Landroid/webkitsec/WebViewCore;IIII)V

    goto/16 :goto_0

    .line 2682
    .end local v43    # "deleteSelectionData":Landroid/webkitsec/WebViewCore$TextSelectionData;
    :sswitch_5a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetSelection(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$9800(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_0

    .line 2686
    :sswitch_5b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x1

    # setter for: Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$9902(Landroid/webkitsec/WebViewCore;I)I

    .line 2695
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    check-cast v29, Lcom/android/internal/os/SomeArgs;

    .line 2696
    .local v29, "args":Lcom/android/internal/os/SomeArgs;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v29

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v0, v29

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeModifySelection(III)Ljava/lang/String;
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$10000(Landroid/webkitsec/WebViewCore;III)Ljava/lang/String;

    move-result-object v67

    .line 2700
    .local v67, "modifiedSelectionString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    move-object/from16 v0, v29

    iget v4, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v0, v67

    invoke-virtual {v2, v0, v4}, Landroid/webkitsec/WebViewClassic;->handleSelectionChangedWebCoreThread(Ljava/lang/String;I)V

    .line 2702
    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 2705
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x0

    # setter for: Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$9902(Landroid/webkitsec/WebViewCore;I)I

    goto/16 :goto_0

    .line 2710
    .end local v29    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v67    # "modifiedSelectionString":Ljava/lang/String;
    :sswitch_5c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/util/SparseBooleanArray;

    .line 2712
    .local v33, "choices":Landroid/util/SparseBooleanArray;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v35, v0

    .line 2713
    .local v35, "choicesSize":I
    move/from16 v0, v35

    new-array v0, v0, [Z

    move-object/from16 v34, v0

    .line 2714
    .local v34, "choicesArray":[Z
    const/16 v30, 0x0

    .local v30, "c":I
    :goto_9
    move/from16 v0, v30

    move/from16 v1, v35

    if-ge v0, v1, :cond_12

    .line 2715
    move-object/from16 v0, v33

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    aput-boolean v2, v34, v30

    .line 2714
    add-int/lit8 v30, v30, 0x1

    goto :goto_9

    .line 2717
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v34

    move/from16 v1, v35

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSendListBoxChoices(I[ZI)V
    invoke-static {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->access$10100(Landroid/webkitsec/WebViewCore;I[ZI)V

    goto/16 :goto_0

    .line 2722
    .end local v30    # "c":I
    .end local v33    # "choices":Landroid/util/SparseBooleanArray;
    .end local v34    # "choicesArray":[Z
    .end local v35    # "choicesSize":I
    :sswitch_5d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSendListBoxChoice(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$10200(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_0

    .line 2726
    :sswitch_5e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetBackgroundColor(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$10300(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_0

    .line 2730
    :sswitch_5f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_13

    const/4 v2, 0x1

    :goto_a
    # invokes: Landroid/webkitsec/WebViewCore;->nativeDumpDomTree(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$10400(Landroid/webkitsec/WebViewCore;IZ)V

    goto/16 :goto_0

    :cond_13
    const/4 v2, 0x0

    goto :goto_a

    .line 2734
    :sswitch_60
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_14

    const/4 v2, 0x1

    :goto_b
    # invokes: Landroid/webkitsec/WebViewCore;->nativeDumpRenderTree(IZ)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$10500(Landroid/webkitsec/WebViewCore;IZ)V

    goto/16 :goto_0

    :cond_14
    const/4 v2, 0x0

    goto :goto_b

    .line 2738
    :sswitch_61
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetJsFlags(ILjava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$10600(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2742
    :sswitch_62
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeContentInvalidateAll(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$2500(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2746
    :sswitch_63
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v85, v0

    check-cast v85, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;

    .line 2748
    .local v85, "saveMessage":Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v85

    iget-object v4, v0, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;->mBasename:Ljava/lang/String;

    move-object/from16 v0, v85

    iget-boolean v5, v0, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;->mAutoname:Z

    # invokes: Landroid/webkitsec/WebViewCore;->saveWebArchive(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$10700(Landroid/webkitsec/WebViewCore;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v85

    iput-object v2, v0, Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;->mResultFile:Ljava/lang/String;

    .line 2750
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x83

    move-object/from16 v0, v85

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2755
    .end local v85    # "saveMessage":Landroid/webkitsec/WebViewClassic$SaveWebArchiveMessage;
    :sswitch_64
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;

    .line 2757
    .local v42, "data":Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v42

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, v42

    iget-boolean v7, v0, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;->mAllow:Z

    move-object/from16 v0, v42

    iget-boolean v10, v0, Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;->mRemember:Z

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGeolocationPermissionsProvide(ILjava/lang/String;ZZ)V
    invoke-static {v2, v4, v5, v7, v10}, Landroid/webkitsec/WebViewCore;->access$10800(Landroid/webkitsec/WebViewCore;ILjava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 2765
    .end local v42    # "data":Landroid/webkitsec/WebViewCore$GeolocationPermissionsData;
    :sswitch_65
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    invoke-virtual {v2}, Landroid/webkitsec/WebViewCore;->clearContent()V

    goto/16 :goto_0

    .line 2769
    :sswitch_66
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Message;

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2773
    :sswitch_67
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->nativeProvideVisitedHistory(I[Ljava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$10900(Landroid/webkitsec/WebViewCore;I[Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2777
    :sswitch_68
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeFullScreenPluginHidden(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$11000(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_0

    .line 2781
    :sswitch_69
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativePluginSurfaceReady(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$11100(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2785
    :sswitch_6a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeNotifyAnimationStarted(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$11200(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2789
    :sswitch_6b
    sget-object v2, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    if-nez v2, :cond_15

    .line 2790
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "No WebView has been created in this process!"

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2793
    :cond_15
    sget-object v4, Landroid/webkitsec/BrowserFrame;->sJavaBridge:Landroid/webkitsec/JWebCoreJavaBridge;

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/Set;

    invoke-virtual {v4, v2}, Landroid/webkitsec/JWebCoreJavaBridge;->addPackageNames(Ljava/util/Set;)V

    goto/16 :goto_0

    .line 2798
    :sswitch_6c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # invokes: Landroid/webkitsec/WebViewCore;->setUseMockGeolocation()V
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$11300(Landroid/webkitsec/WebViewCore;)V

    goto/16 :goto_0

    .line 2801
    :sswitch_6d
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # invokes: Landroid/webkitsec/WebViewCore;->setUseMockDeviceOrientation()V
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$11400(Landroid/webkitsec/WebViewCore;)V

    goto/16 :goto_0

    .line 2805
    :sswitch_6e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeAutoFillForm(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$11500(Landroid/webkitsec/WebViewCore;II)V

    .line 2806
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x85

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2809
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUpdateTextSelectionStartAndEnd(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5200(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2814
    :sswitch_6f
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2818
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mBrowserFrame:Landroid/webkitsec/BrowserFrame;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1600(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/BrowserFrame;

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Landroid/webkitsec/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 2823
    :sswitch_70
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v68, v0

    .line 2824
    .local v68, "nativeLayer":I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v78, v0

    check-cast v78, Landroid/graphics/Rect;

    .line 2825
    .restart local v78    # "rect":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move/from16 v0, v68

    move-object/from16 v1, v78

    # invokes: Landroid/webkitsec/WebViewCore;->nativeScrollLayer(IILandroid/graphics/Rect;)V
    invoke-static {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->access$11600(Landroid/webkitsec/WebViewCore;IILandroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 2830
    .end local v68    # "nativeLayer":I
    .end local v78    # "rect":Landroid/graphics/Rect;
    :sswitch_71
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v51, v2

    check-cast v51, [I

    .line 2831
    .local v51, "handles":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v11

    const/4 v2, 0x0

    aget v12, v51, v2

    const/4 v2, 0x1

    aget v13, v51, v2

    const/4 v2, 0x2

    aget v14, v51, v2

    const/4 v2, 0x3

    aget v15, v51, v2

    # invokes: Landroid/webkitsec/WebViewCore;->nativeDeleteText(IIIII)V
    invoke-static/range {v10 .. v15}, Landroid/webkitsec/WebViewCore;->access$11700(Landroid/webkitsec/WebViewCore;IIIII)V

    goto/16 :goto_0

    .line 2836
    .end local v51    # "handles":[I
    :sswitch_72
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [I

    move-object/from16 v51, v2

    check-cast v51, [I

    .line 2837
    .restart local v51    # "handles":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v11

    const/4 v2, 0x0

    aget v12, v51, v2

    const/4 v2, 0x1

    aget v13, v51, v2

    const/4 v2, 0x2

    aget v14, v51, v2

    const/4 v2, 0x3

    aget v15, v51, v2

    # invokes: Landroid/webkitsec/WebViewCore;->nativeGetText(IIIII)Ljava/lang/String;
    invoke-static/range {v10 .. v15}, Landroid/webkitsec/WebViewCore;->access$11800(Landroid/webkitsec/WebViewCore;IIIII)Ljava/lang/String;

    move-result-object v39

    .line 2840
    .local v39, "copiedText":Ljava/lang/String;
    if-eqz v39, :cond_0

    .line 2841
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x89

    move-object/from16 v0, v39

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2851
    .end local v39    # "copiedText":Ljava/lang/String;
    .end local v51    # "handles":[I
    :sswitch_73
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v72, v0

    check-cast v72, Landroid/webkitsec/WebViewCore$CopyParams;

    .line 2852
    .local v72, "params":Landroid/webkitsec/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v11

    move-object/from16 v0, v72

    iget v12, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v72

    iget v13, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentY:I

    move-object/from16 v0, v72

    iget v14, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mController:I

    move-object/from16 v0, v72

    iget-boolean v15, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mSmartSelection:Z

    move-object/from16 v0, v72

    iget-boolean v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mSelectionMove:Z

    move/from16 v16, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mZoomScale:F

    move/from16 v17, v0

    move-object/from16 v0, v72

    iget v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mGranularity:I

    move/from16 v18, v0

    # invokes: Landroid/webkitsec/WebViewCore;->nativeCopyMoveSelection(IIIIZZFI)V
    invoke-static/range {v10 .. v18}, Landroid/webkitsec/WebViewCore;->access$11900(Landroid/webkitsec/WebViewCore;IIIIZZFI)V

    .line 2856
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v72

    iget v4, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mController:I

    # invokes: Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2860
    .end local v72    # "params":Landroid/webkitsec/WebViewCore$CopyParams;
    :sswitch_74
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v87, v0

    check-cast v87, Landroid/webkitsec/WebViewCore$CopyParams;

    .line 2861
    .local v87, "selAllValue":Landroid/webkitsec/WebViewCore$CopyParams;
    const/4 v14, 0x0

    .line 2862
    .local v14, "haveselection":I
    move-object/from16 v0, v87

    iget-boolean v2, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mSelectionMove:Z

    if-nez v2, :cond_16

    .line 2863
    const/4 v14, 0x1

    .line 2865
    :cond_16
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v10, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v11

    move-object/from16 v0, v87

    iget v12, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v87

    iget v13, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentY:I

    const/4 v15, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->nativeWebTextSelectionAll(IIIII)V
    invoke-static/range {v10 .. v15}, Landroid/webkitsec/WebViewCore;->access$12000(Landroid/webkitsec/WebViewCore;IIIII)V

    .line 2866
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2870
    .end local v14    # "haveselection":I
    .end local v87    # "selAllValue":Landroid/webkitsec/WebViewCore$CopyParams;
    :sswitch_75
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/webkitsec/WebViewCore$CopyParams;

    .line 2871
    .local v21, "Selvalue":Landroid/webkitsec/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x1

    # setter for: Landroid/webkitsec/WebViewCore;->btextselection:Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$12102(Landroid/webkitsec/WebViewCore;Z)Z

    .line 2872
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v15, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v16

    move-object/from16 v0, v21

    iget v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentX:I

    move/from16 v17, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentY:I

    move/from16 v18, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mZoomScale:F

    move/from16 v19, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mSmartSelection:Z

    move/from16 v20, v0

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSelectClosestWord(IIIFZ)Z
    invoke-static/range {v15 .. v20}, Landroid/webkitsec/WebViewCore;->access$12200(Landroid/webkitsec/WebViewCore;IIIFZ)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2873
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v21

    iget v4, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mController:I

    # invokes: Landroid/webkitsec/WebViewCore;->webkitSelectionControlDraw(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5800(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2875
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x93

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2881
    .end local v21    # "Selvalue":Landroid/webkitsec/WebViewCore$CopyParams;
    :sswitch_76
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x1

    # setter for: Landroid/webkitsec/WebViewCore;->btextselection:Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$12102(Landroid/webkitsec/WebViewCore;Z)Z

    .line 2882
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Landroid/webkitsec/WebViewCore$CopyParams;

    .line 2883
    .local v36, "clearSelection":Landroid/webkitsec/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v36

    iget v5, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentX:I

    move-object/from16 v0, v36

    iget v7, v0, Landroid/webkitsec/WebViewCore$CopyParams;->mContentY:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeClearTextSelectionEx(III)V
    invoke-static {v2, v4, v5, v7}, Landroid/webkitsec/WebViewCore;->access$12300(Landroid/webkitsec/WebViewCore;III)V

    goto/16 :goto_0

    .line 2886
    .end local v36    # "clearSelection":Landroid/webkitsec/WebViewCore$CopyParams;
    :sswitch_77
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # invokes: Landroid/webkitsec/WebViewCore;->webkitSelectionControlBT()V
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$12400(Landroid/webkitsec/WebViewCore;)V

    goto/16 :goto_0

    .line 2892
    :sswitch_78
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->nativeInsertText(ILjava/lang/String;)V
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$12500(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2904
    :sswitch_79
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v50

    .line 2905
    .local v50, "handleId":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg2:I

    move/from16 v0, v50

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSelectText(IIII)V
    invoke-static {v2, v4, v0, v5, v7}, Landroid/webkitsec/WebViewCore;->access$12600(Landroid/webkitsec/WebViewCore;IIII)V

    goto/16 :goto_0

    .line 2910
    .end local v50    # "handleId":I
    :sswitch_7a
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x2

    # setter for: Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$9902(Landroid/webkitsec/WebViewCore;I)I

    .line 2912
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v92, v0

    .line 2913
    .restart local v92    # "x":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v94, v0

    .line 2914
    .restart local v94    # "y":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move/from16 v0, v92

    move/from16 v1, v94

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSelectWordAt(III)Z
    invoke-static {v2, v4, v0, v1}, Landroid/webkitsec/WebViewCore;->access$12700(Landroid/webkitsec/WebViewCore;III)Z

    move-result v2

    if-nez v2, :cond_18

    .line 2915
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x93

    invoke-virtual {v2, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2918
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    const/4 v4, 0x0

    # setter for: Landroid/webkitsec/WebViewCore;->mTextSelectionChangeReason:I
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$9902(Landroid/webkitsec/WebViewCore;I)I

    goto/16 :goto_0

    .line 2923
    .end local v92    # "x":I
    .end local v94    # "y":I
    :sswitch_7b
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSelectAll(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$12800(Landroid/webkitsec/WebViewCore;I)V

    .line 2925
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUpdateTextSelectionStartAndEnd(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5200(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2930
    :sswitch_7c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeUpdateTextSelectionStartAndEnd(I)V
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$5200(Landroid/webkitsec/WebViewCore;I)V

    goto/16 :goto_0

    .line 2934
    :sswitch_7d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v82, v0

    check-cast v82, Landroid/webkitsec/WebViewCore$FindAllRequest;

    .line 2935
    .local v82, "request":Landroid/webkitsec/WebViewCore$FindAllRequest;
    if-eqz v82, :cond_19

    .line 2936
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, v82

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$FindAllRequest;->mSearchText:Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->nativeFindAll(ILjava/lang/String;)I
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$12900(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)I

    move-result v65

    .line 2937
    .local v65, "matchCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    const/4 v5, 0x1

    # invokes: Landroid/webkitsec/WebViewCore;->nativeFindNext(IZ)I
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13000(Landroid/webkitsec/WebViewCore;IZ)I

    move-result v66

    .line 2938
    .local v66, "matchIndex":I
    monitor-enter v82

    .line 2939
    :try_start_1b
    move/from16 v0, v65

    move-object/from16 v1, v82

    iput v0, v1, Landroid/webkitsec/WebViewCore$FindAllRequest;->mMatchCount:I

    .line 2940
    move/from16 v0, v66

    move-object/from16 v1, v82

    iput v0, v1, Landroid/webkitsec/WebViewCore$FindAllRequest;->mMatchIndex:I

    .line 2941
    invoke-virtual/range {v82 .. v82}, Ljava/lang/Object;->notify()V

    .line 2942
    monitor-exit v82
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1b

    .line 2946
    .end local v65    # "matchCount":I
    .end local v66    # "matchIndex":I
    :goto_c
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7e

    move-object/from16 v0, v82

    invoke-static {v2, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2942
    .restart local v65    # "matchCount":I
    .restart local v66    # "matchIndex":I
    :catchall_1b
    move-exception v2

    :try_start_1c
    monitor-exit v82
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1b

    throw v2

    .line 2944
    .end local v65    # "matchCount":I
    .end local v66    # "matchIndex":I
    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    const/4 v5, 0x0

    # invokes: Landroid/webkitsec/WebViewCore;->nativeFindAll(ILjava/lang/String;)I
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$12900(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)I

    goto :goto_c

    .line 2953
    .end local v82    # "request":Landroid/webkitsec/WebViewCore$FindAllRequest;
    :sswitch_7e
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->applyreadability(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$13100(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v75

    .line 2954
    .local v75, "readerData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$9000(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/CallbackProxy;

    move-result-object v2

    move-object/from16 v0, v75

    invoke-virtual {v2, v0}, Landroid/webkitsec/CallbackProxy;->getReaderData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2958
    .end local v75    # "readerData":Ljava/lang/String;
    :sswitch_7f
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Landroid/webkitsec/WebViewCore;->loadinitialJs(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$13200(Landroid/webkitsec/WebViewCore;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v77

    .line 2959
    .local v77, "recogData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mCallbackProxy:Landroid/webkitsec/CallbackProxy;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$9000(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/CallbackProxy;

    move-result-object v2

    move-object/from16 v0, v77

    invoke-virtual {v2, v0}, Landroid/webkitsec/CallbackProxy;->getRecognizeData(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2965
    .end local v77    # "recogData":Ljava/lang/String;
    :sswitch_80
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v82, v0

    check-cast v82, Landroid/webkitsec/WebViewCore$FindAllRequest;

    .line 2966
    .restart local v82    # "request":Landroid/webkitsec/WebViewCore$FindAllRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v5

    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_1a

    const/4 v2, 0x1

    :goto_d
    # invokes: Landroid/webkitsec/WebViewCore;->nativeFindNext(IZ)I
    invoke-static {v4, v5, v2}, Landroid/webkitsec/WebViewCore;->access$13000(Landroid/webkitsec/WebViewCore;IZ)I

    move-result v66

    .line 2967
    .restart local v66    # "matchIndex":I
    monitor-enter v82

    .line 2968
    :try_start_1d
    move/from16 v0, v66

    move-object/from16 v1, v82

    iput v0, v1, Landroid/webkitsec/WebViewCore$FindAllRequest;->mMatchIndex:I

    .line 2969
    monitor-exit v82
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1c

    .line 2970
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mWebViewClassic:Landroid/webkitsec/WebViewClassic;
    invoke-static {v2}, Landroid/webkitsec/WebViewCore;->access$1400(Landroid/webkitsec/WebViewCore;)Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    iget-object v2, v2, Landroid/webkitsec/WebViewClassic;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x7e

    move-object/from16 v0, v82

    invoke-static {v2, v4, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 2966
    .end local v66    # "matchIndex":I
    :cond_1a
    const/4 v2, 0x0

    goto :goto_d

    .line 2969
    .restart local v66    # "matchIndex":I
    :catchall_1c
    move-exception v2

    :try_start_1e
    monitor-exit v82
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1c

    throw v2

    .line 2975
    .end local v66    # "matchIndex":I
    .end local v82    # "request":Landroid/webkitsec/WebViewCore$FindAllRequest;
    :sswitch_81
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSetInitialFocus(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13300(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_0

    .line 2978
    :sswitch_82
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v82, v0

    check-cast v82, Landroid/webkitsec/WebViewCore$SaveViewStateRequest;

    .line 2979
    .local v82, "request":Landroid/webkitsec/WebViewCore$SaveViewStateRequest;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v82

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$SaveViewStateRequest;->mStream:Ljava/io/OutputStream;

    move-object/from16 v0, v82

    iget-object v5, v0, Landroid/webkitsec/WebViewCore$SaveViewStateRequest;->mCallback:Landroid/webkitsec/ValueCallback;

    # invokes: Landroid/webkitsec/WebViewCore;->saveViewState(Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13400(Landroid/webkitsec/WebViewCore;Ljava/io/OutputStream;Landroid/webkitsec/ValueCallback;)V

    goto/16 :goto_0

    .line 2986
    .end local v82    # "request":Landroid/webkitsec/WebViewCore$SaveViewStateRequest;
    :sswitch_83
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeSendColorPickerChoice(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13500(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_0

    .line 2992
    :sswitch_84
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v70, v0

    check-cast v70, Landroid/webkitsec/WebViewCore$NotificationPermissionsData;

    .line 2994
    .local v70, "notifydata":Landroid/webkitsec/WebViewCore$NotificationPermissionsData;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v70

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$NotificationPermissionsData;->mOrigin:Ljava/lang/String;

    move-object/from16 v0, v70

    iget-boolean v5, v0, Landroid/webkitsec/WebViewCore$NotificationPermissionsData;->mAllow:Z

    # invokes: Landroid/webkitsec/WebViewCore;->nativeNotificationPermissionsProvide(Ljava/lang/String;Z)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13600(Landroid/webkitsec/WebViewCore;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 2999
    .end local v70    # "notifydata":Landroid/webkitsec/WebViewCore$NotificationPermissionsData;
    :sswitch_85
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v83, v0

    check-cast v83, Landroid/webkitsec/WebViewCore$InvokeEventparams;

    .line 3001
    .local v83, "responsedata":Landroid/webkitsec/WebViewCore$InvokeEventparams;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v83

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$InvokeEventparams;->mEventName:Ljava/lang/String;

    move-object/from16 v0, v83

    iget v5, v0, Landroid/webkitsec/WebViewCore$InvokeEventparams;->mPointer:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeNotificationResponseback(Ljava/lang/String;I)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13700(Landroid/webkitsec/WebViewCore;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 3005
    .end local v83    # "responsedata":Landroid/webkitsec/WebViewCore$InvokeEventparams;
    :sswitch_86
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v69, v0

    check-cast v69, Landroid/webkitsec/WebViewCore$InvokeNotifyID;

    .line 3007
    .local v69, "notifyID":Landroid/webkitsec/WebViewCore$InvokeNotifyID;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, v69

    iget v4, v0, Landroid/webkitsec/WebViewCore$InvokeNotifyID;->mnotificationID:I

    move-object/from16 v0, v69

    iget v5, v0, Landroid/webkitsec/WebViewCore$InvokeNotifyID;->mcounter:I

    # invokes: Landroid/webkitsec/WebViewCore;->nativeNotificationIDback(II)V
    invoke-static {v2, v4, v5}, Landroid/webkitsec/WebViewCore;->access$13800(Landroid/webkitsec/WebViewCore;II)V

    goto/16 :goto_0

    .line 3013
    .end local v69    # "notifyID":Landroid/webkitsec/WebViewCore$InvokeNotifyID;
    :sswitch_87
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeMoveFocusToNext(I)Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$13900(Landroid/webkitsec/WebViewCore;I)Z

    goto/16 :goto_0

    .line 3016
    :sswitch_88
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v2, v2, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/webkitsec/WebViewCore$EventHub$1;->this$1:Landroid/webkitsec/WebViewCore$EventHub;

    iget-object v4, v4, Landroid/webkitsec/WebViewCore$EventHub;->this$0:Landroid/webkitsec/WebViewCore;

    # getter for: Landroid/webkitsec/WebViewCore;->mNativeClass:I
    invoke-static {v4}, Landroid/webkitsec/WebViewCore;->access$400(Landroid/webkitsec/WebViewCore;)I

    move-result v4

    # invokes: Landroid/webkitsec/WebViewCore;->nativeMoveFocusToPrevious(I)Z
    invoke-static {v2, v4}, Landroid/webkitsec/WebViewCore;->access$14000(Landroid/webkitsec/WebViewCore;I)Z

    goto/16 :goto_0

    .line 1851
    nop

    :pswitch_data_0
    .packed-switch 0x6d
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 1883
    :sswitch_data_0
    .sparse-switch
        0x60 -> :sswitch_0
        0x63 -> :sswitch_3
        0x64 -> :sswitch_5
        0x65 -> :sswitch_8
        0x66 -> :sswitch_9
        0x67 -> :sswitch_a
        0x68 -> :sswitch_b
        0x69 -> :sswitch_d
        0x6a -> :sswitch_14
        0x6b -> :sswitch_e
        0x6c -> :sswitch_15
        0x6f -> :sswitch_4b
        0x70 -> :sswitch_4c
        0x71 -> :sswitch_5a
        0x72 -> :sswitch_4d
        0x73 -> :sswitch_4e
        0x74 -> :sswitch_13
        0x77 -> :sswitch_49
        0x78 -> :sswitch_58
        0x7a -> :sswitch_59
        0x7b -> :sswitch_5c
        0x7c -> :sswitch_5d
        0x7d -> :sswitch_66
        0x7e -> :sswitch_5e
        0x80 -> :sswitch_4f
        0x82 -> :sswitch_1
        0x84 -> :sswitch_6
        0x86 -> :sswitch_65
        0x87 -> :sswitch_56
        0x89 -> :sswitch_57
        0x8a -> :sswitch_52
        0x8b -> :sswitch_7
        0x8e -> :sswitch_51
        0x8f -> :sswitch_16
        0x90 -> :sswitch_17
        0x91 -> :sswitch_18
        0x93 -> :sswitch_63
        0x95 -> :sswitch_53
        0x96 -> :sswitch_50
        0xa0 -> :sswitch_54
        0xa1 -> :sswitch_55
        0xaa -> :sswitch_5f
        0xab -> :sswitch_60
        0xae -> :sswitch_61
        0xaf -> :sswitch_62
        0xb4 -> :sswitch_64
        0xb5 -> :sswitch_67
        0xb6 -> :sswitch_68
        0xb7 -> :sswitch_4a
        0xb8 -> :sswitch_6b
        0xbe -> :sswitch_5b
        0xbf -> :sswitch_6d
        0xc0 -> :sswitch_6e
        0xc2 -> :sswitch_6f
        0xc3 -> :sswitch_69
        0xc4 -> :sswitch_6a
        0xc6 -> :sswitch_70
        0xc8 -> :sswitch_2
        0xc9 -> :sswitch_83
        0xcb -> :sswitch_84
        0xcc -> :sswitch_85
        0xcd -> :sswitch_86
        0xd2 -> :sswitch_72
        0xd3 -> :sswitch_71
        0xd4 -> :sswitch_78
        0xd5 -> :sswitch_79
        0xd6 -> :sswitch_7a
        0xd7 -> :sswitch_7b
        0xd9 -> :sswitch_7e
        0xda -> :sswitch_7f
        0xdd -> :sswitch_7d
        0xde -> :sswitch_80
        0xdf -> :sswitch_c
        0xe0 -> :sswitch_81
        0xe1 -> :sswitch_82
        0xe2 -> :sswitch_6c
        0xf0 -> :sswitch_12
        0xf1 -> :sswitch_11
        0x1fc -> :sswitch_19
        0x1fd -> :sswitch_1a
        0x1fe -> :sswitch_2c
        0x1ff -> :sswitch_1b
        0x200 -> :sswitch_1f
        0x201 -> :sswitch_1c
        0x202 -> :sswitch_1e
        0x203 -> :sswitch_23
        0x204 -> :sswitch_28
        0x205 -> :sswitch_29
        0x206 -> :sswitch_2a
        0x207 -> :sswitch_2b
        0x209 -> :sswitch_22
        0x20b -> :sswitch_30
        0x20c -> :sswitch_31
        0x20d -> :sswitch_24
        0x20f -> :sswitch_25
        0x211 -> :sswitch_27
        0x212 -> :sswitch_20
        0x213 -> :sswitch_21
        0x214 -> :sswitch_33
        0x215 -> :sswitch_34
        0x217 -> :sswitch_36
        0x218 -> :sswitch_37
        0x219 -> :sswitch_32
        0x21a -> :sswitch_35
        0x21b -> :sswitch_2e
        0x21c -> :sswitch_2d
        0x21d -> :sswitch_1d
        0x21e -> :sswitch_39
        0x21f -> :sswitch_40
        0x220 -> :sswitch_3a
        0x221 -> :sswitch_3b
        0x222 -> :sswitch_3c
        0x223 -> :sswitch_38
        0x224 -> :sswitch_41
        0x225 -> :sswitch_3d
        0x226 -> :sswitch_3e
        0x227 -> :sswitch_3f
        0x228 -> :sswitch_2f
        0x229 -> :sswitch_42
        0x22a -> :sswitch_43
        0x22b -> :sswitch_44
        0x22c -> :sswitch_45
        0x22d -> :sswitch_46
        0x22e -> :sswitch_26
        0x22f -> :sswitch_47
        0x230 -> :sswitch_48
        0x258 -> :sswitch_87
        0x259 -> :sswitch_88
        0x25a -> :sswitch_10
        0x25d -> :sswitch_7c
        0x2c6 -> :sswitch_73
        0x2c7 -> :sswitch_76
        0x2c8 -> :sswitch_75
        0x2c9 -> :sswitch_73
        0x2cc -> :sswitch_74
        0x2cd -> :sswitch_77
        0x2ce -> :sswitch_4
        0x2cf -> :sswitch_f
    .end sparse-switch
.end method
