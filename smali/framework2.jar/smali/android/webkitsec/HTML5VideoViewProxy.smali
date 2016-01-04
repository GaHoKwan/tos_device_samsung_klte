.class Landroid/webkitsec/HTML5VideoViewProxy;
.super Landroid/os/Handler;
.source "HTML5VideoViewProxy.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnInfoListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;,
        Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;
    }
.end annotation


# static fields
.field private static final BUFFERING_END:I = 0x6a

.field private static final BUFFERING_START:I = 0x69

.field private static final ENDED:I = 0xc9

.field private static final ENTER_FULLSCREEN:I = 0x6b

.field private static final ERROR:I = 0x67

.field private static final LOAD_DEFAULT_POSTER:I = 0x68

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoViewProxy"

.field private static final PAUSE:I = 0x66

.field private static final PAUSED:I = 0xcb

.field private static final PLAY:I = 0x64

.field private static final POSTER_FETCHED:I = 0xca

.field private static final PREPARED:I = 0xc8

.field private static final RESTORESTATE:I = 0xcd

.field private static final SEEK:I = 0x65

.field private static final SET_VOLUME:I = 0x6c

.field private static final STOPFULLSCREEN:I = 0xcc

.field private static final TIMEUPDATE:I = 0x12c


# instance fields
.field private mDuration:I

.field mNativePointer:I

.field private mPoster:Landroid/graphics/Bitmap;

.field private mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

.field private mSeekPosition:I

.field private mWebCoreHandler:Landroid/os/Handler;

.field private mWebView:Landroid/webkitsec/WebViewClassic;


