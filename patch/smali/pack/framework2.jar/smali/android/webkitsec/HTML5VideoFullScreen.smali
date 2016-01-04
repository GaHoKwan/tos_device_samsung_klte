.class public Landroid/webkitsec/HTML5VideoFullScreen;
.super Landroid/webkitsec/HTML5VideoView;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;,
        Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;
    }
.end annotation


# static fields
.field static final FULLSCREEN_OFF:I = 0x0

.field static final FULLSCREEN_SURFACECREATED:I = 0x2

.field static final FULLSCREEN_SURFACECREATING:I = 0x1

.field private static final LOGTAG:Ljava/lang/String; = "HTML5VideoFullScreen"

.field private static final SHOW_CONTROL:I = 0x1

.field private static mLayout:Landroid/widget/FrameLayout;

.field private static mProgressView:Landroid/view/View;


# instance fields
.field private mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final mCallback:Landroid/webkitsec/WebChromeClient$CustomViewCallback;

.field private mCanPause:Z

.field private mCanSeekBack:Z

.field private mCanSeekForward:Z

.field private mCurrentBufferPercentage:I

.field private mFullScreenMode:I

.field private mHandler:Landroid/os/Handler;

.field private mIsMiniMode:Z

.field private mMediaController:Landroid/widget/MediaController;

.field private mPlayingWhenDestroyed:Z

.field mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVideoHeight:I

.field private mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

.field private mVideoWidth:I


