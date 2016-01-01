.class Landroid/webkitsec/HTML5Audio;
.super Landroid/os/Handler;
.source "HTML5Audio.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;,
        Landroid/webkitsec/HTML5Audio$TimeupdateTask;
    }
.end annotation


# static fields
.field private static COMPLETE:I = 0x0

.field private static final COOKIE:Ljava/lang/String; = "Cookie"

.field private static ERROR:I = 0x0

.field private static final HIDE_URL_LOGS:Ljava/lang/String; = "x-hide-urls-from-log"

.field private static IDLE:I = 0x0

.field private static INITIALIZED:I = 0x0

.field private static final LOGTAG:Ljava/lang/String; = "HTML5Audio"

.field private static PAUSED:I = 0x0

.field private static PAUSED_TRANSITORILY:I = 0x0

.field private static PREPARED:I = 0x0

.field private static STARTED:I = 0x0

.field private static STOPPED:I = 0x0

.field private static final TIMEUPDATE:I = 0x64

.field private static final TIMEUPDATE_PERIOD:I = 0xfa


# instance fields
.field private mAskToPlay:Z

.field private mContext:Landroid/content/Context;

.field private mIsPrivateBrowsingEnabledGetter:Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;

.field private mIsRegisteredListener:Z

.field private mLoopEnabled:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mMotionListener:Landroid/hardware/motion/MRListener;

.field private mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private mNativePointer:I

.field private mProcessingOnEnd:Z

.field private mState:I

.field private mTimer:Ljava/util/Timer;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Landroid/webkitsec/HTML5Audio;->IDLE:I

    const/4 v0, 0x1

    sput v0, Landroid/webkitsec/HTML5Audio;->INITIALIZED:I

    const/4 v0, 0x2

    sput v0, Landroid/webkitsec/HTML5Audio;->PREPARED:I

    const/4 v0, 0x4

    sput v0, Landroid/webkitsec/HTML5Audio;->STARTED:I

    const/4 v0, 0x5

    sput v0, Landroid/webkitsec/HTML5Audio;->COMPLETE:I

    const/4 v0, 0x6

    sput v0, Landroid/webkitsec/HTML5Audio;->PAUSED:I

    const/4 v0, 0x7

    sput v0, Landroid/webkitsec/HTML5Audio;->PAUSED_TRANSITORILY:I

    const/4 v0, -0x2

    sput v0, Landroid/webkitsec/HTML5Audio;->STOPPED:I

    const/4 v0, -0x1

    sput v0, Landroid/webkitsec/HTML5Audio;->ERROR:I

    return-void
.end method