# direct methods
.method private constructor <init>(Landroid/webkitsec/WebViewClassic;I)V
    .locals 1
    .param p1, "webView"    # Landroid/webkitsec/WebViewClassic;
    .param p2, "nativePtr"    # I

    .prologue
    .line 715
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mDuration:I

    .line 717
    iput-object p1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    .line 721
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0, p0}, Landroid/webkitsec/WebViewClassic;->setHTML5VideoViewProxy(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 723
    iput p2, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mNativePointer:I

    .line 725
    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoViewProxy;->createWebCoreHandler()V

    .line 726
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/SurfaceTexture;IIII)Z
    .locals 1
    .param p0, "x0"    # Landroid/graphics/SurfaceTexture;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 51
    invoke-static {p0, p1, p2, p3, p4}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1002(Landroid/webkitsec/HTML5VideoViewProxy;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mSeekPosition:I

    return p1
.end method

.method static synthetic access$1100(Landroid/webkitsec/HTML5VideoViewProxy;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnEnded(I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkitsec/HTML5VideoViewProxy;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnPaused(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkitsec/HTML5VideoViewProxy;Landroid/graphics/Bitmap;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p1, "x1"    # Landroid/graphics/Bitmap;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkitsec/HTML5VideoViewProxy;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnTimeupdate(II)V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkitsec/HTML5VideoViewProxy;II)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnStopFullscreen(II)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkitsec/HTML5VideoViewProxy;I)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnRestoreState(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/webkitsec/HTML5VideoViewProxy;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/webkitsec/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$802(Landroid/webkitsec/HTML5VideoViewProxy;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p1, "x1"    # I

    .prologue
    .line 51
    iput p1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mDuration:I

    return p1
.end method

.method static synthetic access$900(Landroid/webkitsec/HTML5VideoViewProxy;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkitsec/HTML5VideoViewProxy;->nativeOnPrepared(IIII)V

    return-void
.end method

.method private createWebCoreHandler()V
    .locals 1

    .prologue
    .line 729
    new-instance v0, Landroid/webkitsec/HTML5VideoViewProxy$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoViewProxy$1;-><init>(Landroid/webkitsec/HTML5VideoViewProxy;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    .line 773
    return-void
.end method

.method private doSetPoster(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "poster"    # Landroid/graphics/Bitmap;

    .prologue
    .line 776
    if-nez p1, :cond_0

    .line 784
    :goto_0
    return-void

    .line 780
    :cond_0
    iput-object p1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPoster:Landroid/graphics/Bitmap;

    .line 781
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 782
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 783
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static getInstance(Landroid/webkitsec/WebViewCore;I)Landroid/webkitsec/HTML5VideoViewProxy;
    .locals 2
    .param p0, "webViewCore"    # Landroid/webkitsec/WebViewCore;
    .param p1, "nativePtr"    # I

    .prologue
    .line 911
    new-instance v0, Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {p0}, Landroid/webkitsec/WebViewCore;->getWebViewClassic()Landroid/webkitsec/WebViewClassic;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/webkitsec/HTML5VideoViewProxy;-><init>(Landroid/webkitsec/WebViewClassic;I)V

    return-object v0
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPaused(I)V
.end method

.method private native nativeOnPosterFetched(Landroid/graphics/Bitmap;I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRestoreState(I)V
.end method

.method private native nativeOnStopFullscreen(II)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private static native nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
.end method

.method private sendTimeupdate()V
    .locals 3

    .prologue
    .line 787
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 788
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->getCurrentPosition()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 789
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 790
    return-void
.end method


# virtual methods
.method public dispatchOnEnded()V
    .locals 3

    .prologue
    .line 413
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xc9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 414
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 415
    return-void
.end method

.method public dispatchOnPaused()V
    .locals 3

    .prologue
    .line 418
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcb

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 419
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 420
    return-void
.end method

.method public dispatchOnRestoreState()V
    .locals 3

    .prologue
    .line 429
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcd

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 430
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    return-void
.end method

.method public dispatchOnStopFullScreen(Z)V
    .locals 3
    .param p1, "stillPlaying"    # Z

    .prologue
    .line 423
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 424
    .local v0, "msg":Landroid/os/Message;
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 425
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 426
    return-void

    .line 424
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enterFullScreenVideo(ILjava/lang/String;)V
    .locals 1
    .param p1, "layerId"    # I
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 897
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-static {p1, p2, p0, v0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebViewClassic;)V

    .line 898
    return-void
.end method

.method public enterFullscreenForVideoLayer(Ljava/lang/String;I)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "videoLayerID"    # I

    .prologue
    .line 820
    if-nez p1, :cond_0

    .line 828
    :goto_0
    return-void

    .line 824
    :cond_0
    const/16 v1, 0x6b

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 825
    .local v0, "message":Landroid/os/Message;
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 826
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 827
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public exitFullScreenVideo()V
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-static {p0, v0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->exitFullScreenVideo(Landroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebViewClassic;)V

    .line 902
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method getWebView()Landroid/webkitsec/WebViewClassic;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v9, 0x1

    .line 449
    iget v7, p1, Landroid/os/Message;->what:I

    sparse-switch v7, :sswitch_data_0

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 451
    :sswitch_0
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - PLAY"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 453
    .local v4, "url":Ljava/lang/String;
    iget-object v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    .line 454
    .local v0, "client":Landroid/webkitsec/WebChromeClient;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 455
    .local v5, "videoLayerID":I
    if-eqz v0, :cond_0

    .line 456
    iget v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v4, v7, p0, v0, v5}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->play(Ljava/lang/String;ILandroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebChromeClient;I)V

    goto :goto_0

    .line 461
    .end local v0    # "client":Landroid/webkitsec/WebChromeClient;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "videoLayerID":I
    :sswitch_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 462
    .restart local v4    # "url":Ljava/lang/String;
    iget-object v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    .line 463
    .restart local v0    # "client":Landroid/webkitsec/WebChromeClient;
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 464
    .restart local v5    # "videoLayerID":I
    if-eqz v0, :cond_0

    .line 465
    iget-object v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-static {v5, v4, p0, v7}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->enterFullScreenVideo(ILjava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebViewClassic;)V

    goto :goto_0

    .line 470
    .end local v0    # "client":Landroid/webkitsec/WebChromeClient;
    .end local v4    # "url":Ljava/lang/String;
    .end local v5    # "videoLayerID":I
    :sswitch_2
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - SEEK"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    .line 472
    .local v3, "time":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mSeekPosition:I

    .line 473
    iget v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mSeekPosition:I

    invoke-static {v7, p0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->seek(ILandroid/webkitsec/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 477
    .end local v3    # "time":Ljava/lang/Integer;
    :sswitch_3
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - PAUSE"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-static {p0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->pause(Landroid/webkitsec/HTML5VideoViewProxy;)V

    goto :goto_0

    .line 482
    :sswitch_4
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - ENDED"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-ne v7, v9, :cond_1

    .line 484
    # setter for: Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z
    invoke-static {v9}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->access$102(Z)Z

    .line 485
    :cond_1
    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->end()V

    .line 487
    iget-object v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkitsec/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 488
    iget-object v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    .line 489
    .restart local v0    # "client":Landroid/webkitsec/WebChromeClient;
    if-eqz v0, :cond_0

    .line 490
    invoke-virtual {v0}, Landroid/webkitsec/WebChromeClient;->onHideCustomView()V

    goto/16 :goto_0

    .line 497
    .end local v0    # "client":Landroid/webkitsec/WebChromeClient;
    :sswitch_5
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - ERROR"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    .line 499
    .restart local v0    # "client":Landroid/webkitsec/WebChromeClient;
    if-eqz v0, :cond_0

    .line 500
    invoke-virtual {v0}, Landroid/webkitsec/WebChromeClient;->onHideCustomView()V

    goto/16 :goto_0

    .line 505
    .end local v0    # "client":Landroid/webkitsec/WebChromeClient;
    :sswitch_6
    iget-object v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v7}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    .line 506
    .restart local v0    # "client":Landroid/webkitsec/WebChromeClient;
    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {v0}, Landroid/webkitsec/WebChromeClient;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/webkitsec/HTML5VideoViewProxy;->doSetPoster(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 512
    .end local v0    # "client":Landroid/webkitsec/WebChromeClient;
    :sswitch_7
    invoke-static {p0}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->isPlaying(Landroid/webkitsec/HTML5VideoViewProxy;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 513
    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoViewProxy;->sendTimeupdate()V

    goto/16 :goto_0

    .line 518
    :sswitch_8
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - BUFFERING_START"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    # invokes: Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v9}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->access$200(Z)V

    goto/16 :goto_0

    .line 523
    :sswitch_9
    const-string v7, "HTML5VideoViewProxy"

    const-string v8, "handleMessage - BUFFERING_END"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mDuration:I

    if-nez v7, :cond_2

    .line 528
    iget-object v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v8, 0xc8

    invoke-static {v7, v8}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 529
    .local v2, "msg1":Landroid/os/Message;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 530
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "dur"

    new-instance v8, Ljava/lang/Integer;

    # getter for: Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;
    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/webkitsec/HTML5VideoView;

    sget-object v9, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 531
    const-string/jumbo v7, "width"

    new-instance v8, Ljava/lang/Integer;

    # getter for: Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;
    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/webkitsec/HTML5VideoView;

    sget-object v9, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    const-string v7, "height"

    new-instance v8, Ljava/lang/Integer;

    # getter for: Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkitsec/HTML5VideoView;
    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->access$300()Landroid/webkitsec/HTML5VideoView;

    sget-object v9, Landroid/webkitsec/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v9}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 533
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 534
    iget-object v7, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v7, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 538
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "msg1":Landroid/os/Message;
    :cond_2
    const/4 v7, 0x0

    # invokes: Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V
    invoke-static {v7}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->access$200(Z)V

    goto/16 :goto_0

    .line 543
    :sswitch_a
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 544
    .local v6, "vol":F
    invoke-static {v6}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->setVolume(F)V

    goto/16 :goto_0

    .line 449
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_5
        0x68 -> :sswitch_6
        0x69 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6b -> :sswitch_1
        0x6c -> :sswitch_a
        0xc9 -> :sswitch_4
        0x12c -> :sswitch_7
    .end sparse-switch
.end method

.method public isFullScreenMode()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 941
    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->getVideoView()Landroid/webkitsec/HTML5VideoView;

    move-result-object v0

    .line 942
    .local v0, "videoView":Landroid/webkitsec/HTML5VideoView;
    if-nez v0, :cond_1

    .line 945
    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoView;->isFullScreenMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoView;->fullScreenExited()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadPoster(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 865
    if-nez p1, :cond_0

    .line 866
    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 867
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 877
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 871
    :cond_0
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v1, :cond_1

    .line 872
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 875
    :cond_1
    new-instance v1, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    invoke-direct {v1, p1, p0}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;-><init>(Ljava/lang/String;Landroid/webkitsec/HTML5VideoViewProxy;)V

    iput-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    .line 876
    iget-object v1, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v1}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->start()V

    goto :goto_0
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 394
    const/16 v0, 0xc9

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 400
    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 401
    const/4 v0, 0x0

    return v0
.end method

.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 442
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebView:Landroid/webkitsec/WebViewClassic;

    invoke-virtual {v0}, Landroid/webkitsec/WebViewClassic;->invalidate()V

    .line 443
    return-void
.end method

.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 931
    const/16 v0, 0x2bd

    if-ne p2, v0, :cond_1

    .line 932
    const/16 v0, 0x69

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 936
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 933
    :cond_1
    const/16 v0, 0x2be

    if-ne p2, v0, :cond_0

    .line 934
    const/16 v0, 0x6a

    invoke-virtual {p0, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 5
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 377
    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->onPrepared()V

    .line 378
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    const/16 v3, 0xc8

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 379
    .local v1, "msg":Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 380
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "dur"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string/jumbo v2, "width"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v2, "height"

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 384
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 385
    return-void
.end method

.method public onStopFullScreen(Z)V
    .locals 0
    .param p1, "isPlaying"    # Z

    .prologue
    .line 408
    invoke-static {p1}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->onStopFullScreen(Z)V

    .line 409
    return-void
.end method

.method public onTimeupdate()V
    .locals 1

    .prologue
    .line 434
    const/16 v0, 0x12c

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 844
    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 845
    .local v0, "message":Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 846
    return-void
.end method

.method public pauseAndDispatch()V
    .locals 0

    .prologue
    .line 893
    invoke-static {}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->pauseAndDispatch()V

    .line 894
    return-void
.end method

.method public play(Ljava/lang/String;II)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "position"    # I
    .param p3, "videoLayerID"    # I

    .prologue
    .line 802
    if-nez p1, :cond_0

    .line 813
    :goto_0
    return-void

    .line 806
    :cond_0
    if-lez p2, :cond_1

    .line 807
    invoke-virtual {p0, p2}, Landroid/webkitsec/HTML5VideoViewProxy;->seek(I)V

    .line 809
    :cond_1
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 810
    .local v0, "message":Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 811
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 812
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public seek(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 835
    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 836
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 837
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 838
    return-void
.end method

.method public setBaseLayer(I)V
    .locals 0
    .param p1, "layer"    # I

    .prologue
    .line 889
    invoke-static {p1}, Landroid/webkitsec/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 890
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .param p1, "volume"    # F

    .prologue
    .line 881
    const/16 v1, 0x6c

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 882
    .local v0, "message":Landroid/os/Message;
    new-instance v1, Ljava/lang/Float;

    invoke-direct {v1, p1}, Ljava/lang/Float;-><init>(F)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 883
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 884
    return-void
.end method

.method public teardown()V
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mPosterDownloader:Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;

    invoke-virtual {v0}, Landroid/webkitsec/HTML5VideoViewProxy$PosterDownloader;->cancelAndReleaseQueue()V

    .line 857
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/HTML5VideoViewProxy;->mNativePointer:I

    .line 858
    return-void
.end method