# direct methods
.method constructor <init>(Landroid/content/Context;IIZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "videoLayerId"    # I
    .param p3, "position"    # I
    .param p4, "skipPrepare"    # Z

    .prologue
    const/4 v1, 0x0

    .line 179
    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoView;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 101
    iput-boolean v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayingWhenDestroyed:Z

    .line 105
    iput-boolean v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    .line 109
    new-instance v0, Landroid/webkitsec/HTML5VideoFullScreen$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoFullScreen$1;-><init>(Landroid/webkitsec/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    .line 122
    new-instance v0, Landroid/webkitsec/HTML5VideoFullScreen$2;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoFullScreen$2;-><init>(Landroid/webkitsec/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 163
    new-instance v0, Landroid/webkitsec/HTML5VideoFullScreen$3;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoFullScreen$3;-><init>(Landroid/webkitsec/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 308
    new-instance v0, Landroid/webkitsec/HTML5VideoFullScreen$4;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoFullScreen$4;-><init>(Landroid/webkitsec/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCallback:Landroid/webkitsec/WebChromeClient$CustomViewCallback;

    .line 436
    new-instance v0, Landroid/webkitsec/HTML5VideoFullScreen$5;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5VideoFullScreen$5;-><init>(Landroid/webkitsec/HTML5VideoFullScreen;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 180
    new-instance v0, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-direct {v0, p0, p1}, Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;-><init>(Landroid/webkitsec/HTML5VideoFullScreen;Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    .line 181
    iput v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mFullScreenMode:I

    .line 182
    iput v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I

    .line 183
    iput v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I

    .line 184
    invoke-virtual {p0, p2, p3, p4}, Landroid/webkitsec/HTML5VideoView;->init(IIZ)V

    .line 185
    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/HTML5VideoFullScreen;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;

    .prologue
    .line 41
    iget v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I

    return v0
.end method

.method static synthetic access$002(Landroid/webkitsec/HTML5VideoFullScreen;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I

    return p1
.end method

.method static synthetic access$100(Landroid/webkitsec/HTML5VideoFullScreen;)I
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;

    .prologue
    .line 41
    iget v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I

    return v0
.end method

.method static synthetic access$1000()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Landroid/widget/FrameLayout;

    .prologue
    .line 41
    sput-object p0, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$102(Landroid/webkitsec/HTML5VideoFullScreen;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I

    return p1
.end method

.method static synthetic access$1100()Landroid/view/View;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Landroid/view/View;

    .prologue
    .line 41
    sput-object p0, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1202(Landroid/webkitsec/HTML5VideoFullScreen;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    return p1
.end method

.method static synthetic access$200(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/widget/MediaController;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    return-object v0
.end method

.method static synthetic access$202(Landroid/webkitsec/HTML5VideoFullScreen;Landroid/widget/MediaController;)Landroid/widget/MediaController;
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1, "x1"    # Landroid/widget/MediaController;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    return-object p1
.end method

.method static synthetic access$300(Landroid/webkitsec/HTML5VideoFullScreen;)Z
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;

    .prologue
    .line 41
    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    return v0
.end method

.method static synthetic access$402(Landroid/webkitsec/HTML5VideoFullScreen;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1, "x1"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$502(Landroid/webkitsec/HTML5VideoFullScreen;I)I
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mFullScreenMode:I

    return p1
.end method

.method static synthetic access$600(Landroid/webkitsec/HTML5VideoFullScreen;)V
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->prepareForFullScreen()V

    return-void
.end method

.method static synthetic access$702(Landroid/webkitsec/HTML5VideoFullScreen;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayingWhenDestroyed:Z

    return p1
.end method

.method static synthetic access$800(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;

    .prologue
    .line 41
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method static synthetic access$900(Landroid/webkitsec/HTML5VideoFullScreen;)Landroid/view/SurfaceView;
    .locals 1
    .param p0, "x0"    # Landroid/webkitsec/HTML5VideoFullScreen;

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v0

    return-object v0
.end method

.method private attachMediaController()V
    .locals 2

    .prologue
    .line 193
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 195
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 197
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 199
    :cond_0
    return-void
.end method

.method private getSurfaceView()Landroid/view/SurfaceView;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    return-object v0
.end method

.method private prepareForFullScreen()V
    .locals 2

    .prologue
    .line 207
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 208
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 209
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 210
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkitsec/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 212
    :cond_0
    return-void
.end method

.method private setMediaController(Landroid/widget/MediaController;)V
    .locals 0
    .param p1, "m"    # Landroid/widget/MediaController;

    .prologue
    .line 188
    iput-object p1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    .line 189
    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->attachMediaController()V

    .line 190
    return-void
.end method

.method private toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 219
    :cond_1
    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoView;->mPlayerBuffering:Z

    if-nez v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method

.method private togglePlayPause()V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkitsec/HTML5VideoView;->pauseAndDispatch(Landroid/webkitsec/HTML5VideoViewProxy;)V

    .line 229
    :goto_0
    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->start()V

    goto :goto_0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    .prologue
    .line 399
    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 404
    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanSeekForward:Z

    return v0
.end method

.method public decideDisplayMode()V
    .locals 2

    .prologue
    .line 203
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 204
    return-void
.end method

.method public enterFullScreenVideoState(ILandroid/webkitsec/HTML5VideoViewProxy;Landroid/webkitsec/WebViewClassic;)V
    .locals 8
    .param p1, "layerId"    # I
    .param p2, "proxy"    # Landroid/webkitsec/HTML5VideoViewProxy;
    .param p3, "webView"    # Landroid/webkitsec/WebViewClassic;

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 337
    iput v4, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mFullScreenMode:I

    .line 338
    iput v5, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    .line 339
    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 340
    iput-object p2, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    .line 342
    const-string v2, "HTML5VideoFullScreen"

    const-string v3, "enterFullScreenVideoState called."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual {p3}, Landroid/webkitsec/WebViewClassic;->getSettings()Landroid/webkitsec/WebSettingsClassic;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/WebSettingsClassic;->getPopUpBrowserState()Z

    move-result v2

    iput-boolean v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    .line 346
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 347
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 348
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 349
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 350
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 353
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    .line 354
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x11

    invoke-direct {v1, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 360
    .local v1, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p3}, Landroid/webkitsec/WebViewClassic;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "sec_container_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 361
    iget-object v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v2, v4}, Landroid/view/SurfaceView;->setSecure(Z)V

    .line 365
    :cond_0
    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 366
    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 367
    invoke-virtual {p3}, Landroid/webkitsec/WebViewClassic;->getWebChromeClient()Landroid/webkitsec/WebChromeClient;

    move-result-object v0

    .line 368
    .local v0, "client":Landroid/webkitsec/WebChromeClient;
    if-eqz v0, :cond_3

    .line 369
    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCallback:Landroid/webkitsec/WebChromeClient$CustomViewCallback;

    invoke-virtual {v0, v2, v3}, Landroid/webkitsec/WebChromeClient;->onShowCustomView(Landroid/view/View;Landroid/webkitsec/WebChromeClient$CustomViewCallback;)V

    .line 372
    invoke-virtual {p3}, Landroid/webkitsec/WebViewClassic;->getViewManager()Landroid/webkitsec/ViewManager;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 373
    invoke-virtual {p3}, Landroid/webkitsec/WebViewClassic;->getViewManager()Landroid/webkitsec/ViewManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkitsec/ViewManager;->hideAll()V

    .line 375
    :cond_1
    invoke-virtual {v0}, Landroid/webkitsec/WebChromeClient;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v2

    sput-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    .line 376
    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 378
    iget-boolean v2, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-eqz v2, :cond_2

    .line 379
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .end local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 381
    .restart local v1    # "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    :cond_2
    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    sget-object v3, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    sget-object v2, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 385
    :cond_3
    return-void
.end method

.method public fullScreenExited()Z
    .locals 1

    .prologue
    .line 305
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 422
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 423
    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    goto :goto_0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 414
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 415
    iget v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCurrentBufferPercentage:I

    .line 417
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 393
    const/4 v0, 0x1

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 9
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 234
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->fullScreenExited()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    :cond_0
    :goto_0
    return-void

    .line 237
    :cond_1
    invoke-super {p0, p1}, Landroid/webkitsec/HTML5VideoView;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 239
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 241
    invoke-virtual {p1, v4, v4}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 243
    .local v0, "data":Landroid/media/Metadata;
    if-eqz v0, :cond_c

    .line 244
    invoke-virtual {v0, v5}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v5}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_2
    move v3, v5

    :goto_1
    iput-boolean v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanPause:Z

    .line 246
    invoke-virtual {v0, v8}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v8}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_a

    :cond_3
    move v3, v5

    :goto_2
    iput-boolean v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanSeekBack:Z

    .line 248
    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_4
    move v3, v5

    :goto_3
    iput-boolean v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanSeekForward:Z

    .line 255
    :goto_4
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_5

    .line 256
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v3}, Landroid/widget/MediaController;->hide()V

    .line 258
    :cond_5
    const/4 v1, 0x0

    .line 259
    .local v1, "mc":Landroid/widget/MediaController;
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    if-nez v3, :cond_d

    .line 261
    new-instance v1, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;

    .end local v1    # "mc":Landroid/widget/MediaController;
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {v1, v3, v6, v4}, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .line 267
    .restart local v1    # "mc":Landroid/widget/MediaController;
    :goto_5
    sget-object v3, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 268
    invoke-direct {p0, v1}, Landroid/webkitsec/HTML5VideoFullScreen;->setMediaController(Landroid/widget/MediaController;)V

    .line 271
    sget-object v3, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v3, :cond_6

    .line 272
    sget-object v3, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 275
    :cond_6
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I

    .line 276
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v3

    iput v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I

    .line 278
    const-string v3, "HTML5VideoFullScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onPrepared. duration = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoSurfaceView:Landroid/webkitsec/HTML5VideoFullScreen$VideoSurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget v6, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoWidth:I

    iget v7, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mVideoHeight:I

    invoke-interface {v3, v6, v7}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 282
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkitsec/HTML5VideoViewProxy;->dispatchOnRestoreState()V

    .line 284
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->getStartWhenPrepared()Z

    move-result v3

    if-nez v3, :cond_7

    iget-boolean v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-eqz v3, :cond_8

    .line 285
    :cond_7
    invoke-virtual {p0}, Landroid/webkitsec/HTML5VideoView;->requestAudioFocus()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 286
    sget v3, Landroid/webkitsec/HTML5VideoFullScreen;->mCurrentState:I

    if-ne v3, v8, :cond_8

    .line 287
    sget-object v3, Landroid/webkitsec/HTML5VideoFullScreen;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 289
    invoke-virtual {p0, v4}, Landroid/webkitsec/HTML5VideoView;->setStartWhenPrepared(Z)V

    .line 297
    :cond_8
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-nez v3, :cond_0

    .line 298
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v3, v5}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 299
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 300
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v1    # "mc":Landroid/widget/MediaController;
    .end local v2    # "msg":Landroid/os/Message;
    :cond_9
    move v3, v4

    .line 244
    goto/16 :goto_1

    :cond_a
    move v3, v4

    .line 246
    goto/16 :goto_2

    :cond_b
    move v3, v4

    .line 248
    goto/16 :goto_3

    .line 251
    :cond_c
    iput-boolean v5, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanSeekForward:Z

    iput-boolean v5, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanSeekBack:Z

    iput-boolean v5, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mCanPause:Z

    goto/16 :goto_4

    .line 265
    .restart local v1    # "mc":Landroid/widget/MediaController;
    :cond_d
    new-instance v1, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;

    .end local v1    # "mc":Landroid/widget/MediaController;
    iget-object v3, p0, Landroid/webkitsec/HTML5VideoView;->mProxy:Landroid/webkitsec/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkitsec/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v6, Landroid/webkitsec/HTML5VideoFullScreen;->mLayout:Landroid/widget/FrameLayout;

    invoke-direct {v1, v3, v6, v5}, Landroid/webkitsec/HTML5VideoFullScreen$FullScreenMediaController;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    .restart local v1    # "mc":Landroid/widget/MediaController;
    goto/16 :goto_5
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 446
    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-eqz v0, :cond_1

    .line 447
    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->togglePlayPause()V

    .line 453
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 449
    :cond_1
    iget v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mFullScreenMode:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 451
    invoke-direct {p0}, Landroid/webkitsec/HTML5VideoFullScreen;->toggleMediaControlsVisiblity()V

    goto :goto_0
.end method

.method public showControllerInFullScreen()V
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mIsMiniMode:Z

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 433
    :cond_0
    return-void
.end method

.method protected switchProgressView(Z)V
    .locals 2
    .param p1, "playerBuffering"    # Z

    .prologue
    .line 458
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 459
    if-eqz p1, :cond_1

    .line 460
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Landroid/webkitsec/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 465
    :cond_1
    sget-object v0, Landroid/webkitsec/HTML5VideoFullScreen;->mProgressView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
