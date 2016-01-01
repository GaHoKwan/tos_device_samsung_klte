.class public Landroid/media/RemoteControlClient;
.super Ljava/lang/Object;
.source "RemoteControlClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/RemoteControlClient$EventHandler;,
        Landroid/media/RemoteControlClient$DisplayInfoForClient;,
        Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;,
        Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;,
        Landroid/media/RemoteControlClient$OnCommandSetListener;,
        Landroid/media/RemoteControlClient$OnMetadataUpdateListener;,
        Landroid/media/RemoteControlClient$MetadataEditor;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final DEFAULT_PLAYBACK_VOLUME:I = 0xf

.field public static final DEFAULT_PLAYBACK_VOLUME_HANDLING:I = 0x1

.field public static final FLAGS_KEY_MEDIA_NONE:I = 0x0

.field public static final FLAG_INFORMATION_REQUEST_ALBUM_ART:I = 0x8

.field public static final FLAG_INFORMATION_REQUEST_KEY_MEDIA:I = 0x2

.field public static final FLAG_INFORMATION_REQUEST_METADATA:I = 0x1

.field public static final FLAG_INFORMATION_REQUEST_PLAYSTATE:I = 0x4

.field public static final FLAG_KEY_MEDIA_FAST_FORWARD:I = 0x40

.field public static final FLAG_KEY_MEDIA_NEXT:I = 0x80

.field public static final FLAG_KEY_MEDIA_PAUSE:I = 0x10

.field public static final FLAG_KEY_MEDIA_PLAY:I = 0x4

.field public static final FLAG_KEY_MEDIA_PLAY_PAUSE:I = 0x8

.field public static final FLAG_KEY_MEDIA_POSITION_UPDATE:I = 0x100

.field public static final FLAG_KEY_MEDIA_PREVIOUS:I = 0x1

.field public static final FLAG_KEY_MEDIA_RATING:I = 0x200

.field public static final FLAG_KEY_MEDIA_REWIND:I = 0x2

.field public static final FLAG_KEY_MEDIA_STOP:I = 0x20

.field public static MEDIA_POSITION_READABLE:I = 0x0

.field public static MEDIA_POSITION_WRITABLE:I = 0x0

.field private static final MSG_DISPLAY_ENABLE:I = 0xf

.field private static final MSG_DISPLAY_WANTS_POS_SYNC:I = 0xc

.field private static final MSG_NEW_CURRENT_CLIENT_GEN:I = 0x6

.field private static final MSG_NEW_INTERNAL_CLIENT_GEN:I = 0x5

.field private static final MSG_PLUG_DISPLAY:I = 0x7

.field private static final MSG_POSITION_DRIFT_CHECK:I = 0xb

.field private static final MSG_REQUEST_ARTWORK:I = 0x4

.field private static final MSG_REQUEST_METADATA:I = 0x2

.field private static final MSG_REQUEST_METADATA_ARTWORK:I = 0xe

.field private static final MSG_REQUEST_PLAYBACK_STATE:I = 0x1

.field private static final MSG_REQUEST_TRANSPORTCONTROL:I = 0x3

.field private static final MSG_SEEK_TO:I = 0xa

.field private static final MSG_SET_COMMAND:I = 0x10

.field private static final MSG_UNPLUG_DISPLAY:I = 0x8

.field private static final MSG_UPDATE_DISPLAY_ARTWORK_SIZE:I = 0x9

.field private static final MSG_UPDATE_METADATA:I = 0xd

.field public static final PLAYBACKINFO_INVALID_VALUE:I = -0x80000000

.field public static final PLAYBACKINFO_PLAYBACK_TYPE:I = 0x1

.field public static final PLAYBACKINFO_USES_STREAM:I = 0x5

.field public static final PLAYBACKINFO_VOLUME:I = 0x2

.field public static final PLAYBACKINFO_VOLUME_HANDLING:I = 0x4

.field public static final PLAYBACKINFO_VOLUME_MAX:I = 0x3

.field public static final PLAYBACK_POSITION_ALWAYS_UNKNOWN:J = -0x7fe688e67fe67d00L

.field public static final PLAYBACK_POSITION_INVALID:J = -0x1L

.field public static final PLAYBACK_SPEED_1X:F = 1.0f

.field public static final PLAYBACK_TYPE_LOCAL:I = 0x0

.field private static final PLAYBACK_TYPE_MAX:I = 0x1

.field private static final PLAYBACK_TYPE_MIN:I = 0x0

.field public static final PLAYBACK_TYPE_REMOTE:I = 0x1

.field public static final PLAYBACK_VOLUME_FIXED:I = 0x0

.field public static final PLAYBACK_VOLUME_VARIABLE:I = 0x1

.field public static final PLAYSTATE_BUFFERING:I = 0x8

.field public static final PLAYSTATE_ERROR:I = 0x9

.field public static final PLAYSTATE_FAST_FORWARDING:I = 0x4

.field public static final PLAYSTATE_NONE:I = 0x0

.field public static final PLAYSTATE_PAUSED:I = 0x2

.field public static final PLAYSTATE_PLAYING:I = 0x3

.field public static final PLAYSTATE_REWINDING:I = 0x5

.field public static final PLAYSTATE_SKIPPING_BACKWARDS:I = 0x7

.field public static final PLAYSTATE_SKIPPING_FORWARDS:I = 0x6