.method public constructor <init>(Landroid/webkitsec/WebViewCore;I)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    sget v0, Landroid/webkitsec/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    iput-boolean v1, p0, Landroid/webkitsec/HTML5Audio;->mAskToPlay:Z

    iput-boolean v1, p0, Landroid/webkitsec/HTML5Audio;->mLoopEnabled:Z

    iput-boolean v1, p0, Landroid/webkitsec/HTML5Audio;->mProcessingOnEnd:Z

    iput-boolean v1, p0, Landroid/webkitsec/HTML5Audio;->mIsRegisteredListener:Z

    new-instance v0, Landroid/webkitsec/HTML5Audio$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/HTML5Audio$1;-><init>(Landroid/webkitsec/HTML5Audio;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMotionListener:Landroid/hardware/motion/MRListener;

    iput p2, p0, Landroid/webkitsec/HTML5Audio;->mNativePointer:I

    invoke-direct {p0}, Landroid/webkitsec/HTML5Audio;->resetMediaPlayer()V

    invoke-virtual {p1}, Landroid/webkitsec/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/webkitsec/HTML5Audio;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    invoke-virtual {p1}, Landroid/webkitsec/WebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkitsec/WebViewCore;->getWebViewClassic()Landroid/webkitsec/WebViewClassic;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;-><init>(Landroid/webkitsec/HTML5Audio;Landroid/os/Looper;Landroid/webkitsec/WebViewClassic;)V

    iput-object v0, p0, Landroid/webkitsec/HTML5Audio;->mIsPrivateBrowsingEnabledGetter:Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/HTML5Audio;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkitsec/HTML5Audio;->pause()V

    return-void
.end method

.method private getMaxTimeSeekable()F
    .locals 2

    iget v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v1, Landroid/webkitsec/HTML5Audio;->PREPARED:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeOnBuffering(II)V
.end method

.method private native nativeOnEnded(I)V
.end method

.method private native nativeOnPrepared(IIII)V
.end method

.method private native nativeOnRequestPlay(I)V
.end method

.method private native nativeOnTimeupdate(II)V
.end method

.method private pause()V
    .locals 1

    sget v0, Landroid/webkitsec/HTML5Audio;->PAUSED:I

    invoke-direct {p0, v0}, Landroid/webkitsec/HTML5Audio;->pause(I)V

    return-void
.end method

.method private pause(I)V
    .locals 2

    iget v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v1, Landroid/webkitsec/HTML5Audio;->STARTED:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    :cond_0
    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput p1, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Landroid/webkitsec/HTML5Audio;->mIsRegisteredListener:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkitsec/HTML5Audio;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkitsec/HTML5Audio;->mIsRegisteredListener:Z

    :cond_2
    return-void
.end method

.method private play()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Landroid/webkitsec/HTML5Audio;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HTML5Audio;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "motion_recognition"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/motion/MotionRecognitionManager;

    iput-object v2, p0, Landroid/webkitsec/HTML5Audio;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    :cond_0
    iget-object v2, p0, Landroid/webkitsec/HTML5Audio;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v3, p0, Landroid/webkitsec/HTML5Audio;->mMotionListener:Landroid/hardware/motion/MRListener;

    invoke-virtual {v2, v3, v4}, Landroid/hardware/motion/MotionRecognitionManager;->registerListenerEvent(Landroid/hardware/motion/MRListener;I)V

    iput-boolean v4, p0, Landroid/webkitsec/HTML5Audio;->mIsRegisteredListener:Z

    iget v2, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v3, Landroid/webkitsec/HTML5Audio;->COMPLETE:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Landroid/webkitsec/HTML5Audio;->mLoopEnabled:Z

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    sget v2, Landroid/webkitsec/HTML5Audio;->STARTED:I

    iput v2, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v2, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v3, Landroid/webkitsec/HTML5Audio;->STOPPED:I

    if-lt v2, v3, :cond_3

    iget v2, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v3, Landroid/webkitsec/HTML5Audio;->PREPARED:I

    if-ge v2, v3, :cond_3

    iget-object v2, p0, Landroid/webkitsec/HTML5Audio;->mUrl:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-direct {p0}, Landroid/webkitsec/HTML5Audio;->resetMediaPlayer()V

    iget-object v2, p0, Landroid/webkitsec/HTML5Audio;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/webkitsec/HTML5Audio;->setDataSource(Ljava/lang/String;)V

    iput-boolean v4, p0, Landroid/webkitsec/HTML5Audio;->mAskToPlay:Z

    :cond_3
    iget v2, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v3, Landroid/webkitsec/HTML5Audio;->PREPARED:I

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Landroid/webkitsec/HTML5Audio;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v1

    if-ne v1, v4, :cond_4

    iget-object v2, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    sget v2, Landroid/webkitsec/HTML5Audio;->STARTED:I

    iput v2, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    goto :goto_0

    :cond_4
    const-string v2, "HTML5Audio"

    const-string/jumbo v3, "play() - AUDIOFOCUS_REQUEST_GRANTED is FALSE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resetMediaPlayer()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    :goto_0
    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/webkitsec/HTML5Audio;->mTimer:Ljava/util/Timer;

    sget v0, Landroid/webkitsec/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    return-void

    :cond_1
    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    goto :goto_0
.end method

.method private seek(I)V
    .locals 3

    const/4 v2, 0x1

    iget-boolean v0, p0, Landroid/webkitsec/HTML5Audio;->mProcessingOnEnd:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v1, Landroid/webkitsec/HTML5Audio;->COMPLETE:I

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    iput-boolean v2, p0, Landroid/webkitsec/HTML5Audio;->mLoopEnabled:Z

    :cond_0
    iget v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v1, Landroid/webkitsec/HTML5Audio;->PREPARED:I

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1
    return-void
.end method

.method private setDataSource(Ljava/lang/String;)V
    .locals 8

    const/16 v7, 0x80

    iput-object p1, p0, Landroid/webkitsec/HTML5Audio;->mUrl:Ljava/lang/String;

    :try_start_0
    iget v4, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v5, Landroid/webkitsec/HTML5Audio;->IDLE:I

    if-eq v4, v5, :cond_0

    invoke-direct {p0}, Landroid/webkitsec/HTML5Audio;->resetMediaPlayer()V

    :cond_0
    invoke-static {}, Landroid/webkitsec/CookieManager;->getInstance()Landroid/webkitsec/CookieManager;

    move-result-object v4

    iget-object v5, p0, Landroid/webkitsec/HTML5Audio;->mIsPrivateBrowsingEnabledGetter:Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    invoke-virtual {v5}, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;->get()Z

    move-result v5

    invoke-virtual {v4, p1, v5}, Landroid/webkitsec/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-eqz v0, :cond_1

    const-string v4, "Cookie"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v4, p0, Landroid/webkitsec/HTML5Audio;->mIsPrivateBrowsingEnabledGetter:Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;

    invoke-virtual {v4}, Landroid/webkitsec/HTML5Audio$IsPrivateBrowsingEnabledGetter;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "x-hide-urls-from-log"

    const-string/jumbo v5, "true"

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v4, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Landroid/webkitsec/HTML5Audio;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    sget v4, Landroid/webkitsec/HTML5Audio;->INITIALIZED:I

    iput v4, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    iget-object v4, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p1, v5, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v4, "HTML5Audio"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t load the resource: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " exc: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/webkitsec/HTML5Audio;->resetMediaPlayer()V

    goto :goto_0

    :cond_3
    move-object v1, p1

    goto :goto_1
.end method

.method private setVolume(F)V
    .locals 2

    iget v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v1, Landroid/webkitsec/HTML5Audio;->PREPARED:I

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :cond_0
    return-void
.end method

.method private teardown()V
    .locals 1

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget v0, Landroid/webkitsec/HTML5Audio;->ERROR:I

    iput v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/HTML5Audio;->mNativePointer:I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    :try_start_0
    iget v2, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v3, Landroid/webkitsec/HTML5Audio;->ERROR:I

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    iget v2, p0, Landroid/webkitsec/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v1, v2}, Landroid/webkitsec/HTML5Audio;->nativeOnTimeupdate(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget v2, Landroid/webkitsec/HTML5Audio;->ERROR:I

    iput v2, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

.method public onAudioFocusChange(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/webkitsec/HTML5Audio;->resetMediaPlayer()V

    goto :goto_0

    :cond_1
    iget v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v1, Landroid/webkitsec/HTML5Audio;->PAUSED_TRANSITORILY:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    sget v0, Landroid/webkitsec/HTML5Audio;->STARTED:I

    iput v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    goto :goto_0

    :pswitch_2
    iget v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v1, Landroid/webkitsec/HTML5Audio;->ERROR:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    sget v0, Landroid/webkitsec/HTML5Audio;->STOPPED:I

    iput v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    goto :goto_0

    :pswitch_3
    iget v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    sget v1, Landroid/webkitsec/HTML5Audio;->ERROR:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/webkitsec/HTML5Audio;->PAUSED_TRANSITORILY:I

    invoke-direct {p0, v0}, Landroid/webkitsec/HTML5Audio;->pause(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget v0, p0, Landroid/webkitsec/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, p2, v0}, Landroid/webkitsec/HTML5Audio;->nativeOnBuffering(II)V

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget v0, Landroid/webkitsec/HTML5Audio;->COMPLETE:I

    iput v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    iput-boolean v2, p0, Landroid/webkitsec/HTML5Audio;->mProcessingOnEnd:Z

    iget v0, p0, Landroid/webkitsec/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkitsec/HTML5Audio;->nativeOnEnded(I)V

    iput-boolean v1, p0, Landroid/webkitsec/HTML5Audio;->mProcessingOnEnd:Z

    iget-boolean v0, p0, Landroid/webkitsec/HTML5Audio;->mLoopEnabled:Z

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/webkitsec/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0}, Landroid/webkitsec/HTML5Audio;->nativeOnRequestPlay(I)V

    iput-boolean v1, p0, Landroid/webkitsec/HTML5Audio;->mLoopEnabled:Z

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 1

    sget v0, Landroid/webkitsec/HTML5Audio;->ERROR:I

    iput v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    invoke-direct {p0}, Landroid/webkitsec/HTML5Audio;->resetMediaPlayer()V

    sget v0, Landroid/webkitsec/HTML5Audio;->IDLE:I

    iput v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    const/4 v0, 0x0

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    const-wide/16 v2, 0xfa

    const/4 v6, 0x0

    sget v0, Landroid/webkitsec/HTML5Audio;->PREPARED:I

    iput v0, p0, Landroid/webkitsec/HTML5Audio;->mState:I

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkitsec/HTML5Audio;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkitsec/HTML5Audio$TimeupdateTask;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Landroid/webkitsec/HTML5Audio$TimeupdateTask;-><init>(Landroid/webkitsec/HTML5Audio;Landroid/webkitsec/HTML5Audio$1;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    iget v1, p0, Landroid/webkitsec/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0, v6, v6, v1}, Landroid/webkitsec/HTML5Audio;->nativeOnPrepared(IIII)V

    iget-boolean v0, p0, Landroid/webkitsec/HTML5Audio;->mAskToPlay:Z

    if-eqz v0, :cond_1

    iput-boolean v6, p0, Landroid/webkitsec/HTML5Audio;->mAskToPlay:Z

    invoke-direct {p0}, Landroid/webkitsec/HTML5Audio;->play()V

    :cond_1
    return-void
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 2

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    iget v1, p0, Landroid/webkitsec/HTML5Audio;->mNativePointer:I

    invoke-direct {p0, v0, v1}, Landroid/webkitsec/HTML5Audio;->nativeOnTimeupdate(II)V

    return-void
.end method