.field public static final PLAYSTATE_STOPPED:I = 0x1

.field private static final POSITION_DRIFT_MAX_MS:J = 0x1f4L

.field private static final POSITION_REFRESH_PERIOD_MIN_MS:J = 0x7d0L

.field private static final POSITION_REFRESH_PERIOD_PLAYING_MS:J = 0x3a98L

.field public static final RCSE_ID_UNREGISTERED:I = -0x1

.field private static final TAG:Ljava/lang/String; = "RemoteControlClient"

.field private static sService:Landroid/media/IAudioService;


# instance fields
.field private final mCacheLock:Ljava/lang/Object;

.field private mCommandSetListener:Landroid/media/RemoteControlClient$OnCommandSetListener;

.field private mCurrentClientGenId:I

.field private mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

.field private final mIRCC:Landroid/media/IRemoteControlClient;

.field private mInternalClientGenId:I

.field private mMetadata:Landroid/os/Bundle;

.field private mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

.field private mNeedsPositionSync:Z

.field private mOriginalArtwork:Landroid/graphics/Bitmap;

.field private mPlaybackPositionCapabilities:I

.field private mPlaybackPositionMs:J

.field private mPlaybackSpeed:F

.field private mPlaybackState:I

.field private mPlaybackStateChangeTimeMs:J

.field private mPlaybackStream:I

.field private mPlaybackType:I

.field private mPlaybackVolume:I

.field private mPlaybackVolumeHandling:I

.field private mPlaybackVolumeMax:I

.field private mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

.field private mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

.field private mRcDisplays:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/media/RemoteControlClient$DisplayInfoForClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mRcMediaIntent:Landroid/app/PendingIntent;

.field private mRcseId:I

.field private mTransportControlFlags:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 878
    const/4 v0, 0x1

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    .line 885
    const/4 v0, 0x2

    sput v0, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/PendingIntent;)V
    .locals 6
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/16 v1, 0xf

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput v3, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 895
    iput v3, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    .line 896
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    .line 897
    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    .line 898
    iput v5, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    .line 899
    const/4 v1, 0x3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    .line 1008
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 1013
    iput v3, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 1018
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 1022
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 1026
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 1039
    iput v3, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 1045
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 1066
    iput v4, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 1073
    const/4 v1, -0x2

    iput v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 1086
    iput-boolean v3, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    .line 1131
    new-instance v1, Landroid/media/RemoteControlClient$1;

    invoke-direct {v1, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    .line 1262
    iput v4, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    .line 355
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 358
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 359
    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 366
    :goto_0
    return-void

    .line 360
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 361
    new-instance v1, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    goto :goto_0

    .line 363
    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 364
    const-string v1, "RemoteControlClient"

    const-string v2, "RemoteControlClient() couldn\'t find main application thread"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/PendingIntent;Landroid/os/Looper;)V
    .locals 5
    .param p1, "mediaButtonIntent"    # Landroid/app/PendingIntent;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/16 v0, 0xf

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 895
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    .line 896
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    .line 897
    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    .line 898
    iput v4, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    .line 899
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    .line 1008
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    .line 1013
    iput v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 1018
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 1022
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 1026
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 1039
    iput v2, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 1045
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    .line 1066
    iput v3, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 1073
    const/4 v0, -0x2

    iput v0, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 1086
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    .line 1131
    new-instance v0, Landroid/media/RemoteControlClient$1;

    invoke-direct {v0, p0}, Landroid/media/RemoteControlClient$1;-><init>(Landroid/media/RemoteControlClient;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    .line 1262
    iput v3, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    .line 384
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    .line 386
    new-instance v0, Landroid/media/RemoteControlClient$EventHandler;

    invoke-direct {v0, p0, p0, p2}, Landroid/media/RemoteControlClient$EventHandler;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    .line 387
    return-void
.end method

.method static synthetic access$000(Landroid/media/RemoteControlClient;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/RemoteControlClient;)Landroid/os/Bundle;
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method static synthetic access$102(Landroid/media/RemoteControlClient;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/os/Bundle;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/media/RemoteControlClient;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onNewInternalClientGen(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/media/RemoteControlClient;I)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onNewCurrentClientGen(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onPlugDisplay(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$1500(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onUpdateDisplayArtworkSize(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$1700(Landroid/media/RemoteControlClient;IJ)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onSeekTo(IJ)V

    return-void
.end method

.method static synthetic access$1800(Landroid/media/RemoteControlClient;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->onPositionDriftCheck()V

    return-void
.end method

.method static synthetic access$1900(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->onDisplayWantsSync(Landroid/media/IRemoteControlDisplay;Z)V

    return-void
.end method

.method static synthetic access$200(Landroid/media/RemoteControlClient;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/media/RemoteControlClient;IILjava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onUpdateMetadata(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$202(Landroid/media/RemoteControlClient;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .prologue
    .line 66
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$2100(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->onDisplayEnable(Landroid/media/IRemoteControlDisplay;Z)V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/RemoteControlClient;III)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->onSetCommand(III)V

    return-void
.end method

.method static synthetic access$300(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->sendMetadataWithArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$400(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Landroid/media/RemoteControlClient;->sendMetadata_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    return-void
.end method

.method static synthetic access$500(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V
    .locals 0
    .param p0, "x0"    # Landroid/media/RemoteControlClient;
    .param p1, "x1"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/media/RemoteControlClient;->sendArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V

    return-void
.end method

.method static synthetic access$900(Landroid/media/RemoteControlClient;)Landroid/media/RemoteControlClient$EventHandler;
    .locals 1
    .param p0, "x0"    # Landroid/media/RemoteControlClient;

    .prologue
    .line 66
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    return-object v0
.end method

.method private static getCheckPeriodFromSpeed(F)J
    .locals 4
    .param p0, "speed"    # F

    .prologue
    .line 1824
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 1825
    const-wide/16 v0, 0x3a98

    .line 1827
    :goto_0
    return-wide v0

    :cond_0
    const v0, 0x466a6000    # 15000.0f

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float/2addr v0, v1

    float-to-long v0, v0

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method

.method private static getService()Landroid/media/IAudioService;
    .locals 2

    .prologue
    .line 1547
    sget-object v1, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    if-eqz v1, :cond_0

    .line 1548
    sget-object v1, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    .line 1552
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 1550
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string v1, "audio"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1551
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v1

    sput-object v1, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    .line 1552
    sget-object v1, Landroid/media/RemoteControlClient;->sService:Landroid/media/IAudioService;

    goto :goto_0
.end method

.method private initiateCheckForDrift_syncCacheLock()V
    .locals 5

    .prologue
    const/16 v4, 0xb

    .line 663
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-nez v0, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 666
    :cond_1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    invoke-virtual {v0, v4}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V

    .line 667
    iget-boolean v0, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-eqz v0, :cond_0

    .line 670
    iget-wide v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 677
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    invoke-static {v0}, Landroid/media/RemoteControlClient;->playbackPositionShouldMove(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 679
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    invoke-virtual {v1, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-static {v2}, Landroid/media/RemoteControlClient;->getCheckPeriodFromSpeed(F)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private onDisplayEnable(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "enable"    # Z

    .prologue
    .line 1705
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1706
    :try_start_0
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1707
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1708
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1709
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1710
    # setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v0, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$702(Landroid/media/RemoteControlClient$DisplayInfoForClient;Z)Z

    goto :goto_0

    .line 1713
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1714
    return-void
.end method

.method private onDisplayWantsSync(Landroid/media/IRemoteControlDisplay;Z)V
    .locals 7
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "wantsSync"    # Z

    .prologue
    .line 1678
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1679
    :try_start_0
    iget-boolean v3, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1680
    .local v3, "oldNeedsPositionSync":Z
    const/4 v2, 0x0

    .line 1681
    .local v2, "newNeedsPositionSync":Z
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1684
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1685
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1686
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$700(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1687
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1688
    # setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mWantsPositionSync:Z
    invoke-static {v0, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2502(Landroid/media/RemoteControlClient$DisplayInfoForClient;Z)Z

    .line 1690
    :cond_1
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2500(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1691
    const/4 v2, 0x1

    goto :goto_0

    .line 1695
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_2
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1696
    iget-boolean v4, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-eq v3, v4, :cond_3

    .line 1698
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->initiateCheckForDrift_syncCacheLock()V

    .line 1700
    :cond_3
    monitor-exit v5

    .line 1701
    return-void

    .line 1700
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    .end local v2    # "newNeedsPositionSync":Z
    .end local v3    # "oldNeedsPositionSync":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private onNewCurrentClientGen(I)V
    .locals 2
    .param p1, "clientGeneration"    # I

    .prologue
    .line 1593
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1594
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    .line 1595
    monitor-exit v1

    .line 1596
    return-void

    .line 1595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onNewInternalClientGen(I)V
    .locals 2
    .param p1, "clientGeneration"    # I

    .prologue
    .line 1585
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1588
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    .line 1589
    monitor-exit v1

    .line 1590
    return-void

    .line 1589
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onPlugDisplay(Landroid/media/IRemoteControlDisplay;II)V
    .locals 6
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1600
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1602
    const/4 v2, 0x0

    .line 1603
    .local v2, "displayKnown":Z
    :try_start_0
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1604
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 1605
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1606
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    invoke-interface {v3}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 1607
    if-eqz v2, :cond_0

    .line 1610
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v3

    if-ne v3, p2, :cond_1

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v3

    if-eq v3, p3, :cond_0

    .line 1611
    :cond_1
    # setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v0, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2302(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 1612
    # setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v0, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2402(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 1613
    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1614
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1622
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1619
    .restart local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_2
    if-nez v2, :cond_3

    .line 1620
    :try_start_1
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    new-instance v5, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    invoke-direct {v5, p0, p1, p2, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;-><init>(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1622
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1623
    return-void
.end method

.method private onPositionDriftCheck()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 687
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 688
    :try_start_0
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-nez v4, :cond_1

    .line 689
    :cond_0
    monitor-exit v5

    .line 715
    :goto_0
    return-void

    .line 691
    :cond_1
    iget-wide v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v4, v6, v12

    if-ltz v4, :cond_2

    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    const/4 v6, 0x0

    cmpl-float v4, v4, v6

    if-nez v4, :cond_3

    .line 693
    :cond_2
    monitor-exit v5

    goto :goto_0

    .line 714
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 695
    :cond_3
    :try_start_1
    iget-wide v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v10, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    sub-long/2addr v8, v10

    long-to-float v4, v8

    iget v8, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    div-float/2addr v4, v8

    float-to-long v8, v4

    add-long v2, v6, v8

    .line 697
    .local v2, "estPos":J
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    invoke-interface {v4}, Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;->onGetPlaybackPosition()J

    move-result-wide v0

    .line 698
    .local v0, "actPos":J
    cmp-long v4, v0, v12

    if-ltz v4, :cond_5

    .line 699
    sub-long v6, v2, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    cmp-long v4, v6, v8

    if-lez v4, :cond_4

    .line 702
    iget v4, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget v6, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-virtual {p0, v4, v0, v1, v6}, Landroid/media/RemoteControlClient;->setPlaybackState(IJF)V

    .line 714
    :goto_1
    monitor-exit v5

    goto :goto_0

    .line 706
    :cond_4
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    iget-object v6, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v7, 0xb

    invoke-virtual {v6, v7}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    iget v7, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-static {v7}, Landroid/media/RemoteControlClient;->getCheckPeriodFromSpeed(F)J

    move-result-wide v7

    invoke-virtual {v4, v6, v7, v8}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 712
    :cond_5
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v6, 0xb

    invoke-virtual {v4, v6}, Landroid/media/RemoteControlClient$EventHandler;->removeMessages(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private onSeekTo(IJ)V
    .locals 2
    .param p1, "generationId"    # I
    .param p2, "timeMs"    # J

    .prologue
    .line 1717
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1718
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;->onPlaybackPositionUpdate(J)V

    .line 1721
    :cond_0
    monitor-exit v1

    .line 1722
    return-void

    .line 1721
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onSetCommand(III)V
    .locals 2
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # I

    .prologue
    .line 1725
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1726
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCommandSetListener:Landroid/media/RemoteControlClient$OnCommandSetListener;

    if-eqz v0, :cond_0

    .line 1727
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mCommandSetListener:Landroid/media/RemoteControlClient$OnCommandSetListener;

    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnCommandSetListener;->onCommandSet(II)V

    .line 1729
    :cond_0
    monitor-exit v1

    .line 1730
    return-void

    .line 1729
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private onUnplugDisplay(Landroid/media/IRemoteControlDisplay;)V
    .locals 7
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1627
    iget-object v5, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1628
    :try_start_0
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1629
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1630
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1631
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-interface {v4}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1632
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1637
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_1
    iget-boolean v3, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1638
    .local v3, "oldNeedsPositionSync":Z
    const/4 v2, 0x0

    .line 1639
    .local v2, "newNeedsPositionSync":Z
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1640
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1641
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1642
    .restart local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mWantsPositionSync:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2500(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1643
    const/4 v2, 0x1

    .line 1647
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_3
    iput-boolean v2, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    .line 1648
    iget-boolean v4, p0, Landroid/media/RemoteControlClient;->mNeedsPositionSync:Z

    if-eq v3, v4, :cond_4

    .line 1650
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->initiateCheckForDrift_syncCacheLock()V

    .line 1652
    :cond_4
    monitor-exit v5

    .line 1653
    return-void

    .line 1652
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    .end local v2    # "newNeedsPositionSync":Z
    .end local v3    # "oldNeedsPositionSync":Z
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private onUpdateDisplayArtworkSize(Landroid/media/IRemoteControlDisplay;II)V
    .locals 5
    .param p1, "rcd"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1657
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1658
    :try_start_0
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1659
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1660
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1661
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-interface {v2}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {p1}, Landroid/media/IRemoteControlDisplay;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    if-ne v2, p2, :cond_1

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    if-eq v2, p3, :cond_0

    .line 1663
    :cond_1
    # setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v0, p2}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2302(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 1664
    # setter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v0, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2402(Landroid/media/RemoteControlClient$DisplayInfoForClient;I)I

    .line 1665
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$700(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1666
    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1667
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 1673
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_2
    monitor-exit v3

    .line 1674
    return-void

    .line 1673
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private onUpdateMetadata(IILjava/lang/Object;)V
    .locals 2
    .param p1, "generationId"    # I
    .param p2, "key"    # I
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 1733
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1734
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    if-eqz v0, :cond_0

    .line 1735
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    invoke-interface {v0, p2, p3}, Landroid/media/RemoteControlClient$OnMetadataUpdateListener;->onMetadataUpdate(ILjava/lang/Object;)V

    .line 1737
    :cond_0
    monitor-exit v1

    .line 1738
    return-void

    .line 1737
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static playbackPositionShouldMove(I)Z
    .locals 1
    .param p0, "playstate"    # I

    .prologue
    .line 1787
    packed-switch p0, :pswitch_data_0

    .line 1799
    :pswitch_0
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1794
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1787
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "maxWidth"    # I
    .param p3, "maxHeight"    # I

    .prologue
    .line 1754
    if-eqz p1, :cond_2

    .line 1755
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 1756
    .local v9, "width":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 1757
    .local v2, "height":I
    move/from16 v0, p2

    if-gt v9, v0, :cond_0

    move/from16 v0, p3

    if-le v2, v0, :cond_2

    .line 1758
    :cond_0
    move/from16 v0, p2

    int-to-float v10, v0

    int-to-float v11, v9

    div-float/2addr v10, v11

    move/from16 v0, p3

    int-to-float v11, v0

    int-to-float v12, v2

    div-float/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 1759
    .local v8, "scale":F
    int-to-float v10, v9

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 1760
    .local v5, "newWidth":I
    int-to-float v10, v2

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 1761
    .local v4, "newHeight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    .line 1762
    .local v3, "newConfig":Landroid/graphics/Bitmap$Config;
    if-nez v3, :cond_1

    .line 1763
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 1765
    :cond_1
    invoke-static {v5, v4, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1766
    .local v6, "outBitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1767
    .local v1, "canvas":Landroid/graphics/Canvas;
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 1768
    .local v7, "paint":Landroid/graphics/Paint;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1769
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1770
    const/4 v10, 0x0

    new-instance v11, Landroid/graphics/RectF;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    int-to-float v14, v14

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    invoke-direct {v11, v12, v13, v14, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v10, v11, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 1772
    move-object/from16 p1, v6

    .line 1775
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v2    # "height":I
    .end local v3    # "newConfig":Landroid/graphics/Bitmap$Config;
    .end local v4    # "newHeight":I
    .end local v5    # "newWidth":I
    .end local v6    # "outBitmap":Landroid/graphics/Bitmap;
    .end local v7    # "paint":Landroid/graphics/Paint;
    .end local v8    # "scale":F
    .end local v9    # "width":I
    :cond_2
    return-object p1
.end method

.method private sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z
    .locals 5
    .param p1, "di"    # Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .prologue
    .line 1489
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    if-lez v2, :cond_0

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v2

    if-lez v2, :cond_0

    .line 1490
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v3

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v4

    invoke-direct {p0, v2, v3, v4}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1493
    .local v0, "artwork":Landroid/graphics/Bitmap;
    :try_start_0
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    iget v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    invoke-interface {v2, v3, v0}, Landroid/media/IRemoteControlDisplay;->setArtwork(ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1499
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 1494
    .restart local v0    # "artwork":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 1495
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteControlClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in sendArtworkToDisplay(), dead display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {p1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1496
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V
    .locals 4
    .param p1, "target"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1466
    iget v2, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v2, v3, :cond_0

    .line 1467
    if-eqz p1, :cond_1

    .line 1468
    new-instance v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/media/RemoteControlClient$DisplayInfoForClient;-><init>(Landroid/media/RemoteControlClient;Landroid/media/IRemoteControlDisplay;II)V

    .line 1469
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    .line 1480
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :cond_0
    return-void

    .line 1473
    :cond_1
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1474
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1475
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    invoke-direct {p0, v2}, Landroid/media/RemoteControlClient;->sendArtworkToDisplay(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1476
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0
.end method

.method private sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "value"    # I

    .prologue
    .line 1556
    iget v2, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1566
    :goto_0
    return-void

    .line 1560
    :cond_0
    invoke-static {}, Landroid/media/RemoteControlClient;->getService()Landroid/media/IAudioService;

    move-result-object v1

    .line 1562
    .local v1, "service":Landroid/media/IAudioService;
    :try_start_0
    iget v2, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    invoke-interface {v1, v2, p1, p2}, Landroid/media/IAudioService;->setPlaybackInfoForRcc(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1563
    :catch_0
    move-exception v0

    .line 1564
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "RemoteControlClient"

    const-string v3, "Dead object in setPlaybackInfoForRcc"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendAudioServiceNewPlaybackState_syncCacheLock()V
    .locals 7

    .prologue
    .line 1569
    iget v1, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1579
    :goto_0
    return-void

    .line 1572
    :cond_0
    invoke-static {}, Landroid/media/RemoteControlClient;->getService()Landroid/media/IAudioService;

    move-result-object v0

    .line 1574
    .local v0, "service":Landroid/media/IAudioService;
    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v3, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    iget v5, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-interface/range {v0 .. v5}, Landroid/media/IAudioService;->setPlaybackStateForRcc(IIJF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1576
    :catch_0
    move-exception v6

    .line 1577
    .local v6, "e":Landroid/os/RemoteException;
    const-string v1, "RemoteControlClient"

    const-string v2, "Dead object in setPlaybackStateForRcc"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private sendMetadataWithArtwork_syncCacheLock(Landroid/media/IRemoteControlDisplay;II)V
    .locals 7
    .param p1, "target"    # Landroid/media/IRemoteControlDisplay;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    .line 1504
    iget v4, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v5, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v4, v5, :cond_0

    .line 1505
    if-eqz p1, :cond_2

    .line 1507
    if-lez p2, :cond_1

    if-lez p3, :cond_1

    .line 1508
    :try_start_0
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    invoke-direct {p0, v4, p2, p3}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1509
    .local v0, "artwork":Landroid/graphics/Bitmap;
    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v5, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {p1, v4, v5, v0}, Landroid/media/IRemoteControlDisplay;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V

    .line 1538
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 1511
    :cond_1
    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v5, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {p1, v4, v5}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1513
    :catch_0
    move-exception v3

    .line 1514
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "RemoteControlClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in set(All)Metadata() for dead display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1519
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1520
    .local v2, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1521
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1523
    .local v1, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    :try_start_1
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$700(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1524
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v4

    if-lez v4, :cond_4

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v4

    if-lez v4, :cond_4

    .line 1525
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedWidth:I
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2300(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v5

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mArtworkExpectedHeight:I
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$2400(Landroid/media/RemoteControlClient$DisplayInfoForClient;)I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Landroid/media/RemoteControlClient;->scaleBitmapIfTooBig(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1527
    .restart local v0    # "artwork":Landroid/graphics/Bitmap;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    iget v5, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v6, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v4, v5, v6, v0}, Landroid/media/IRemoteControlDisplay;->setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1532
    .end local v0    # "artwork":Landroid/graphics/Bitmap;
    :catch_1
    move-exception v3

    .line 1533
    .restart local v3    # "e":Landroid/os/RemoteException;
    const-string v4, "RemoteControlClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error when setting metadata, dead display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1534
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1529
    .end local v3    # "e":Landroid/os/RemoteException;
    :cond_4
    :try_start_2
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v1}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v4

    iget v5, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v6, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v4, v5, v6}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private sendMetadata_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    .locals 6
    .param p1, "target"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1409
    iget v3, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v3, v4, :cond_0

    .line 1410
    if-eqz p1, :cond_1

    .line 1412
    :try_start_0
    iget v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v4, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {p1, v3, v4}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1413
    :catch_0
    move-exception v2

    .line 1414
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteControlClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setMetadata() for dead display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1419
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1420
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1421
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1422
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$700(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1424
    :try_start_1
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget-object v5, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-interface {v3, v4, v5}, Landroid/media/IRemoteControlDisplay;->setMetadata(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1425
    :catch_1
    move-exception v2

    .line 1426
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "RemoteControlClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setMetadata(), dead display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1427
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private sendPlaybackState_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    .locals 11
    .param p1, "target"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1379
    iget v0, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v0, v1, :cond_0

    .line 1380
    if-eqz p1, :cond_1

    .line 1382
    :try_start_0
    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v3, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    iget-wide v5, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    iget v7, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    move-object v0, p1

    invoke-interface/range {v0 .. v7}, Landroid/media/IRemoteControlDisplay;->setPlaybackState(IIJJF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1406
    :cond_0
    :goto_0
    return-void

    .line 1385
    :catch_0
    move-exception v10

    .line 1386
    .local v10, "e":Landroid/os/RemoteException;
    const-string v0, "RemoteControlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setPlaybackState() for dead display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1391
    .end local v10    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1392
    .local v9, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1393
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1394
    .local v8, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v8}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$700(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1396
    :try_start_1
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v8}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v0

    iget v1, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v2, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    iget-wide v3, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    iget-wide v5, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    iget v7, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    invoke-interface/range {v0 .. v7}, Landroid/media/IRemoteControlDisplay;->setPlaybackState(IIJJF)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1399
    :catch_1
    move-exception v10

    .line 1400
    .restart local v10    # "e":Landroid/os/RemoteException;
    const-string v0, "RemoteControlClient"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in setPlaybackState(), dead display "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v8}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1401
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V
    .locals 7
    .param p1, "target"    # Landroid/media/IRemoteControlDisplay;

    .prologue
    .line 1435
    iget v3, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v3, v4, :cond_0

    .line 1436
    if-eqz p1, :cond_1

    .line 1438
    :try_start_0
    iget v3, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v4, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    iget v5, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    invoke-interface {p1, v3, v4, v5}, Landroid/media/IRemoteControlDisplay;->setTransportControlInfo(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1462
    :cond_0
    :goto_0
    return-void

    .line 1440
    :catch_0
    move-exception v2

    .line 1441
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "RemoteControlClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setTransportControlFlags() for dead display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1447
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1448
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1449
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 1450
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$700(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1452
    :try_start_1
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    iget v4, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    iget v5, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    iget v6, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    invoke-interface {v3, v4, v5, v6}, Landroid/media/IRemoteControlDisplay;->setTransportControlInfo(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1454
    :catch_1
    move-exception v2

    .line 1455
    .restart local v2    # "e":Landroid/os/RemoteException;
    const-string v3, "RemoteControlClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setTransportControlFlags(), dead display "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1457
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1
.end method

.method private setPlaybackStateInt(IJFZ)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F
    .param p5, "hasPosition"    # Z

    .prologue
    const-wide/16 v4, 0x0

    .line 624
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 630
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    if-ne v0, p1, :cond_0

    iget-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v0, v2, p2

    if-nez v0, :cond_0

    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    cmpl-float v0, v0, p4

    if-nez v0, :cond_0

    iget-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    cmp-long v0, p2, v4

    if-nez v0, :cond_1

    .line 634
    :cond_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    .line 638
    if-eqz p5, :cond_3

    .line 639
    cmp-long v0, p2, v4

    if-gez v0, :cond_2

    .line 640
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    .line 647
    :goto_0
    iput p4, p0, Landroid/media/RemoteControlClient;->mPlaybackSpeed:F

    .line 649
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackStateChangeTimeMs:J

    .line 652
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendPlaybackState_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    .line 654
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackState_syncCacheLock()V

    .line 657
    invoke-direct {p0}, Landroid/media/RemoteControlClient;->initiateCheckForDrift_syncCacheLock()V

    .line 659
    :cond_1
    monitor-exit v1

    .line 660
    return-void

    .line 642
    :cond_2
    iput-wide p2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J

    goto :goto_0

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 645
    :cond_3
    const-wide v2, -0x7fe688e67fe67d00L

    :try_start_1
    iput-wide v2, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;
    .locals 5
    .param p1, "startEmpty"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 538
    new-instance v0, Landroid/media/RemoteControlClient$MetadataEditor;

    invoke-direct {v0, p0, v4}, Landroid/media/RemoteControlClient$MetadataEditor;-><init>(Landroid/media/RemoteControlClient;Landroid/media/RemoteControlClient$1;)V

    .line 539
    .local v0, "editor":Landroid/media/RemoteControlClient$MetadataEditor;
    if-eqz p1, :cond_0

    .line 540
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 541
    iput-object v4, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 542
    iput-boolean v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 543
    iput-boolean v2, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    .line 544
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditableKeys:J

    .line 551
    :goto_0
    return-object v0

    .line 546
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    iget-object v2, p0, Landroid/media/RemoteControlClient;->mMetadata:Landroid/os/Bundle;

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorMetadata:Landroid/os/Bundle;

    .line 547
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mOriginalArtwork:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mEditorArtwork:Landroid/graphics/Bitmap;

    .line 548
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mMetadataChanged:Z

    .line 549
    iput-boolean v3, v0, Landroid/media/RemoteControlClient$MetadataEditor;->mArtworkChanged:Z

    goto :goto_0
.end method

.method public getIRemoteControlClient()Landroid/media/IRemoteControlClient;
    .locals 1

    .prologue
    .line 1125
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mIRCC:Landroid/media/IRemoteControlClient;

    return-object v0
.end method

.method public getIntPlaybackInformation(I)I
    .locals 4
    .param p1, "what"    # I

    .prologue
    .line 986
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 987
    packed-switch p1, :pswitch_data_0

    .line 999
    :try_start_0
    const-string v0, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIntPlaybackInformation() unknown key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    const/high16 v0, -0x80000000

    monitor-exit v1

    :goto_0
    return v0

    .line 989
    :pswitch_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    monitor-exit v1

    goto :goto_0

    .line 1002
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 991
    :pswitch_1
    :try_start_1
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    monitor-exit v1

    goto :goto_0

    .line 993
    :pswitch_2
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    monitor-exit v1

    goto :goto_0

    .line 995
    :pswitch_3
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    monitor-exit v1

    goto :goto_0

    .line 997
    :pswitch_4
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 987
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public getRcMediaIntent()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 1118
    iget-object v0, p0, Landroid/media/RemoteControlClient;->mRcMediaIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public getRcseId()I
    .locals 1

    .prologue
    .line 1278
    iget v0, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    return v0
.end method

.method public setCommandSetListener(Landroid/media/RemoteControlClient$OnCommandSetListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnCommandSetListener;

    .prologue
    .line 779
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 780
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mCommandSetListener:Landroid/media/RemoteControlClient$OnCommandSetListener;

    .line 781
    monitor-exit v1

    .line 782
    return-void

    .line 781
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setCommandToDisplay(II)V
    .locals 7
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 576
    iget-object v4, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v4

    .line 577
    :try_start_0
    iget v3, p0, Landroid/media/RemoteControlClient;->mCurrentClientGenId:I

    iget v5, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    if-ne v3, v5, :cond_1

    .line 578
    iget-object v3, p0, Landroid/media/RemoteControlClient;->mRcDisplays:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 579
    .local v1, "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 580
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/RemoteControlClient$DisplayInfoForClient;

    .line 581
    .local v0, "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mEnabled:Z
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$700(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 583
    :try_start_1
    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v3

    iget v5, p0, Landroid/media/RemoteControlClient;->mInternalClientGenId:I

    invoke-interface {v3, v5, p1, p2}, Landroid/media/IRemoteControlDisplay;->setCommandToDisplay(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 585
    :catch_0
    move-exception v2

    .line 586
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "RemoteControlClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error in setPlaybackState(), dead display "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    # getter for: Landroid/media/RemoteControlClient$DisplayInfoForClient;->mRcDisplay:Landroid/media/IRemoteControlDisplay;
    invoke-static {v0}, Landroid/media/RemoteControlClient$DisplayInfoForClient;->access$800(Landroid/media/RemoteControlClient$DisplayInfoForClient;)Landroid/media/IRemoteControlDisplay;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 587
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 592
    .end local v0    # "di":Landroid/media/RemoteControlClient$DisplayInfoForClient;
    .end local v1    # "displayIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/media/RemoteControlClient$DisplayInfoForClient;>;"
    .end local v2    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 593
    return-void
.end method

.method public setMetadataUpdateListener(Landroid/media/RemoteControlClient$OnMetadataUpdateListener;)V
    .locals 2
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    .prologue
    .line 764
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 765
    :try_start_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mMetadataUpdateListener:Landroid/media/RemoteControlClient$OnMetadataUpdateListener;

    .line 766
    monitor-exit v1

    .line 767
    return-void

    .line 766
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setOnGetPlaybackPositionListener(Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;)V
    .locals 6
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .prologue
    .line 849
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 850
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 851
    .local v0, "oldCapa":I
    if-eqz p1, :cond_2

    .line 852
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    sget v3, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    or-int/2addr v1, v3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 856
    :goto_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    .line 857
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    if-eq v0, v1, :cond_0

    .line 859
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    .line 861
    :cond_0
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mPositionProvider:Landroid/media/RemoteControlClient$OnGetPlaybackPositionListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackState:I

    invoke-static {v1}, Landroid/media/RemoteControlClient;->playbackPositionShouldMove(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 865
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    iget-object v3, p0, Landroid/media/RemoteControlClient;->mEventHandler:Landroid/media/RemoteControlClient$EventHandler;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/media/RemoteControlClient$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/media/RemoteControlClient$EventHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 869
    :cond_1
    monitor-exit v2

    .line 870
    return-void

    .line 854
    :cond_2
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    sget v3, Landroid/media/RemoteControlClient;->MEDIA_POSITION_READABLE:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    goto :goto_0

    .line 869
    .end local v0    # "oldCapa":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPlaybackInformation(II)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "value"    # I

    .prologue
    const/4 v0, 0x1

    .line 914
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 915
    packed-switch p1, :pswitch_data_0

    .line 966
    :try_start_0
    const-string v0, "RemoteControlClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPlaybackInformation() ignoring unknown key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :cond_0
    :goto_0
    monitor-exit v1

    .line 970
    return-void

    .line 917
    :pswitch_0
    if-ltz p2, :cond_1

    if-gt p2, v0, :cond_1

    .line 918
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    if-eq v0, p2, :cond_0

    .line 919
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackType:I

    .line 920
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    .line 969
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 923
    :cond_1
    :try_start_1
    const-string v0, "RemoteControlClient"

    const-string v2, "using invalid value for PLAYBACKINFO_PLAYBACK_TYPE"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 927
    :pswitch_1
    const/4 v0, -0x1

    if-le p2, v0, :cond_2

    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    if-gt p2, v0, :cond_2

    .line 928
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    if-eq v0, p2, :cond_0

    .line 929
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackVolume:I

    .line 930
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    .line 933
    :cond_2
    const-string v0, "RemoteControlClient"

    const-string v2, "using invalid value for PLAYBACKINFO_VOLUME"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 937
    :pswitch_2
    if-lez p2, :cond_3

    .line 938
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    if-eq v0, p2, :cond_0

    .line 939
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeMax:I

    .line 940
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    .line 943
    :cond_3
    const-string v0, "RemoteControlClient"

    const-string v2, "using invalid value for PLAYBACKINFO_VOLUME_MAX"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 947
    :pswitch_3
    if-ltz p2, :cond_4

    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 948
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackStream:I

    goto :goto_0

    .line 950
    :cond_4
    const-string v0, "RemoteControlClient"

    const-string v2, "using invalid value for PLAYBACKINFO_USES_STREAM"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 954
    :pswitch_4
    if-ltz p2, :cond_5

    if-gt p2, v0, :cond_5

    .line 955
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    if-eq v0, p2, :cond_0

    .line 956
    iput p2, p0, Landroid/media/RemoteControlClient;->mPlaybackVolumeHandling:I

    .line 957
    invoke-direct {p0, p1, p2}, Landroid/media/RemoteControlClient;->sendAudioServiceNewPlaybackInfo_syncCacheLock(II)V

    goto :goto_0

    .line 960
    :cond_5
    const-string v0, "RemoteControlClient"

    const-string v2, "using invalid value for PLAYBACKINFO_VOLUME_HANDLING"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 915
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public setPlaybackPositionUpdateListener(Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;)V
    .locals 4
    .param p1, "l"    # Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .prologue
    .line 827
    iget-object v2, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v2

    .line 828
    :try_start_0
    iget v0, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 829
    .local v0, "oldCapa":I
    if-eqz p1, :cond_1

    .line 830
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    sget v3, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    or-int/2addr v1, v3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    .line 834
    :goto_0
    iput-object p1, p0, Landroid/media/RemoteControlClient;->mPositionUpdateListener:Landroid/media/RemoteControlClient$OnPlaybackPositionUpdateListener;

    .line 835
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    if-eq v0, v1, :cond_0

    .line 837
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    .line 839
    :cond_0
    monitor-exit v2

    .line 840
    return-void

    .line 832
    :cond_1
    iget v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    sget v3, Landroid/media/RemoteControlClient;->MEDIA_POSITION_WRITABLE:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v1, v3

    iput v1, p0, Landroid/media/RemoteControlClient;->mPlaybackPositionCapabilities:I

    goto :goto_0

    .line 839
    .end local v0    # "oldCapa":I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPlaybackState(I)V
    .locals 6
    .param p1, "state"    # I

    .prologue
    .line 568
    const-wide v2, -0x7fe688e67fe67d00L

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    .line 570
    return-void
.end method

.method public setPlaybackState(IJF)V
    .locals 6
    .param p1, "state"    # I
    .param p2, "timeInMs"    # J
    .param p4, "playbackSpeed"    # F

    .prologue
    .line 619
    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/media/RemoteControlClient;->setPlaybackStateInt(IJFZ)V

    .line 620
    return-void
.end method

.method public setRcseId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 1271
    iput p1, p0, Landroid/media/RemoteControlClient;->mRcseId:I

    .line 1272
    return-void
.end method

.method public setTransportControlFlags(I)V
    .locals 2
    .param p1, "transportControlFlags"    # I

    .prologue
    .line 732
    iget-object v1, p0, Landroid/media/RemoteControlClient;->mCacheLock:Ljava/lang/Object;

    monitor-enter v1

    .line 734
    :try_start_0
    iput p1, p0, Landroid/media/RemoteControlClient;->mTransportControlFlags:I

    .line 737
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/RemoteControlClient;->sendTransportControlInfo_syncCacheLock(Landroid/media/IRemoteControlDisplay;)V

    .line 738
    monitor-exit v1

    .line 739
    return-void

    .line 738
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
